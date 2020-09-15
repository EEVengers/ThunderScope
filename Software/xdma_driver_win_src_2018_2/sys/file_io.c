/*
* XDMA Device File Interfaces for public API
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
* IO Request flow diagram:
* ------------------------
* User Operation (e.g. ReadFile())
* |
* |-> IO Request -> EvtIoRead()--> ReadBarToRequest()               // PCI BAR access
*               |            |---> EvtIoReadDma()                   // normal dma c2h transfer
*               |            |---> EvtIoReadEngineRing()            // for streaming interface
*               |            |---> CopyDescriptorsToRequestMemory() // get dma descriptors to user-space
*               |            |---> ServiceUserEvent()               // wait on user interrupt
*               |
*               |-> EvtIoWrite()-> WriteBarFromRequest()            // PCI BAR access
*                             |--> EvtIoWriteDma()                  // normal DMA H2C transfer
*                             |--> WriteBypassDescriptor()          // write descriptors from userspace to bypass BARs
*/

// ========================= include dependencies =================================================

#include "driver.h"
#include "dma_engine.h"
#include "xdma_public.h"
#include "file_io.h"

#include "trace.h"
#ifdef DBG
// The trace message header (.tmh) file must be included in a source file before any WPP macro 
// calls and after defining a WPP_CONTROL_GUIDS macro (defined in trace.h). see trace.h
#include "file_io.tmh"
#endif

EVT_WDF_REQUEST_CANCEL      EvtCancelDma;

// ====================== device file nodes =======================================================

const static struct {
    DEVNODE_TYPE devType;
    const wchar_t *wstr;
    ULONG channel;
} FileNameLUT[] = {
    { DEVNODE_TYPE_H2C,         XDMA_FILE_H2C_0,        0 },
    { DEVNODE_TYPE_C2H,         XDMA_FILE_C2H_0,        0 },
    { DEVNODE_TYPE_H2C,         XDMA_FILE_H2C_1,        1 },
    { DEVNODE_TYPE_C2H,         XDMA_FILE_C2H_1,        1 },
    { DEVNODE_TYPE_H2C,         XDMA_FILE_H2C_2,        2 },
    { DEVNODE_TYPE_C2H,         XDMA_FILE_C2H_2,        2 },
    { DEVNODE_TYPE_H2C,         XDMA_FILE_H2C_3,        3 },
    { DEVNODE_TYPE_C2H,         XDMA_FILE_C2H_3,        3 },
    { DEVNODE_TYPE_USER,        XDMA_FILE_USER,         0 },
    { DEVNODE_TYPE_CONTROL,     XDMA_FILE_CONTROL,      0 },
    { DEVNODE_TYPE_BYPASS,      XDMA_FILE_BYPASS,       0 },
    { DEVNODE_TYPE_EVENTS,      XDMA_FILE_EVENT_0,      0 },
    { DEVNODE_TYPE_EVENTS,      XDMA_FILE_EVENT_1,      1 },
    { DEVNODE_TYPE_EVENTS,      XDMA_FILE_EVENT_2,      2 },
    { DEVNODE_TYPE_EVENTS,      XDMA_FILE_EVENT_3,      3 },
    { DEVNODE_TYPE_EVENTS,      XDMA_FILE_EVENT_4,      4 },
    { DEVNODE_TYPE_EVENTS,      XDMA_FILE_EVENT_5,      5 },
    { DEVNODE_TYPE_EVENTS,      XDMA_FILE_EVENT_6,      6 },
    { DEVNODE_TYPE_EVENTS,      XDMA_FILE_EVENT_7,      7 },
    { DEVNODE_TYPE_EVENTS,      XDMA_FILE_EVENT_8,      8 },
    { DEVNODE_TYPE_EVENTS,      XDMA_FILE_EVENT_9,      9 },
    { DEVNODE_TYPE_EVENTS,      XDMA_FILE_EVENT_10,     10 },
    { DEVNODE_TYPE_EVENTS,      XDMA_FILE_EVENT_11,     11 },
    { DEVNODE_TYPE_EVENTS,      XDMA_FILE_EVENT_12,     12 },
    { DEVNODE_TYPE_EVENTS,      XDMA_FILE_EVENT_13,     13 },
    { DEVNODE_TYPE_EVENTS,      XDMA_FILE_EVENT_14,     14 },
    { DEVNODE_TYPE_EVENTS,      XDMA_FILE_EVENT_15,     15 },
};

static VOID GetDevNodeType(PUNICODE_STRING fileName, PFILE_CONTEXT file, ULONG* index)
// convert from filename to device node
{
    for (UINT i = 0; i < sizeof(FileNameLUT) / sizeof(FileNameLUT[0]); ++i) {
        if (!wcscmp(fileName->Buffer, FileNameLUT[i].wstr)) {
            file->devType = FileNameLUT[i].devType;
            *index = FileNameLUT[i].channel;
            return;
        }
    }
    TraceError(DBG_IO, "GetDevNodeID() returns ID_DEVNODE_UNKNOWN");
    file->devType = ID_DEVNODE_UNKNOWN;
}

