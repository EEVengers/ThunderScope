/*
* XDMA Scatter-Gather DMA Engines
* ===============================
*
* Copyright 2018 Xilinx Inc.
* Copyright 2010-2012 Sidebranch
* Copyright 2010-2012 Leon Woestenberg <leon@sidebranch.com>
*
* Maintainer:
* -----------
* Alexander Hornburg <alexande@xilinx.com>
*
* References:
* -----------
*	[1] pg195-pcie-dma.pdf - DMA/Bridge Subsystem for PCI Express v3.0 - Product Guide
*/

// ========================= include dependencies =================================================

#include "device.h"
#include "interrupt.h"
#include "dma_engine.h"
#include "trace.h"

#ifdef DBG
// The trace message header (.tmh) file must be included in a source file before any WPP macro 
// calls and after defining a WPP_CONTROL_GUIDS macro (defined in trace.h). see trace.h
#include "dma_engine.tmh"
#endif

// ========================= constants ============================================================

#define XDMA_ENG_IRQ_NUM        (1)
#define XDMA_DESC_MAGIC         (0xAD4B0000)
#define XDMA_WB_COUNT_MASK      (0x00ffffffUL)
#define XDMA_WB_ERR_MASK        (BIT_N(31))

// ========================= static function declarations =========================================

static UINT32 EngineStatus(IN XDMA_ENGINE *engine, IN BOOLEAN clear);
static void EngineGetAlignments(IN OUT XDMA_ENGINE *engine);
static NTSTATUS EngineCreateDescriptorBuffer(IN OUT XDMA_ENGINE *engine);
static NTSTATUS EngineCreateRingBuffer(IN XDMA_ENGINE* engine);
static void EngineConfigureInterrupt(IN OUT XDMA_ENGINE *engine, IN UINT index);
static void EngineProcessTransfer(IN XDMA_ENGINE *engine);
static UINT EngineProcessRing(IN XDMA_ENGINE *engine);
static void EngineRingAdvance(UINT* index);
static NTSTATUS EngineCreatePollWriteBackBuffer(IN OUT XDMA_ENGINE *engine);

// Mark these functions as pageable code
#ifdef ALLOC_PRAGMA
#pragma alloc_text (PAGE, ProbeEngines)
#endif

// WDK 10 static code analysis gives a false warning: "Allocating executable memory via specifying 
// a MM_PAGE_PRIORITY type without a bitwise OR with MdlMappingNoExecute"
// However this only applies to Windows 8 and above, thus disable this warning. 
// see https://msdn.microsoft.com/en-us/library/windows/hardware/ff554629(v=vs.85).aspx
#pragma warning (disable : 30030) 

// ======================== common engine functions ===============================================

static NTSTATUS EngineCreateDescriptorBuffer(IN OUT XDMA_ENGINE *engine) {
    // allocate host-side buffer for descriptors
    SIZE_T bufferSize = (XDMA_MAX_TRANSFER_SIZE / PAGE_SIZE + 2) * sizeof(DMA_DESCRIPTOR);

    NTSTATUS status = WdfCommonBufferCreate(engine->parentDevice->dmaEnabler, bufferSize,
                                            WDF_NO_OBJECT_ATTRIBUTES, &engine->descBuffer);
    if (!NT_SUCCESS(status)) {
        TraceError(DBG_INIT, "WdfCommonBufferCreate failed: %!STATUS!", status);
        return status;
    }

    PHYSICAL_ADDRESS descBufferLA = WdfCommonBufferGetAlignedLogicalAddress(engine->descBuffer);
    PUCHAR descBufferVA = (PUCHAR)WdfCommonBufferGetAlignedVirtualAddress(engine->descBuffer);
    RtlZeroMemory(descBufferVA, bufferSize);

    // give hw the physical start address of the descriptor buffer
    engine->sgdma->firstDescLo = descBufferLA.LowPart;
    engine->sgdma->firstDescHi = descBufferLA.HighPart;
    engine->sgdma->firstDescAdj = 0; // depends on transfer - set later in ProgramDMA

    TraceVerbose(DBG_INIT, "descriptor buffer at 0x%08x%08x, size=%lld",
                 engine->sgdma->firstDescHi, engine->sgdma->firstDescLo, bufferSize);
    return status;
}

static void EngineConfigureInterrupt(IN OUT XDMA_ENGINE *engine, IN UINT index) {
    // engine interrupt request bit(s) - interrupt bit depends on number of engines present
    // see Figure 2-4 on page 46 of pcie dma product guide [1]
    engine->irqBitMask = (1 << XDMA_ENG_IRQ_NUM) - 1;
    engine->irqBitMask <<= (index * XDMA_ENG_IRQ_NUM);

    // bind msi interrupt context with this engine
    if (engine->parentDevice->channelInterrupts[index] != NULL) {
        PIRQ_CONTEXT irqContext = GetIrqContext(engine->parentDevice->channelInterrupts[index]);
        irqContext->engine = engine;
    }

    // enable interrupts
    UINT32 regVal = XDMA_CTRL_IE_ALL;
    if ((engine->type == EngineType_ST) && (engine->dir == C2H)) {
        regVal |= XDMA_CTRL_IE_IDLE_STOPPED;
    }
    engine->regs->intEnableMaskW1S = regVal;
    engine->regs->controlW1S = regVal;
    TraceVerbose(DBG_INIT, "engineIrqBitMask=0x%08x, intEnableMask=0x%08x",
                 engine->irqBitMask, engine->regs->intEnableMask);
}