VOID EvtDeviceFileCreate(IN WDFDEVICE device, IN WDFREQUEST Request, IN WDFFILEOBJECT WdfFile) {
    PUNICODE_STRING fileName = WdfFileObjectGetFileName(WdfFile);
    DeviceContext* ctx = GetDeviceContext(device);
    PXDMA_DEVICE xdma = &(ctx->xdma);
    PFILE_CONTEXT devNode = GetFileContext(WdfFile);
    NTSTATUS status = STATUS_SUCCESS;

    // no filename given?
    if (fileName == NULL) {
        TraceError(DBG_IO, "Error: no filename given.");
        status = STATUS_INVALID_PARAMETER;
        goto ErrExit;
    }

    // device node has zero length?
    ASSERTMSG("fileName is empty string", fileName->Length != 0);
    ULONG index = 0;
    GetDevNodeType(fileName, devNode, &index);
    if (devNode->devType == ID_DEVNODE_UNKNOWN) {
        TraceError(DBG_IO, "Error: invalid device node given: %wZ", fileName);
        status = STATUS_INVALID_PARAMETER;
        goto ErrExit;
    }

    // additional checks/setup for based on device type
    switch (devNode->devType) {
    case DEVNODE_TYPE_CONTROL:
        devNode->u.bar = xdma->bar[xdma->configBarIdx];
        break;
    case DEVNODE_TYPE_USER:
        if (xdma->userBarIdx < 0) {
            TraceError(DBG_IO, "Failed to create 'user' device file. User BAR does not exist!");
            status = STATUS_INVALID_PARAMETER;
            goto ErrExit;
        }
        devNode->u.bar = xdma->bar[xdma->userBarIdx];
        break;
    case DEVNODE_TYPE_BYPASS:
        if (xdma->bypassBarIdx < 0) {
            TraceError(DBG_IO, "Failed to create 'bypass' device file. User BAR does not exist!");
            status = STATUS_INVALID_PARAMETER;
            goto ErrExit;
        }
        devNode->u.bar = xdma->bar[xdma->bypassBarIdx];
        break;
    case DEVNODE_TYPE_H2C:
    case DEVNODE_TYPE_C2H:
    {
        DirToDev dir = devNode->devType == DEVNODE_TYPE_H2C ? H2C : C2H;
        XDMA_ENGINE* engine = &(xdma->engines[index][dir]);

        if (engine->enabled == FALSE) {
            TraceError(DBG_IO, "Error: engine %s_%d not enabled in XDMA IP core",
                       dir == H2C ? "h2c" : "c2h", index);
            status = STATUS_INVALID_PARAMETER;
            goto ErrExit;
        }

        if ((engine->type == EngineType_ST) && (dir == C2H)) {
            EngineRingSetup(engine);
        }

        devNode->u.engine = engine;
        devNode->queue = ctx->engineQueue[dir][index];
        TraceVerbose(DBG_IO, "pollMode=%u", devNode->u.engine->poll);
        if (devNode->u.engine->poll) {
            EngineDisableInterrupt(devNode->u.engine);
        } else {
            EngineEnableInterrupt(devNode->u.engine);
        }
        break;
    }
    case DEVNODE_TYPE_EVENTS:
        devNode->u.event = &(xdma->userEvents[index]);
        break;
    default:
        break;
    }
    TraceInfo(DBG_IO, "Created %wZ device file", fileName);

ErrExit:
    WdfRequestComplete(Request, status);
    TraceVerbose(DBG_IO, "returns %!STATUS!", status);
}

VOID EvtFileClose(IN WDFFILEOBJECT FileObject) {
    PUNICODE_STRING fileName = WdfFileObjectGetFileName(FileObject);
    TraceInfo(DBG_IO, "Closing file %wZ", fileName);
}

VOID EvtFileCleanup(IN WDFFILEOBJECT FileObject) {
    PUNICODE_STRING fileName = WdfFileObjectGetFileName(FileObject);
    PFILE_CONTEXT file = GetFileContext(FileObject);
	
    if (file->devType == DEVNODE_TYPE_C2H) {
        if (file->u.engine->type == EngineType_ST) {
            EngineRingTeardown(file->u.engine);
        }
    }
	if (file->devType == DEVNODE_TYPE_CONTROL) {
		if (file->mdl != NULL) {
			/*WDFDEVICE device = WdfFileObjectGetDevice(FileObject);
			DeviceContext* ctx = GetDeviceContext(device);
			PXDMA_DEVICE xdma = &(ctx->xdma);*/
			IoFreeMdl(file->mdl);
		}
	}
	
    TraceVerbose(DBG_IO, "Cleanup %wZ", fileName);
}

static NTSTATUS ValidateBarParams(IN PXDMA_DEVICE xdma, ULONG nBar, size_t offset, size_t length) {
    if (length == 0) {
        TraceError(DBG_IO, "Error: attempting to read 0 bytes");
        return STATUS_INVALID_DEVICE_REQUEST;
    }

    // invalid BAR index?
    if (nBar >= xdma->numBars) {
        TraceError(DBG_IO, "Error: attempting to read BAR %u but only 2 exist", nBar);
        return STATUS_INVALID_DEVICE_REQUEST;
    }

    // access outside valid BAR address range?
    if (offset + length >= xdma->barLength[nBar]) {
        TraceError(DBG_IO, "Error: attempting to read BAR %u offset=%llu size=%llu",
                   nBar, offset, length);
        return STATUS_INVALID_DEVICE_REQUEST;
    }
    return STATUS_SUCCESS;
}

static NTSTATUS ReadBarToRequest(WDFREQUEST request, PVOID bar)
// Read from PCIe mmap'ed memory into an IO request 
{
    WDF_REQUEST_PARAMETERS params;
    WDF_REQUEST_PARAMETERS_INIT(&params);
    WdfRequestGetParameters(request, &params);
    size_t offset = (size_t)params.Parameters.Read.DeviceOffset;
    size_t length = params.Parameters.Read.Length;

    // Static Driver Verifier is not smart enough to see that length is checked in ValidateBarParams
    // Therefore we need to check it here as well
    if (length == 0) {
        TraceError(DBG_IO, "Error: attempting to read 0 bytes");
        return STATUS_INVALID_DEVICE_REQUEST;
    }

    // calculate virtual address of the mmap'd BAR location
    PUCHAR readAddr = (PUCHAR)bar + offset;

    // get handle to the IO request memory which will hold the read data
    WDFMEMORY requestMemory;
    NTSTATUS status = WdfRequestRetrieveOutputMemory(request, &requestMemory);
    if (!NT_SUCCESS(status)) {
        TraceError(DBG_IO, "WdfRequestRetrieveOutputMemory failed: %!STATUS!", status);
        return status;
    }

    // get pointer to buffer
    PVOID reqBuffer = WdfMemoryGetBuffer(requestMemory, NULL);

    // write to BAR
    if (length % sizeof(ULONG) == 0) {
        READ_REGISTER_BUFFER_ULONG((volatile ULONG*)readAddr, (PULONG)reqBuffer, (ULONG)length / sizeof(ULONG));
    } else if (length % sizeof(USHORT) == 0) {
        READ_REGISTER_BUFFER_USHORT((volatile USHORT*)readAddr, (PUSHORT)reqBuffer, (ULONG)length / sizeof(USHORT));
    } else {
        READ_REGISTER_BUFFER_UCHAR((volatile UCHAR*)readAddr, (PUCHAR)reqBuffer, (ULONG)length);
    }

    return status;
}

static NTSTATUS WriteBarFromRequest(WDFREQUEST request, PVOID bar)
// Write from an IO request into PCIe mmap'ed memory 
{
    WDF_REQUEST_PARAMETERS params;
    WDF_REQUEST_PARAMETERS_INIT(&params);
    WdfRequestGetParameters(request, &params);
    size_t offset = (size_t)params.Parameters.Read.DeviceOffset;
    size_t length = params.Parameters.Read.Length;

    // Static Driver Verifier is not smart enough to see that length is checked in ValidateBarParams
    // Therefore we need to check it here as well
    if (length == 0) {
        TraceError(DBG_IO, "Error: attempting to read 0 bytes");
        return STATUS_INVALID_DEVICE_REQUEST;
    }

    // calculate virtual address of the mmap'd BAR location
    PUCHAR writeAddr = (PUCHAR)bar + offset;

    WDFMEMORY requestMemory;
    // get handle to the IO request memory which holds data to write
    NTSTATUS status = WdfRequestRetrieveInputMemory(request, &requestMemory);
    if (!NT_SUCCESS(status)) {
        TraceError(DBG_IO, "WdfRequestRetrieveInputMemory failed: %!STATUS!", status);
        return status;
    }

    // get pointer to buffer
    PVOID reqBuffer = WdfMemoryGetBuffer(requestMemory, NULL);

    // write to BAR
    if (length % sizeof(ULONG) == 0) {
        WRITE_REGISTER_BUFFER_ULONG((volatile ULONG*)writeAddr, (PULONG)reqBuffer, (ULONG)length / sizeof(ULONG));
    } else if (length % sizeof(USHORT) == 0) {
        WRITE_REGISTER_BUFFER_USHORT((volatile USHORT*)writeAddr, (PUSHORT)reqBuffer, (ULONG)length / sizeof(USHORT));
    } else {
        WRITE_REGISTER_BUFFER_UCHAR((volatile UCHAR*)writeAddr, (PUCHAR)reqBuffer, (ULONG)length);
    }	

	TraceVerbose(DBG_IO, "Finished Write Request: Request=%p", request);

    return status;
}

VOID EvtIoRead(IN WDFQUEUE queue, IN WDFREQUEST request, IN size_t length)
// Callback function on Device node ReadFile
{
    NTSTATUS status = STATUS_SUCCESS;
    PFILE_CONTEXT file = GetFileContext(WdfRequestGetFileObject(request));

    UNREFERENCED_PARAMETER(length); // length can be extracted from request

    TraceVerbose(DBG_IO, "(Queue=%p, Request=%p, Length=%llu)", queue, request, length);
    TraceVerbose(DBG_IO, "devNodeType %d", file->devType);

    switch (file->devType) {
    case DEVNODE_TYPE_USER:
    case DEVNODE_TYPE_CONTROL:
    case DEVNODE_TYPE_BYPASS:
        ASSERTMSG("no BAR ptr attached to file context", file->u.bar != NULL);
        // handle request here without forwarding - read from PCIe BAR into request memory
        status = ReadBarToRequest(request, file->u.bar);
        if (NT_SUCCESS(status)) {
            // complete the request - read bytes are in the requestMemory
            WdfRequestCompleteWithInformation(request, status, length);
        }
        break;
    case DEVNODE_TYPE_EVENTS:
        ASSERTMSG("no event attached to file context", file->u.event != NULL);
        // forward request to engine queue - completed by EvtIoReadDma later
        status = EvtReadUserEvent(request, length);
        break;
    case DEVNODE_TYPE_C2H:
    {
        ASSERTMSG("no engine attached to file context", file->u.engine != NULL);

        // forward request to engine queue - completed by EvtIoReadDma later
        status = WdfRequestForwardToIoQueue(request, file->queue);
        break;
    }
    case DEVNODE_TYPE_H2C:
    default:
        TraceError(DBG_IO, "fails with invalid DevNodeID %d", file->devType);
        status = STATUS_INVALID_DEVICE_REQUEST;
    }

    if (!NT_SUCCESS(status)) {
        TraceError(DBG_IO, "request complete with %!STATUS!", status);
        WdfRequestComplete(request, status);
    }

    return; // request has been either completed directly or forwarded to a queue
}