static void EngineProcessTransfer(IN XDMA_ENGINE *engine)
// service an SGDMA engine
{
    NTSTATUS status = STATUS_SUCCESS;
    WDFREQUEST request;
    UINT32 engineStatus;

    if (engine == NULL) {
        TraceError(DBG_DMA, "engine=NULL");
        return;
    }

    TraceInfo(DBG_DMA, "%s_%u processing transfer completion",
              DirectionToString(engine->dir), engine->channel);

    request = WdfDmaTransactionGetRequest(engine->dmaTransaction);
    if (!request) {
        TraceInfo(DBG_DMA, "Interrupt but no request pending?");
        return;
    }

    // read and clear engine status 
    engineStatus = EngineStatus(engine, TRUE);

    EngineStop(engine);

    switch (engineStatus & XDMA_STAT_EXPECTED_ZERO) {
    case XDMA_ENGINE_STOPPED_OK: // engine not busy and no errors?
    {
        BOOLEAN completed = WdfDmaTransactionDmaCompleted(engine->dmaTransaction, &status);
        size_t bytesTransferred = WdfDmaTransactionGetBytesTransferred(engine->dmaTransaction);

        TraceInfo(DBG_DMA, "%s_%u transaction%scomplete, bytesTransferred=%llu",
                  DirectionToString(engine->dir), engine->channel,
                  completed ? " " : " in", bytesTransferred);

        if (completed) {
            status = WdfRequestUnmarkCancelable(request);
            if (!NT_SUCCESS(status)) {
                TraceError(DBG_DMA, "WdfRequestUnmarkCancelable failed: %!STATUS!", status);
            }
            status = WdfDmaTransactionRelease(engine->dmaTransaction);
            if (!NT_SUCCESS(status)) {
                TraceError(DBG_DMA, "WdfDmaTransactionRelease failed: %!STATUS!", status);
            }
            WdfRequestCompleteWithInformation(request, status, bytesTransferred);
        }
        break;
    }
    case XDMA_BUSY_BIT: // engine is still busy without sign of errors?
        TraceError(DBG_DMA, "Engine Still Busy, Descriptors Completed=%u",
                   engine->regs->completedDescCount);
    default: // any sign of errors
        TraceError(DBG_DMA, "Unexpected engine status 0x%08x", engineStatus);
        status = WdfRequestUnmarkCancelable(request);
        if (!NT_SUCCESS(status)) {
            TraceError(DBG_DMA, "WdfRequestUnmarkCancelable failed: %!STATUS!", status);
        }
        status = WdfDmaTransactionRelease(engine->dmaTransaction);
        if (!NT_SUCCESS(status)) {
            TraceError(DBG_DMA, "WdfDmaTransactionRelease failed: %!STATUS!", status);
        }
        WdfRequestComplete(request, STATUS_INTERNAL_ERROR);
    }

    // clear descriptor buffer
    DMA_DESCRIPTOR* descriptorBuffer = (DMA_DESCRIPTOR*)WdfCommonBufferGetAlignedVirtualAddress(engine->descBuffer);
    size_t descBufferLength = WdfCommonBufferGetLength(engine->descBuffer);
    RtlZeroMemory(descriptorBuffer, descBufferLength);

    // clear poll writeback buffer
    if (engine->poll) {
        XDMA_POLL_WB* wbBuffer = (XDMA_POLL_WB*)WdfCommonBufferGetAlignedVirtualAddress(engine->pollWbBuffer);
        size_t wbBufferLength = WdfCommonBufferGetLength(engine->pollWbBuffer);
        RtlZeroMemory(wbBuffer, wbBufferLength);
    }
}

static void DumpDescriptor(IN const DMA_DESCRIPTOR* const desc) {
#if DBG
    TraceVerbose(DBG_DESC, "descriptor={.control=0x%08X, .numBytes=%u, srcAddr=0x%08X%08X, .dstAddr=0x%08X%08X, nextAddr=0x%08X%08X}",
                 desc->control, desc->numBytes,
                 desc->srcAddrHi, desc->srcAddrLo,
                 desc->dstAddrHi, desc->dstAddrLo,
                 desc->nextHi, desc->nextLo);
#else 
    UNREFERENCED_PARAMETER(desc);
#endif
}

static BOOLEAN DescriptorIsAligned(IN XDMA_ENGINE *engine, IN DMA_DESCRIPTOR *desc)
// For alignment requirements see product guide [1] page 23 table 2-9
{
    if (engine->addressMode == AddressMode_Fixed) {
        const UINT32 dataPathWidth = (1 << (6 + engine->parentDevice->configRegs->pcieWidth)) / 8;
        const UINT32 addrMask = dataPathWidth - 1;

        if ((desc->dstAddrLo & addrMask) != (desc->srcAddrLo & addrMask) != 0) {
            TraceError(DBG_DESC, "misalignment detected! dataWidth=%u, src=0x%08llx, dst=0x%08llx, bytes=%llu",
                       dataPathWidth, desc->srcAddrLo, desc->dstAddrLo, desc->numBytes);
            return FALSE;
        }
        // todo length alignment requirement??

    } else { // AddressMode_Contiguous (i.e. incremental mode)
        BOOLEAN dstAddrMisaligned = (desc->dstAddrLo % engine->alignAddr) != 0;
        BOOLEAN lengthMisaligned = (desc->numBytes % engine->alignLength) != 0;
        BOOLEAN srcAddrMisaligned = (desc->srcAddrLo % engine->alignAddr) != 0;

        if (dstAddrMisaligned || lengthMisaligned || srcAddrMisaligned) {
            TraceVerbose(DBG_DESC, "descriptor alignments: src=0x%08llx, dst=0x%08llx, bytes=%llu",
                         desc->srcAddrLo, desc->dstAddrLo, desc->numBytes);
            TraceError(DBG_DESC, "misalignment detected! src?=%u dst?=%u length?=%u",
                       srcAddrMisaligned, dstAddrMisaligned, lengthMisaligned);
            return FALSE;
        }
    }
    return TRUE;
}