VOID EvtIoWrite(IN WDFQUEUE queue, IN WDFREQUEST request, IN size_t length)
// Callback function on Device node write operations
{
    NTSTATUS status = STATUS_SUCCESS;
    PFILE_CONTEXT file = GetFileContext(WdfRequestGetFileObject(request));

    UNREFERENCED_PARAMETER(length); // length can be extracted from request

    TraceVerbose(DBG_IO, "(Queue=%p, Request=%p)", queue, request);
    TraceVerbose(DBG_IO, "DevNodeID %d", file->devType);

    switch (file->devType) {
    case DEVNODE_TYPE_USER:
    case DEVNODE_TYPE_CONTROL:
    case DEVNODE_TYPE_BYPASS:
        ASSERTMSG("no BAR ptr attached to file context", file->u.bar != NULL);
        // handle request here without forwarding. write to PCIe BAR from request memory
        status = WriteBarFromRequest(request, file->u.bar);
        if (NT_SUCCESS(status)) {
            WdfRequestCompleteWithInformation(request, status, length);  // complete the request       
        }
        break;
    case DEVNODE_TYPE_H2C:
        ASSERTMSG("no engine attached to file context", file->u.engine != NULL);

        // forward request to write engine queue, it ends up in EvtIoWriteDma() later
        status = WdfRequestForwardToIoQueue(request, file->queue);
        break;
    case DEVNODE_TYPE_C2H:
    default:
        status = STATUS_INVALID_DEVICE_REQUEST;
        break;
    }

    if (!NT_SUCCESS(status)) {
        WdfRequestComplete(request, status);
        TraceInfo(DBG_IO, "Error Request 0x%p: %!STATUS!", request, status);
    }

    return; // request has been either completed directly or forwarded to a queue
}

static NTSTATUS IoctlGetPerf(IN WDFREQUEST request, IN XDMA_ENGINE* engine) {

    ASSERT(engine != NULL);
    XDMA_PERF_DATA perfData = { 0 };
    EngineGetPerf(engine, &perfData);

    // get handle to the IO request memory which will hold the read data
    WDFMEMORY requestMemory;
    NTSTATUS status = WdfRequestRetrieveOutputMemory(request, &requestMemory);
    if (!NT_SUCCESS(status)) {
        TraceError(DBG_IO, "WdfRequestRetrieveOutputMemory failed: %!STATUS!", status);
        return status;
    }

    // copy from perfData into request memory
    status = WdfMemoryCopyFromBuffer(requestMemory, 0, &perfData, sizeof(perfData));
    if (!NT_SUCCESS(status)) {
        TraceError(DBG_IO, "WdfMemoryCopyFromBuffer failed: %!STATUS!", status);
        return status;
    }

    return status;
}

static NTSTATUS IoctlGetAddrMode(IN WDFREQUEST request, IN XDMA_ENGINE* engine) {

    ASSERT(engine != NULL);
    ULONG addrMode = (engine->regs->control & XDMA_CTRL_NON_INCR_ADDR) != 0; // 0 = inc, 1=non-inc
    TraceVerbose(DBG_IO, "addrMode=%u", addrMode);

    // get handle to the IO request memory which will hold the read data
    WDFMEMORY requestMemory;
    NTSTATUS status = WdfRequestRetrieveOutputMemory(request, &requestMemory);
    if (!NT_SUCCESS(status)) {
        TraceError(DBG_IO, "WdfRequestRetrieveOutputMemory failed: %!STATUS!", status);
        return status;
    }

    // copy from perfData into request memory
    status = WdfMemoryCopyFromBuffer(requestMemory, 0, &addrMode, sizeof(addrMode));
    if (!NT_SUCCESS(status)) {
        TraceError(DBG_IO, "WdfMemoryCopyFromBuffer failed: %!STATUS!", status);
        return status;
    }

    return status;
}

static NTSTATUS IoctlSetAddrMode(IN WDFREQUEST request, IN XDMA_ENGINE* engine) {

    ASSERT(engine != NULL);

    // get handle to the IO request memory which will hold the read data
    WDFMEMORY requestMemory;
    NTSTATUS status = WdfRequestRetrieveInputMemory(request, &requestMemory);
    if (!NT_SUCCESS(status)) {
        TraceError(DBG_IO, "WdfRequestRetrieveOutputMemory failed: %!STATUS!", status);
        return status;
    }
    ULONG addrMode = 0;

    // copy from perfData into request memory
    status = WdfMemoryCopyToBuffer(requestMemory, 0, &addrMode, sizeof(addrMode));
    if (!NT_SUCCESS(status)) {
        TraceError(DBG_IO, "WdfMemoryCopyFromBuffer failed: %!STATUS!", status);
        return status;
    }

    if (addrMode) {
        engine->regs->controlW1S = XDMA_CTRL_NON_INCR_ADDR;
    } else {
        engine->regs->controlW1C = XDMA_CTRL_NON_INCR_ADDR;
    }
	engine->addressMode = addrMode;

    TraceVerbose(DBG_IO, "addrMode=%u", addrMode);

    return status;
}