static void OptimizeDescriptors(IN XDMA_ENGINE *engine, IN DMA_DESCRIPTOR * const desc,
                                IN const ULONG numDesc)
    // Optimize descriptors for PCIe block fetches.
    // Multiple descriptors which reside in host memory can be fetched in a single PCIe transaction
    // by the device. This is achieved as follows:
    //      - For the first fetch, the number of additional (adjacent) descriptors to fetch is 
    //        specified by writing to engine->sgdma->firstDescAdj register. 
    //      - For subsequent fetches, the last descriptor of the previous fetch specifies the number of
    //        additional (adjacent) descriptors in the control->nextAdj field 
    // There are several factors which limit the amount of descriptors which can be fetched together:
    //      1. The PCIe Max Read Request Size
    //      2. The physical address of the descriptors within a block must not cross a 4K address 
    //         boundary
    //      3. The number of descriptors remaining in the transfer
{
    const ULONG mrrsBytes = 1 << (engine->parentDevice->configRegs->pcieMRRS + 7);
    const ULONG adjMax = mrrsBytes / sizeof(DMA_DESCRIPTOR) - 1;
    const ULONG adjTotal = numDesc - 1;
    const ULONG adjTo4k = (0x1000 - (engine->sgdma->firstDescLo & 0xFFF)) / sizeof(DMA_DESCRIPTOR) - 1;

    // set the number of adjacent descriptors for the first fetch
    ULONG firstAdj = adjTotal < adjMax ? adjTotal : adjMax;
    engine->sgdma->firstDescAdj = adjTo4k < firstAdj ? adjTo4k : firstAdj;
    //TraceVerbose(DBG_DMA, "first: PA=%04u, this4k=%04u, total=%04u, thisBlock=%04u",
    //             engine->sgdma->firstDescLo & 0xFFF, adjTo4k, adjTotal, engine->sgdma->firstDescAdj);

    // set the number of adjacent descriptors for subsequent fetches
    ULONG nextAdjMax = adjMax - 1;
    for (UINT i = 0; i < numDesc; i++) {
        // if not last desc then get total desc adj to next desc, else last desc has no next desc
        const ULONG nextAdjTotal = (i != adjTotal) ? adjTotal - (i + 1) : 0;
        const ULONG nextAdjTo4k = (0x1000 - (desc[i].nextLo & 0xFFF)) / sizeof(DMA_DESCRIPTOR) - 1;

        ULONG nextAdj = nextAdjTotal < nextAdjMax ? nextAdjTotal : nextAdjMax;
        if (nextAdj > nextAdjTo4k) {
            nextAdj = nextAdjTo4k;
        }

        desc[i].control |= (nextAdj << 8);
        //TraceVerbose(DBG_DMA, "next: PA=%04u, this4k=%04u, total=%04u, thisBlock=%04u",
        //             desc[i].nextLo & 0xFFF, nextAdjTo4k, nextAdjTotal, nextAdj);

        // update current max adj count for this block
        if (nextAdjMax != 0) {
            nextAdjMax--;
        } else { // wrap-around
            nextAdjMax = adjMax;
        }
    }
}

static BOOLEAN EngineExists(PXDMA_DEVICE xdma, DirToDev dir, ULONG channel) {
    PUCHAR configBarAddr = (PUCHAR)xdma->bar[xdma->configBarIdx];
    const ULONG offset = (dir * BLOCK_OFFSET) + (channel * ENGINE_OFFSET);
    XDMA_ENGINE_REGS* engineRegs = (XDMA_ENGINE_REGS*)(configBarAddr + offset);
    UINT32 engineID = engineRegs->identifier;
    return (engineID & XDMA_ID_MASK) == XDMA_ID;
}

static NTSTATUS EngineCreate(PXDMA_DEVICE xdma, XDMA_ENGINE* engine, DirToDev dir, ULONG channel,
                             ULONG engineIndex) {

    NTSTATUS status;

    engine->parentDevice = xdma;
    engine->channel = channel;
    engine->dir = dir;
    const ULONG offset = (dir * BLOCK_OFFSET) + (channel * ENGINE_OFFSET);
    PUCHAR configBarAddr = (PUCHAR)xdma->bar[xdma->configBarIdx];
    engine->regs = (XDMA_ENGINE_REGS*)(configBarAddr + offset);
    engine->sgdma = (XDMA_SGDMA_REGS*)(configBarAddr + offset + SGDMA_BLOCK_OFFSET);

    // AXI-MM or AXI-ST? 0 = MM, 1 = ST
    engine->type = (engine->regs->identifier & XDMA_ID_ST_BIT) != 0;

    // Incremental or Non-Incremental address mode? 0 = inc, 1=non-inc
    engine->addressMode = (engine->regs->control & XDMA_CTRL_NON_INCR_ADDR) != 0;

    // set interrupt sources
    EngineConfigureInterrupt(engine, engineIndex);

    // create common buffer for poll mode descriptor write back - if used
    status = EngineCreatePollWriteBackBuffer(engine);
    if (!NT_SUCCESS(status)) {
        TraceError(DBG_INIT, "EngineCreatePollWriteBackBuffer() failed: %!STATUS!", status);
        return status;
    }

    // capture alignment requirements
    EngineGetAlignments(engine);

    // create and bind dma desciptor buffer to hw
    status = EngineCreateDescriptorBuffer(engine);
    if (!NT_SUCCESS(status)) {
        TraceError(DBG_INIT, "EngineCreateDescriptorBuffer() failed: %!STATUS!",
                   status);
        return status;
    }

    // allocate wdf dma transaction object
    status = WdfDmaTransactionCreate(xdma->dmaEnabler, WDF_NO_OBJECT_ATTRIBUTES,
                                     &engine->dmaTransaction);
    if (!NT_SUCCESS(status)) {
        TraceError(DBG_INIT, "WdfDmaTransactionCreate() failed: %!STATUS!", status);
        return status;
    }

    if ((engine->type == EngineType_ST) && (engine->dir == C2H)) {
        engine->work = EngineProcessRing;
        status = EngineCreateRingBuffer(engine);
        if (!NT_SUCCESS(status)) {
            TraceError(DBG_INIT, "EngineCreateStreamBuffers() failed: %!STATUS!", status);
            return status;
        }

        engine->parentDevice->sgdmaRegs->creditModeEnableW1S = BIT_N(engine->channel) << 16;
        TraceInfo(DBG_INIT, "creditModeEnable=0x%x", engine->parentDevice->sgdmaRegs->creditModeEnable);
    } else {
        engine->work = EngineProcessTransfer;
    }

    engine->enabled = TRUE;

    return status;
}