static NTSTATUS IoctlMapBar(IN PFILE_CONTEXT file, IN WDFREQUEST request, IN ULONG barIndex, IN PXDMA_DEVICE xdma) {
	
	NTSTATUS status = STATUS_INTERNAL_ERROR;	
		
	size_t totalLength;
	PVOID virtAddr;
	PUCHAR buffer;
	size_t bytesReturned = 0;
		 
	PXDMA_BAR_INFO xbar_info;

	status = WdfRequestRetrieveOutputBuffer(request, sizeof(UCHAR), &buffer, &totalLength);
	if (!NT_SUCCESS(status)) {
		TraceError(DBG_IO, "Retrieve Buffer Failed - Length: %Iu", totalLength);
		return status;
	}

	if (buffer == NULL) {
		TraceError(DBG_IO, "Buffer is NULL");
		status = STATUS_NOT_SUPPORTED;
		return status;
	}

	if (totalLength != sizeof(PXDMA_BAR_INFO)) {
		TraceError(DBG_IO, "Input data not equal to XDMA Keyhole Struct");
		status = STATUS_NOT_SUPPORTED;
		return status;
	}
	
	bytesReturned = totalLength;
	
	//Cast to user space map bar data struct 
	xbar_info = (PXDMA_BAR_INFO)buffer;
		
	//Create memory descriptor list (MDL) for virtual memory of xdma BAR
	file->mdl = IoAllocateMdl(xdma->bar[barIndex], xdma->barLength[barIndex], FALSE, FALSE, NULL);
	if (!file->mdl) {
		TraceError(DBG_IO, "Bad MDL allocation");
		IoFreeMdl(file->mdl);
		return STATUS_INSUFFICIENT_RESOURCES;
	}

	//Prepare MDL for non-paged virtual memory for MmMapLockedPagesSpecifyCache function
	MmBuildMdlForNonPagedPool(file->mdl);

	try {
		//Function to allow pointer to virtual memory to be accessed by userspace
		virtAddr = MmMapLockedPagesSpecifyCache(file->mdl, UserMode, MmNonCached, NULL, FALSE, NormalPagePriority | MdlMappingNoExecute);
		if (!virtAddr) {
			TraceError(DBG_IO, "Bad Mapping");
			IoFreeMdl(file->mdl);
			file->mdl = NULL;
			return STATUS_INSUFFICIENT_RESOURCES;
		}
	} except(EXCEPTION_EXECUTE_HANDLER) {
		IoFreeMdl(file->mdl);
		file->mdl = NULL;
		TraceError(DBG_IO, "Bad Mapping");
		return STATUS_INSUFFICIENT_RESOURCES;
	}

	//Pass back address and BAR length
	xbar_info->mappedAddress = virtAddr;
	xbar_info->barLength = xdma->barLength[barIndex];

	TraceInfo(DBG_IO, "Buffer Passed, IOCTL Map Bar Success. Virtual Address: %p", virtAddr);

	if (NT_SUCCESS(status)) {
		WdfRequestCompleteWithInformation(request, status, bytesReturned);  // complete the request       
	}
	
	return status;

}

static NTSTATUS IoctlKeyholeWriteRegister(IN PFILE_CONTEXT file, IN WDFREQUEST request, IN ULONG barIndex, IN PXDMA_DEVICE xdma) {
	
	NTSTATUS status = STATUS_INTERNAL_ERROR;

	PXDMA_KEYHOLE_DATA kholeData;
	PVOID buffer;
	size_t totalLength;

	status = WdfRequestRetrieveInputBuffer(request, sizeof(PXDMA_KEYHOLE_DATA), &buffer, &totalLength);
	if (!NT_SUCCESS(status)) {
		TraceError(DBG_IO, "Retrieve Buffer Failed - Length: %Iu", totalLength);
		return status;
	}
		
	if (buffer == NULL) {
		TraceError(DBG_IO, "Buffer is NULL");
		status = STATUS_NOT_SUPPORTED;
		return status;
	}

	if (totalLength != sizeof(XDMA_KEYHOLE_DATA)) {
		TraceError(DBG_IO, "Input data not equal to XDMA Keyhole Struct");
		status = STATUS_NOT_SUPPORTED;
		return status;
	}
	
	//Cast to data struct for user application data retrieval
	kholeData = (PXDMA_KEYHOLE_DATA)buffer;
		
	if (kholeData->size <= 0 || kholeData->offset >=  xdma->barLength[barIndex]) {
		TraceError(DBG_IO, "Struct data incorrect, size is zero, pointer is null, or offset is greater than bar length");
		status = STATUS_NOT_SUPPORTED;
		return status;
	}

	TraceInfo(DBG_IO, "Retrieve Buffer Success - Length: %Iu", kholeData->size);
	TraceInfo(DBG_IO, "Retrieve Buffer Success - Offset: %Iu", kholeData->offset);
	TraceInfo(DBG_IO, "Retrieve Buffer Success - Buffer Address: %p", kholeData->ptrAddr);

	PUCHAR writeAddr = (PUCHAR)file->u.bar + kholeData->offset;
	
	//Repeatedly writh 32-bit values from arrray to address without increment
	for(size_t totalSize = kholeData->size; totalSize > 0; totalSize--) {
		WRITE_REGISTER_ULONG((volatile ULONG*)writeAddr, *kholeData->ptrAddr);
		kholeData->ptrAddr++;
	}

	if (NT_SUCCESS(status)) {
		WdfRequestComplete(request, status);  // complete the request       
	}
		
	return status;

}