static void EngineGetAlignments(IN OUT XDMA_ENGINE *engine) {

    UINT32 alignments = engine->regs->alignments;
    UINT32 align_bytes = (alignments & 0x00ff0000U) >> 16;
    UINT32 granularity_bytes = (alignments & 0x0000ff00U) >> 8;
    UINT32 address_bits = (alignments & 0x000000ffU);

    if (alignments) {
        engine->alignAddr = align_bytes;
        engine->alignLength = granularity_bytes;
        engine->alignAddrBits = address_bits;
    } else { // Some default values if alignments are unspecified
        engine->alignAddr = 1;
        engine->alignLength = 1;
        engine->alignAddrBits = 64;
    }

    TraceVerbose(DBG_INIT, "engine[%u][%u] alignments: bytes=%u, granularity=%u, addrBits=%u",
                 engine->channel, engine->dir, engine->alignAddr, engine->alignLength, engine->alignAddrBits);

}

static UINT32 EngineStatus(IN XDMA_ENGINE *engine, IN BOOLEAN clear)
// read and optionally clear the engine status
{
    UINT32 status = 0;

    if (clear) { // request to clear engine status after read? 
        TraceVerbose(DBG_DMA, "%s_%u engine status cleared after next read",
                     DirectionToString(engine->dir), engine->channel);
        status = engine->regs->statusRC;
    } else {
        status = engine->regs->status;
    }

    TraceInfo(DBG_DMA, "%s_%u status=0x%08x (%s%s%s%s%s%s%s%s%s)",
              DirectionToString(engine->dir), engine->channel, status,
              (status & XDMA_BUSY_BIT) ? "BUSY " : "IDLE ",
              (status & XDMA_DESCRIPTOR_STOPPED_BIT) ? "DESCRIPTOR_STOPPED " : " ",
              (status & XDMA_DESCRIPTOR_COMPLETED_BIT) ? "DESCRIPTOR_COMPLETED " : " ",
              (status & XDMA_ALIGN_MISMATCH_BIT) ? "ALIGN_MISMATCH " : " ",
              (status & XDMA_MAGIC_STOPPED_BIT) ? "MAGIC_STOPPED " : " ",
              (status & XDMA_FETCH_STOPPED_BIT) ? "FETCH_STOPPED" : " ",
              (status & XDMA_STAT_READ_ERROR) ? "READ_ERROR " : " ",
              (status & XDMA_STAT_DESCRIPTOR_ERROR) ? "DESCRIPTOR_ERROR " : " ",
              (status & XDMA_IDLE_STOPPED_BIT) ? "IDLE_STOPPED" : " ");

    return status;
}

BOOLEAN XDMA_EngineProgramDma(IN WDFDMATRANSACTION Transaction, IN WDFDEVICE Device,
                              IN WDFCONTEXT context, IN WDF_DMA_DIRECTION Direction,
                              IN PSCATTER_GATHER_LIST SgList)
    // this programs the engine to start a dma transfer
{
    UNREFERENCED_PARAMETER(Device);

    WDFREQUEST request = WdfDmaTransactionGetRequest(Transaction);
    WDF_REQUEST_PARAMETERS params;
    WDF_REQUEST_PARAMETERS_INIT(&params);
    WdfRequestGetParameters(request, &params);
    LONGLONG deviceOffset = (Direction == WdfDmaDirectionWriteToDevice) ?
        (SIZE_T)params.Parameters.Write.DeviceOffset :
        (SIZE_T)params.Parameters.Read.DeviceOffset;

    // get virtual and physical pointers to descriptor buffer
    XDMA_ENGINE * engine = (XDMA_ENGINE*)context;
    DMA_DESCRIPTOR *descriptor = (DMA_DESCRIPTOR*)WdfCommonBufferGetAlignedVirtualAddress(engine->descBuffer);
    PHYSICAL_ADDRESS descBufferLA = WdfCommonBufferGetAlignedLogicalAddress(engine->descBuffer);

    // offset into the transaction (if it is split)
    deviceOffset += WdfDmaTransactionGetBytesTransferred(Transaction);

    TraceVerbose(DBG_DMA, "device addr=%lld, num descriptors=%d",
                 deviceOffset, SgList->NumberOfElements);

    for (ULONG i = 0; i < SgList->NumberOfElements; i++) {
        descriptor[i].control = XDMA_DESC_MAGIC;
        descriptor[i].numBytes = SgList->Elements[i].Length;
        ULONG hostAddrLo = SgList->Elements[i].Address.LowPart;
        LONG hostAddrHi = SgList->Elements[i].Address.HighPart;
        if (Direction == WdfDmaDirectionWriteToDevice) {
            // source is host memory
            descriptor[i].srcAddrLo = hostAddrLo;
            descriptor[i].srcAddrHi = hostAddrHi;
            descriptor[i].dstAddrLo = LIMIT_TO_32(deviceOffset);
            descriptor[i].dstAddrHi = LIMIT_TO_32(deviceOffset >> 32);
        } else {
            // destination is host memory
            descriptor[i].srcAddrLo = LIMIT_TO_32(deviceOffset);
            descriptor[i].srcAddrHi = LIMIT_TO_32(deviceOffset >> 32);
            descriptor[i].dstAddrLo = hostAddrLo;
            descriptor[i].dstAddrHi = hostAddrHi;
        }

        // next descriptor bus address 
        descBufferLA.QuadPart += sizeof(DMA_DESCRIPTOR);

        // non-last descriptor(s)? 
        if ((i + 1) < SgList->NumberOfElements) {
            descriptor[i].nextLo = descBufferLA.LowPart;
            descriptor[i].nextHi = descBufferLA.HighPart;
        } else { // last descriptor
            descriptor[i].nextLo = 0;
            descriptor[i].nextHi = 0;
            // stop engine and request an interrupt from the engine
            descriptor[i].control |= (XDMA_DESC_STOP_BIT | XDMA_DESC_COMPLETED_BIT);
            if (engine->type == EngineType_ST) {
                descriptor[i].control |= XDMA_DESC_EOP_BIT;
                TraceVerbose(DBG_DMA, "descriptor[i].control=0x%08x", descriptor[i].control);
            }
        }
        if (engine->addressMode == AddressMode_Contiguous) { // incremental address mode
            deviceOffset += SgList->Elements[i].Length;
        }

        if (FALSE == DescriptorIsAligned(engine, &(descriptor[i]))) {
            TraceWarning(DBG_DMA, "Error: Dma Transfer is not aligned");
        }
    }

    OptimizeDescriptors(engine, descriptor, SgList->NumberOfElements);

    for (ULONG i = 0; i < SgList->NumberOfElements; i++) {
        DumpDescriptor(&(descriptor[i]));
    }

    if (engine->poll) {
        engine->numDescriptors = SgList->NumberOfElements;
    }

    MemoryBarrier();

    // start the engine
    EngineStart(engine);

    MemoryBarrier();

    return TRUE;
}