static NTSTATUS IoctlBar(IN PFILE_CONTEXT file, IN WDFREQUEST request, IN ULONG IoControlCode, IN ULONG barIndex, IN PXDMA_DEVICE xdma) {

	NTSTATUS status = STATUS_INTERNAL_ERROR;
	
	switch (IoControlCode) {
		//Map BAR to userspace
	case IOCTL_MAP_BAR:
		TraceInfo(DBG_IO, "IOCTL_MAP_BAR");
		status = IoctlMapBar(file, request, barIndex, xdma);
		break;
		//Repeatedly write from an array size amount of times to a given register
	case IOCTL_WRITE_KEYHOLE_REGISTER:
		TraceInfo(DBG_IO, "IOCTL_WRITE_KEYHOLE_REGISTER");
		status = IoctlKeyholeWriteRegister(file, request, barIndex, xdma);
		break;
	default:
		TraceError(DBG_IO, "Unknown IOCTL code for device node!");
		status = STATUS_NOT_SUPPORTED;
		break;
	}
	
	return status;
}

static NTSTATUS IoctlChannel(IN PFILE_CONTEXT file, IN WDFREQUEST request, IN ULONG IoControlCode) {

	UNREFERENCED_PARAMETER(file);

	NTSTATUS status = STATUS_INTERNAL_ERROR;

	PQUEUE_CONTEXT queue = GetQueueContext(file->queue);

	// ioctl codes defined in xdma_public.h
	switch (IoControlCode) {
	case IOCTL_XDMA_PERF_START:
		TraceInfo(DBG_IO, "%s_%u IOCTL_XDMA_PERF_START",
			queue->engine->dir == H2C ? "H2C" : "C2H", queue->engine->channel);
		EngineStartPerf(queue->engine);
		status = STATUS_SUCCESS;
		WdfRequestComplete(request, status);
		break;
	case IOCTL_XDMA_PERF_GET:
		TraceInfo(DBG_IO, "%s_%u IOCTL_XDMA_PERF_GET",
			queue->engine->dir == H2C ? "H2C" : "C2H", queue->engine->channel);
		status = IoctlGetPerf(request, queue->engine);
		if (NT_SUCCESS(status)) {
			WdfRequestCompleteWithInformation(request, status, sizeof(XDMA_PERF_DATA));
		}
		break;
	case IOCTL_XDMA_ADDRMODE_GET:
		TraceInfo(DBG_IO, "%s_%u IOCTL_XDMA_ADDRMODE_GET",
			queue->engine->dir == H2C ? "H2C" : "C2H", queue->engine->channel);
		status = IoctlGetAddrMode(request, queue->engine);
		if (NT_SUCCESS(status)) {
			WdfRequestCompleteWithInformation(request, status, sizeof(ULONG));
		}
		break;
	case IOCTL_XDMA_ADDRMODE_SET:
		TraceInfo(DBG_IO, "%s_%u IOCTL_XDMA_ADDRMODE_SET",
			queue->engine->dir == H2C ? "H2C" : "C2H", queue->engine->channel);
		status = IoctlSetAddrMode(request, queue->engine);
		if (NT_SUCCESS(status)) {
			WdfRequestComplete(request, STATUS_SUCCESS);
		}
		break;
	default:
		TraceError(DBG_IO, "Unknown IOCTL code!");
		status = STATUS_NOT_SUPPORTED;
		break;
	}

	return status;

}

// todo separate ioctl functions for sgdma and other?
VOID EvtIoDeviceControl(IN WDFQUEUE Queue, IN WDFREQUEST request, IN size_t OutputBufferLength,
                        IN size_t InputBufferLength, IN ULONG IoControlCode) {

    UNREFERENCED_PARAMETER(OutputBufferLength);
    UNREFERENCED_PARAMETER(InputBufferLength);
	UNREFERENCED_PARAMETER(Queue);

	NTSTATUS status = STATUS_INTERNAL_ERROR;

    PFILE_CONTEXT file = GetFileContext(WdfRequestGetFileObject(request));

	WDFDEVICE device = WdfFileObjectGetDevice(WdfRequestGetFileObject(request));
	DeviceContext* ctx = GetDeviceContext(device);
	PXDMA_DEVICE xdma = &(ctx->xdma);

	//User, Control, Bypass set as either 0, 1, 2 or -1 for any BAR which does not exist excluding Control which is always there (driver error if not)
	int barIndex = xdma->userBarIdx;
	
	switch (file->devType) {
	case DEVNODE_TYPE_BYPASS:
		barIndex++;
	case DEVNODE_TYPE_CONTROL:
		barIndex++;
	case DEVNODE_TYPE_USER:	
		status = IoctlBar(file, request, IoControlCode, barIndex, xdma);
		break;
	case DEVNODE_TYPE_H2C:
	case DEVNODE_TYPE_C2H:
		status = IoctlChannel(file, request, IoControlCode);
		break;
	default:
		TraceError(DBG_IO, "Unknown IOCTL code for device node!");
		status = STATUS_NOT_SUPPORTED;
		break;
	}
	
	if (!NT_SUCCESS(status)) {
		WdfRequestComplete(request, status);
	}
	TraceVerbose(DBG_IO, "exit with status: %!STATUS!", status);
}