NTSTATUS ProbeEngines(IN PXDMA_DEVICE xdma) {
    PAGED_CODE();

    ULONG engineIndex = 0;

    // iterate over H2C (FPGA performs PCIe reads towards FPGA),
    // then C2H (FPGA performs PCIe writes from FPGA)
    for (UINT dir = H2C; dir < 2; dir++) { // 0=H2C, 1=C2H
        for (ULONG ch = 0; ch < XDMA_MAX_NUM_CHANNELS; ch++) {

            if (EngineExists(xdma, dir, ch)) {
                XDMA_ENGINE* engine = &(xdma->engines[ch][dir]);
                NTSTATUS status = EngineCreate(xdma, engine, dir, ch, engineIndex);
                if (!NT_SUCCESS(status)) {
                    TraceError(DBG_INIT, "EngineCreate failed! %!STATUS!", status);
                    return status;
                }
                engineIndex++;
                TraceInfo(DBG_INIT, "%s_%u engine created (AXI-%s)",
                          DirectionToString(dir), ch, engine->type == EngineType_ST ? "ST" : "MM");
            } else {     // skip inactive engines
                TraceInfo(DBG_INIT, "Skipping non-existing engine %s_%u",
                          DirectionToString(dir), ch);
            }
        }
    }
    return STATUS_SUCCESS;
}

void EngineStart(IN XDMA_ENGINE *engine) {
    engine->regs->controlW1S = XDMA_CTRL_RUN_BIT;
    TraceInfo(DBG_DMA, "%s_%u engine started (control=0x%08x)",
              DirectionToString(engine->dir), engine->channel, engine->regs->control);
}

void EngineStop(IN XDMA_ENGINE *engine) {
    engine->regs->controlW1C = XDMA_CTRL_RUN_BIT;
    TraceInfo(DBG_DMA, "%s_%u engine stopped (control=0x%08x)",
              DirectionToString(engine->dir), engine->channel, engine->regs->control);
}

void EngineEnableInterrupt(IN XDMA_ENGINE* engine) {
    if (!engine) {
        TraceError(DBG_IRQ, "engine ptr is NULL!");
        return;

    }
    engine->parentDevice->interruptRegs->channelIntEnableW1S = engine->irqBitMask;
    TraceInfo(DBG_IRQ, "%s_%u enabled interrupt", DirectionToString(engine->dir), engine->channel);
}

void EngineDisableInterrupt(IN XDMA_ENGINE* engine) {
    if (!engine) {
        TraceError(DBG_IRQ, "engine ptr is NULL");
        return;
    }
    engine->parentDevice->interruptRegs->channelIntEnableW1C = engine->irqBitMask;
    TraceInfo(DBG_IRQ, "%s_%u disabled interrupt", DirectionToString(engine->dir), engine->channel);
}

char* DirectionToString(const DirToDev dir) {
    return dir == H2C ? "H2C" : "C2H";
}

// ========================= streaming engine ============================================

static NTSTATUS EngineCreateRingBuffer(IN XDMA_ENGINE* engine) {

    // create dma result buffer
    size_t resultBufferSize = (XDMA_MAX_TRANSFER_SIZE / PAGE_SIZE + 2) * sizeof(DMA_RESULT);
    NTSTATUS status = WdfCommonBufferCreate(engine->parentDevice->dmaEnabler, resultBufferSize,
                                            WDF_NO_OBJECT_ATTRIBUTES, &engine->ring.results);
    if (!NT_SUCCESS(status)) {
        TraceError(DBG_INIT, "WdfCommonBufferCreate failed: %!STATUS!", status);
        return status;
    }
    PUCHAR resultBufferVA = (PUCHAR)WdfCommonBufferGetAlignedVirtualAddress(engine->ring.results);
    RtlZeroMemory(resultBufferVA, resultBufferSize);

    TraceVerbose(DBG_INIT, "engine[%u][%u] dma result buffer @ pa=0x%08llx",
                 engine->channel, engine->dir,
                 WdfCommonBufferGetAlignedLogicalAddress(engine->ring.results).QuadPart);

    // create dma data buffer
    PHYSICAL_ADDRESS low, high, skip;
    low.QuadPart = 0;
    high.QuadPart = 0xFFFFFFFFFFFFFFFF;
    skip.QuadPart = PAGE_SIZE;
    PMDL mdl = MmAllocatePagesForMdlEx(low, high, skip, XDMA_RING_NUM_BLOCKS * XDMA_RING_BLOCK_SIZE, MmNonCached, NormalPagePriority);
    if (!mdl) {
        TraceError(DBG_INIT, "MmAllocatePagesForMdlEx failed!");
        return STATUS_INTERNAL_ERROR;
    }

    PVOID rxBufferVa = MmMapLockedPagesSpecifyCache(mdl, KernelMode, MmNonCached, NULL, FALSE, NormalPagePriority);
    if (!rxBufferVa) {
        TraceError(DBG_INIT, "MmMapLockedPagesSpecifyCache failed!");
        return STATUS_INTERNAL_ERROR;
    }

    TraceInfo(DBG_INIT, "mdl VA=%p, byteCount=%u, next=%p", rxBufferVa, MmGetMdlByteCount(mdl), mdl->Next);

    // MDL ring
    for (UINT i = 0; i < XDMA_RING_NUM_BLOCKS; ++i) {
        engine->ring.mdl[i] = IoAllocateMdl((PUCHAR)rxBufferVa + (i * XDMA_RING_BLOCK_SIZE), XDMA_RING_BLOCK_SIZE, TRUE, FALSE, NULL);
        if (!engine->ring.mdl[i]) {
            TraceError(DBG_INIT, "IoAllocateMdl failed!");
            return STATUS_INTERNAL_ERROR;
        }
    }

    for (UINT i = 0; i < XDMA_RING_NUM_BLOCKS; ++i) {
        TraceVerbose(DBG_INIT, "sub-mdl VA=%p, byteCount=%u, next=%p",
                     MmGetMdlVirtualAddress(engine->ring.mdl[i]),
                     MmGetMdlByteCount(engine->ring.mdl[i]),
                     engine->ring.mdl[i]->Next);
    }

    status = WdfSpinLockCreate(WDF_NO_OBJECT_ATTRIBUTES, &engine->ring.lock);
    if (!NT_SUCCESS(status)) {
        TraceError(DBG_INIT, "WdfSpinLockCreate failed: %!STATUS!", status);
        return status;
    }

    KeInitializeEvent(&engine->ring.completionSignal, NotificationEvent, FALSE);

    return status;
}

static UINT EngineProcessRing(IN XDMA_ENGINE *engine) {

    UINT32 engineStatus = EngineStatus(engine, TRUE);
    if (engineStatus & XDMA_ALIGN_MISMATCH_BIT & XDMA_MAGIC_STOPPED_BIT & XDMA_FETCH_STOPPED_BIT
        & XDMA_STAT_READ_ERROR & XDMA_STAT_DESCRIPTOR_ERROR) {
        TraceError(DBG_DMA, "Engine error during transfer! 0x%08x", engineStatus);
    }
    UINT eopCount = 0;
    DMA_RESULT* results = (DMA_RESULT*)WdfCommonBufferGetAlignedVirtualAddress(engine->ring.results);

    WdfSpinLockAcquire(engine->ring.lock);
    UINT tail = engine->ring.tail;
    UINT head = engine->ring.head;
    WdfSpinLockRelease(engine->ring.lock);

    TraceInfo(DBG_DMA, "%s_%u ring head=%u, tail=%u, eop=%u, credits=%u",
              DirectionToString(engine->dir), engine->channel, head, tail, eopCount,
              engine->sgdma->descCredits);

    for (; results[tail].status; EngineRingAdvance(&tail)) {

        if (results[tail].status & XDMA_RESULT_EOP_BIT) {
            eopCount++;
        }

        results[tail].status = 0; // mark current dma result as processed
    }

    TraceInfo(DBG_DMA, "%s_%u ring head=%u, tail=%u, eop=%u, credits=%u",
              DirectionToString(engine->dir), engine->channel, head, tail, eopCount,
              engine->sgdma->descCredits);

    WdfSpinLockAcquire(engine->ring.lock);
    engine->ring.tail = tail;
    WdfSpinLockRelease(engine->ring.lock);

    // If any packets are completed, start the Io Read queue 
    // also start the queue on an overflow since we need to tell the client that an overflow happened
    if (eopCount > 0) {
        TraceVerbose(DBG_DMA, "starting engine queue");
        KeSetEvent(&engine->ring.completionSignal, IO_NO_INCREMENT, FALSE);
    }


    // clear poll writeback buffer
    if (engine->poll) {
        XDMA_POLL_WB* wbBuffer = (XDMA_POLL_WB*)WdfCommonBufferGetAlignedVirtualAddress(engine->pollWbBuffer);
        size_t wbBufferLength = WdfCommonBufferGetLength(engine->pollWbBuffer);
        RtlZeroMemory(wbBuffer, wbBufferLength);
        engine->numDescriptors = 0;
    }

    return eopCount;
}