VOID EvtIoWriteDma(IN WDFQUEUE wdfQueue, IN WDFREQUEST Request, IN size_t length)
// callback for when a write I/O request enters the SGDMA write queue
{

    UNREFERENCED_PARAMETER(length);
    NTSTATUS status = STATUS_INTERNAL_ERROR;
    PQUEUE_CONTEXT  queue = GetQueueContext(wdfQueue);

    TraceVerbose(DBG_IO, "%!FUNC!(queue=%p, request=%p, length=%llu)", wdfQueue, Request, length);

    XDMA_ENGINE* engine = queue->engine;
    TraceInfo(DBG_IO, "%s_%u writing %llu bytes to device",
              DirectionToString(engine->dir), engine->channel, length);	

    // initialize a DMA transaction from the request 
    status = WdfDmaTransactionInitializeUsingRequest(queue->engine->dmaTransaction, Request,
                                                     XDMA_EngineProgramDma,
                                                     WdfDmaDirectionWriteToDevice);
    if (!NT_SUCCESS(status)) {
        TraceError(DBG_IO, "WdfDmaTransactionInitializeUsingRequest failed: %!STATUS!", status);
        goto ErrExit;
    }
    status = WdfRequestMarkCancelableEx(Request, EvtCancelDma);
    if (!NT_SUCCESS(status)) {
        TraceError(DBG_IO, "WdfRequestMarkCancelableEx failed: %!STATUS!", status);
        goto ErrExit;
    }

    // supply the Queue as context for EvtProgramDma 
    status = WdfDmaTransactionExecute(queue->engine->dmaTransaction, queue->engine);
    if (!NT_SUCCESS(status)) {
        TraceError(DBG_IO, "WdfDmaTransactionExecute failed: %!STATUS!", status);
        goto ErrExit;
    }

    if (queue->engine->poll) {
        status = EnginePollTransfer(queue->engine);
        if (!NT_SUCCESS(status)) {
            TraceError(DBG_IO, "EnginePollTransfer failed: %!STATUS!", status);
            // EnginePollTransfer cleans-up/completes request on error, so no need for goto ErrExit
        }
    }

    return; // success
ErrExit:
    WdfDmaTransactionRelease(queue->engine->dmaTransaction);
    WdfRequestComplete(Request, status);
    TraceError(DBG_IO, "Error Request 0x%p: %!STATUS!", Request, status);
}

VOID EvtIoReadDma(IN WDFQUEUE wdfQueue, IN WDFREQUEST Request, IN size_t length)
// 
{
    UNREFERENCED_PARAMETER(length);
    NTSTATUS status = STATUS_INTERNAL_ERROR;
    PQUEUE_CONTEXT queue = GetQueueContext(wdfQueue);

    TraceVerbose(DBG_IO, "%!FUNC!(queue=%p, request=%p, length=%llu)", wdfQueue, Request, length);

    XDMA_ENGINE* engine = queue->engine;
    TraceInfo(DBG_IO, "%s_%u reading %llu bytes from device",
              DirectionToString(engine->dir), engine->channel, length);

    // initialize a DMA transaction from the request
    status = WdfDmaTransactionInitializeUsingRequest(queue->engine->dmaTransaction, Request,
                                                     XDMA_EngineProgramDma,
                                                     WdfDmaDirectionReadFromDevice);
    if (!NT_SUCCESS(status)) {
        TraceError(DBG_IO, "WdfDmaTransactionInitializeUsingRequest failed: %!STATUS!",
                   status);
        goto ErrExit;
    }
    status = WdfRequestMarkCancelableEx(Request, EvtCancelDma);
    if (!NT_SUCCESS(status)) {
        TraceError(DBG_IO, "WdfRequestMarkCancelableEx failed: %!STATUS!", status);
        goto ErrExit;
    }

    // supply the Queue as context for EvtProgramDma
    status = WdfDmaTransactionExecute(queue->engine->dmaTransaction, queue->engine);
    if (!NT_SUCCESS(status)) {
        TraceError(DBG_IO, "WdfDmaTransactionExecute failed: %!STATUS!", status); 
        goto ErrExit;
    }

    if (queue->engine->poll) {
        status = EnginePollTransfer(queue->engine);
        if (!NT_SUCCESS(status)) {
            TraceError(DBG_IO, "EnginePollTransfer failed: %!STATUS!", status);
            // EnginePollTransfer cleans-up/completes request on error, so no need for goto ErrExit
        }
    }

    return; // success
ErrExit:
    WdfDmaTransactionRelease(queue->engine->dmaTransaction);
    WdfRequestComplete(Request, status);
    TraceError(DBG_IO, "Error Request 0x%p: %!STATUS!", Request, status);
}