static void EngineRingProgramDma(IN XDMA_ENGINE* engine) {

    // get virtual and physical pointers to descriptor buffer
    DMA_DESCRIPTOR *descriptor = (DMA_DESCRIPTOR*)WdfCommonBufferGetAlignedVirtualAddress(engine->descBuffer);
    PHYSICAL_ADDRESS nextDescLA = WdfCommonBufferGetAlignedLogicalAddress(engine->descBuffer);

    // get physical address to dma result buffer
    PHYSICAL_ADDRESS resultBufferLA = WdfCommonBufferGetAlignedLogicalAddress(engine->ring.results);

    // fill descriptors 
    for (ULONG i = 0; i < XDMA_RING_NUM_BLOCKS; ++i) {
        descriptor[i].control = (XDMA_DESC_MAGIC | XDMA_DESC_EOP_BIT | XDMA_DESC_COMPLETED_BIT);
        descriptor[i].numBytes = XDMA_RING_BLOCK_SIZE;

        // source address are unused, will be overwritten by hardware with dma result
        descriptor[i].srcAddrLo = resultBufferLA.LowPart;
        descriptor[i].srcAddrHi = resultBufferLA.HighPart;
        resultBufferLA.QuadPart += sizeof(DMA_RESULT);

        // destination is host memory
        PHYSICAL_ADDRESS dst = MmGetPhysicalAddress(MmGetMdlVirtualAddress(engine->ring.mdl[i]));
        descriptor[i].dstAddrLo = dst.LowPart;
        descriptor[i].dstAddrHi = dst.HighPart;

        // next descriptor bus address 
        nextDescLA.QuadPart += sizeof(DMA_DESCRIPTOR);
        descriptor[i].nextLo = nextDescLA.LowPart;
        descriptor[i].nextHi = nextDescLA.HighPart;

        if (FALSE == DescriptorIsAligned(engine, descriptor)) {
            TraceWarning(DBG_DMA, "Error: Dma Transfer is not aligned");
        }
    }

    // make the discriptor list circular
    nextDescLA = WdfCommonBufferGetAlignedLogicalAddress(engine->descBuffer);
    DMA_DESCRIPTOR* last = &descriptor[XDMA_RING_NUM_BLOCKS - 1];
    last->nextLo = nextDescLA.LowPart;
    last->nextHi = nextDescLA.HighPart;

    // Optimize for PCIe fetches
    OptimizeDescriptors(engine, descriptor, XDMA_RING_NUM_BLOCKS);

    // Print to log
    TraceVerbose(DBG_DMA, "first desc @ 0x%08x%08x",
                 engine->sgdma->firstDescHi, engine->sgdma->firstDescLo);
    for (ULONG i = 0; i < XDMA_RING_NUM_BLOCKS; i++) {
        DumpDescriptor(&(descriptor[i]));
    }
    TraceVerbose(DBG_DMA, "last desc points to 0x%08x%08x", last->nextHi, last->nextLo);

    if (engine->poll) {
        engine->numDescriptors = 0;
    }

    // set initial descriptor credits for throtteling
    engine->sgdma->descCredits = XDMA_RING_NUM_BLOCKS - 1;
    TraceInfo(DBG_DMA, "%s_%u set %u initial descriptor credits",
              DirectionToString(engine->dir), engine->channel, engine->sgdma->descCredits);

    MemoryBarrier();

    // start the engine
    EngineStart(engine);

    MemoryBarrier();
}

static void EngineClearDmaResults(IN XDMA_ENGINE *engine) {
    TraceVerbose(DBG_DMA, "clearing DMA results...");
    DMA_RESULT * results = (DMA_RESULT*)WdfCommonBufferGetAlignedVirtualAddress(engine->ring.results);
    for (UINT i = 0; i < XDMA_RING_NUM_BLOCKS; ++i) {
        results[i].status = 0;
        results[i].length = 0;
    }
}

static void EngineRingAdvance(UINT* index) {
    if (*index == XDMA_RING_NUM_BLOCKS - 1) { // wrap-around
        *index = 0;
    } else { // normal increment
        ++(*index);
    }
}

void EngineRingSetup(IN XDMA_ENGINE *engine) {
    engine->ring.head = 0;
    engine->ring.tail = 0;
    KeClearEvent(&engine->ring.completionSignal);
    EngineRingProgramDma(engine);
}

void EngineRingTeardown(IN XDMA_ENGINE *engine) {
    EngineStop(engine);
    EngineClearDmaResults(engine);
    engine->ring.head = 0;
    engine->ring.tail = 0;
}

NTSTATUS EngineRingCopyBytesToMemory(IN XDMA_ENGINE *engine, WDFMEMORY outputMem, 
                                   size_t length, LARGE_INTEGER timeout, size_t* bytesRead ) {
    NTSTATUS status = 0;
    if (engine->poll) { // poll mode - poll for completion
        status = EnginePollRing(engine);
        if (!NT_SUCCESS(status)) {
            goto ErrorExit;
        }
    } else { // interrupt mode - wait for completion signal
        status = KeWaitForSingleObject(&engine->ring.completionSignal, Executive, KernelMode, FALSE, &timeout);
        if (status == STATUS_TIMEOUT) {
            goto ErrorExit;
        }
    }

    DMA_RESULT* results = (DMA_RESULT*)WdfCommonBufferGetAlignedVirtualAddress(engine->ring.results);
    size_t offset = 0;
    UINT32 numDescProcessed = 0;
    size_t numBytesRemaining = length;
    WdfSpinLockAcquire(engine->ring.lock);
    UINT head = engine->ring.head;
    UINT tail = engine->ring.tail;
    WdfSpinLockRelease(engine->ring.lock);

    TraceVerbose(DBG_DMA, "%s_%u head=%u, tail=%u, credits=%u",
                 DirectionToString(engine->dir), engine->channel, head, tail, engine->sgdma->descCredits);

    while ((head != tail) && numBytesRemaining) {

        // get dma ring buffer address and bytes transferred
        PVOID rxBufferVa = MmGetMdlVirtualAddress(engine->ring.mdl[head]);
        size_t numBytesReceived = results[head].length;

        // limit buffer size
        if (numBytesReceived > numBytesRemaining) {
            numBytesReceived = numBytesRemaining;
        } else if (numBytesReceived == 0) {
            KeClearEvent(&engine->ring.completionSignal);
            break;
        }

        // copy to user
        status = WdfMemoryCopyFromBuffer(outputMem, offset, rxBufferVa, numBytesReceived);
        if (!NT_SUCCESS(status)) {
            TraceError(DBG_DMA, "WdfMemoryCopyFromBuffer failed: %!STATUS!", status);
            goto ErrorExit;
        }

        numDescProcessed++;
        offset += numBytesReceived;
        numBytesRemaining -= numBytesReceived;

        results[head].length = 0;
        EngineRingAdvance(&head);
    }

    if (results[head].length == 0) {
        KeClearEvent(&engine->ring.completionSignal);
    }

    WdfSpinLockAcquire(engine->ring.lock);
    engine->ring.head = head;
    engine->sgdma->descCredits = numDescProcessed;
    WdfSpinLockRelease(engine->ring.lock);

    *bytesRead = length - numBytesRemaining;

    TraceVerbose(DBG_DMA, "%s_%u read %lluB available,  head=%u, tail=%u, credits=%u",
                 DirectionToString(engine->dir), engine->channel, *bytesRead, head, tail,
                 engine->sgdma->descCredits);

ErrorExit:
    return status;
}

//========================= polling interface =====================================================

static NTSTATUS EngineCreatePollWriteBackBuffer(IN OUT XDMA_ENGINE *engine) {
    // allocate host-side buffer for poll mode descriptor write back info

    NTSTATUS status = WdfCommonBufferCreate(engine->parentDevice->dmaEnabler, sizeof(XDMA_POLL_WB),
                                            WDF_NO_OBJECT_ATTRIBUTES, &engine->pollWbBuffer);
    if (!NT_SUCCESS(status)) {
        TraceError(DBG_INIT, "WdfCommonBufferCreate failed: %!STATUS!", status);
        return status;
    }

    PHYSICAL_ADDRESS wbBufferLA = WdfCommonBufferGetAlignedLogicalAddress(engine->pollWbBuffer);
    PUCHAR wbBufferVA = (PUCHAR)WdfCommonBufferGetAlignedVirtualAddress(engine->pollWbBuffer);
    RtlZeroMemory(wbBufferVA, sizeof(XDMA_POLL_WB));

    engine->regs->pollModeWbLo = wbBufferLA.LowPart;
    engine->regs->pollModeWbHi = wbBufferLA.HighPart;

    TraceInfo(DBG_INIT, "poll wb buffer at 0x%08x%08x, size=%lld",
              engine->regs->pollModeWbHi, engine->regs->pollModeWbLo, sizeof(XDMA_POLL_WB));
    return status;
}

NTSTATUS EnginePollTransfer(IN XDMA_ENGINE* engine) {

    XDMA_POLL_WB* writeback_data = (XDMA_POLL_WB*)WdfCommonBufferGetAlignedVirtualAddress(engine->pollWbBuffer);
    const ULONG expected = engine->numDescriptors;
    volatile ULONG actual = 0;

    do {
        actual = writeback_data->completedDescCount;

        if (actual & XDMA_WB_ERR_MASK) {
            TraceError(DBG_DMA, "error on writeback %u", actual);
            return STATUS_INTERNAL_ERROR;
        }
        actual &= XDMA_WB_COUNT_MASK;

        if (actual > expected) {
            actual = expected | XDMA_WB_ERR_MASK;
        }
    } while (expected != actual);

    TraceVerbose(DBG_DMA, "%u descriptors completed", actual);

    EngineProcessTransfer(engine);

    return STATUS_SUCCESS;
}

NTSTATUS EnginePollRing(IN XDMA_ENGINE* engine) {
    XDMA_POLL_WB* writeback_data = (XDMA_POLL_WB*)WdfCommonBufferGetAlignedVirtualAddress(engine->pollWbBuffer);
    volatile ULONG completed = 0;
    volatile UINT eopCount = 0;
    UINT tryCount = 0;
    do {
        completed = writeback_data->completedDescCount;


        if (completed & XDMA_WB_ERR_MASK) {
            TraceError(DBG_DMA, "error on writeback %u", completed);
            return STATUS_INTERNAL_ERROR;
        }
        if (completed) {
            eopCount = EngineProcessRing(engine);
            TraceVerbose(DBG_DMA, "complete=%u, eop=%u", completed, eopCount);
        }
        tryCount++;
        if (tryCount >= 100000) {
            break;
        }

    } while (!eopCount);

    TraceVerbose(DBG_DMA, "complete=%u, eop=%u, tryCount=%u", completed, eopCount, tryCount);

    return STATUS_SUCCESS;
}

//========================= performance counters interface ========================================

void EngineStartPerf(IN XDMA_ENGINE* engine) {
    ASSERTMSG("argument engine is NULL!", engine != NULL);

    // Automatically stops performance counters when a descriptor with the stop bit is completed.
    engine->regs->perfCtrl = XDMA_PERF_CLEAR;
    engine->regs->perfCtrl = XDMA_PERF_AUTO | XDMA_PERF_RUN;
}

void EngineGetPerf(IN XDMA_ENGINE* engine, OUT XDMA_PERF_DATA* perfData) {
    TraceVerbose(DBG_DMA, "cycleCount=0x%08x%08x dataCount=0x%08x%08x pendingCount=0x%08x%08x",
                 engine->regs->perfCycHi, engine->regs->perfCycLo,
                 engine->regs->perfDatHi, engine->regs->perfDatLo,
                 engine->regs->perfPndHi, engine->regs->perfPndLo);

    ASSERTMSG("argument engine is NULL!", engine != NULL);
    ASSERTMSG("argument perfData is NULL!", perfData != NULL);

    perfData->clockCycleCount = ((UINT64)engine->regs->perfCycHi << 32) + engine->regs->perfCycLo;
    perfData->dataCycleCount = ((UINT64)engine->regs->perfDatHi << 32) + engine->regs->perfDatLo;
    perfData->pendingCount = ((UINT64)engine->regs->perfPndHi << 32) + engine->regs->perfPndHi;
}

void XDMA_EngineSetPollMode(XDMA_ENGINE* engine, BOOLEAN pollMode) {

    EXPECT(engine != NULL);

    if (engine->enabled == TRUE) {
        if (pollMode) {
            //EngineDisableInterrupt(engine);
            engine->regs->controlW1S = XDMA_CTRL_POLL_MODE;
            engine->regs->controlW1C = XDMA_CTRL_IE_ALL;
        } else {
            engine->regs->controlW1C = XDMA_CTRL_POLL_MODE;
            engine->regs->controlW1S = XDMA_CTRL_IE_ALL;
            //EngineEnableInterrupt(engine);
        }
        engine->poll = pollMode;
    }
}