VOID EvtIoReadEngineRing(IN WDFQUEUE wdfQueue, IN WDFREQUEST Request, IN size_t length) {
    NTSTATUS status = STATUS_UNSUCCESSFUL;
    PQUEUE_CONTEXT queue = GetQueueContext(wdfQueue);
    XDMA_ENGINE* engine = queue->engine;

    // get output buffer
    WDFMEMORY outputMem;
    status = WdfRequestRetrieveOutputMemory(Request, &outputMem);
    if (!NT_SUCCESS(status)) {
        TraceError(DBG_IO, "WdfRequestRetrieveOutputMemory failed: %!STATUS!", status);
        WdfRequestCompleteWithInformation(Request, status, 0);
        return;
    }

    TraceInfo(DBG_IO, "%s_%u requesting %llu bytes from ring buffer",
              DirectionToString(engine->dir), engine->channel, length);

    LARGE_INTEGER timeout;
    timeout.QuadPart = -3 * 10000000; // 3 second timeout
    size_t numBytes = 0;
    status = EngineRingCopyBytesToMemory(engine, outputMem, length, timeout, &numBytes);

    WdfRequestCompleteWithInformation(Request, status, numBytes);
}

VOID EvtCancelDma(IN WDFREQUEST request) {
    PQUEUE_CONTEXT queue = GetQueueContext(WdfRequestGetIoQueue(request));
    TraceInfo(DBG_IO, "Request 0x%p from Queue 0x%p", request, queue);
    EngineStop(queue->engine);
    NTSTATUS status = WdfRequestUnmarkCancelable(request);
    if (!NT_SUCCESS(status)) {
        TraceError(DBG_IO, "WdfRequestUnmarkCancelable failed: %!STATUS!", status);
    }
    status = WdfDmaTransactionRelease(queue->engine->dmaTransaction);
    if (!NT_SUCCESS(status)) {
        TraceError(DBG_IO, "WdfDmaTransactionRelease failed: %!STATUS!", status);
    }
    WdfRequestComplete(request, STATUS_CANCELLED);
}

VOID EvtCancelReadUserEvent(IN WDFREQUEST request) {

    PFILE_CONTEXT file = GetFileContext(WdfRequestGetFileObject(request));
    KEVENT* event = (KEVENT*)file->u.event->userData;
    KePulseEvent(event, IO_NO_INCREMENT, FALSE);

    NTSTATUS status = WdfRequestUnmarkCancelable(request);
    if (status != STATUS_CANCELLED) {
        WdfRequestComplete(request, STATUS_CANCELLED);
    }
}

NTSTATUS EvtReadUserEvent(WDFREQUEST request, size_t length) {

    NTSTATUS status = 0;
    BOOLEAN eventValue = TRUE;

    if (length != sizeof(BOOLEAN)) {
        status = STATUS_INVALID_PARAMETER;
        TraceError(DBG_IO, "Error: %!STATUS!", status);
        goto Exit;
    }

    //status = WdfRequestMarkCancelableEx(request, EvtCancelReadUserEvent);
    //if (!NT_SUCCESS(status)) {
    //    TraceError(DBG_IO, "WdfRequestMarkCancelableEx failed: %!STATUS!", status);
    //    goto Exit;
    //}

    // wait for event to occur - return error on timeout
    PFILE_CONTEXT file = GetFileContext(WdfRequestGetFileObject(request));
    KEVENT* event = (KEVENT*)file->u.event->userData;
    KeClearEvent(event);
    LARGE_INTEGER timeout;
    timeout.QuadPart = -3 * 10000000; // 3 second timeout
    status = KeWaitForSingleObject(event, Executive, KernelMode, FALSE, &timeout);
    if (status == STATUS_TIMEOUT) {
        eventValue = FALSE;
    }

    // get output buffer
    WDFMEMORY outputMem;
    status = WdfRequestRetrieveOutputMemory(request, &outputMem);
    if (!NT_SUCCESS(status)) {
        TraceError(DBG_IO, "WdfRequestRetrieveOutputMemory failed: %!STATUS!", status);
        goto Exit;
    }

    // get buffer size
    size_t bufSize = 0;
    WdfMemoryGetBuffer(outputMem, &bufSize);
    if (bufSize != sizeof(BOOLEAN)) {
        TraceError(DBG_IO, "Error: length is %llu but must be %llu", bufSize, sizeof(UINT32));
        status = STATUS_INVALID_PARAMETER;
        goto Exit;
    }

    // copy the user irq events from our internal buffer to the WdfMemory
    status = WdfMemoryCopyFromBuffer(outputMem, 0, &eventValue, bufSize);
    if (!NT_SUCCESS(status)) {
        TraceError(DBG_IO, "WdfMemoryCopyFromBuffer failed: %!STATUS!", status);
        goto Exit;
    }

    WdfRequestCompleteWithInformation(request, status, bufSize);
    TraceInfo(DBG_IO, "user events returned is 0x%08X", eventValue);

Exit:
    TraceVerbose(DBG_IO, "user EP=0x%08X", eventValue);
    return status;
}

VOID HandleUserEvent(ULONG eventId, void* userData) {

    ASSERTMSG("userData=NULL!", userData != NULL);
    KEVENT* event = (KEVENT*)userData;

    TraceInfo(DBG_IO, "event_%u signaling completion", eventId);
    KePulseEvent(event, IO_NO_INCREMENT, FALSE);
}
