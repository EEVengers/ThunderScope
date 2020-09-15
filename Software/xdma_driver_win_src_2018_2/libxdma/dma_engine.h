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
*/

#pragma once

// ========================= include dependencies =================================================

#include <ntddk.h>
#include <ntintsafe.h>
#include <wdf.h>
#include "reg.h"
#include "xdma_public.h"

// ========================= constants ============================================================

#define XDMA_MAX_NUM_CHANNELS   (4)
#define XDMA_NUM_DIRECTIONS     (2)
#define XDMA_MAX_CHAN_IRQ       (XDMA_NUM_DIRECTIONS * XDMA_MAX_NUM_CHANNELS)
#define XDMA_RING_NUM_BLOCKS    (258U)
#define XDMA_RING_BLOCK_SIZE    (PAGE_SIZE)
#define XDMA_MAX_TRANSFER_SIZE  (8UL * 1024UL * 1024UL)

// ========================= forward declarations =================================================

struct XDMA_DEVICE_T; 
typedef struct XDMA_DEVICE_T XDMA_DEVICE;
struct XDMA_ENGINE_T;

// ========================= type declarations ====================================================

/// Direction of the DMA transfer/engine
typedef enum DirToDev_t {
    H2C = 0, // Host-to-Card - write to device
    C2H = 1  // Card-to-Host - read from device
} DirToDev;

/// Ring buffer abstraction for streaming DMA
typedef struct XDMA_RING_T {
    WDFCOMMONBUFFER results;
    PMDL mdl[XDMA_RING_NUM_BLOCKS]; // memory descriptor list - host side
    CHAR dmaTransferContext[DMA_TRANSFER_CONTEXT_SIZE_V1];
    UINT head;
    UINT tail;
    WDFSPINLOCK lock;
    KEVENT completionSignal;
}XDMA_RING, *PXDMA_RING;

/// engine specific work to perform after dma transfer completion is detected
typedef VOID(*PFN_XDMA_ENGINE_WORK)(IN struct XDMA_ENGINE_T *engine);

/// Engine address mode. 
/// Determines how the DMA engine interprets the device address (destination address on H2C and 
/// source address on C2H).
/// When AddressMode_Contiguous is chosen, the device address only needs to be set for the first 
/// descriptor and the engine assumes that all subsequent descriptors device addresses follow
/// sequentially. 
/// When AddressMode_Fixed is selected, the device addresses of each descriptor must be explicitly
/// set.
typedef enum AddressMode_T {
    AddressMode_Contiguous,  // incremental
    AddressMode_Fixed,       // non-incremental
} AddressMode;

typedef enum EngineType_t {
    EngineType_MM,      // Memory Mapped
    EngineType_ST,      // Streaming
} EngineType;

/// DMA engine abstraction
typedef struct XDMA_ENGINE_T {

    XDMA_DEVICE *parentDevice; // the xdma device to which this engine belongs

    // register access
    volatile XDMA_ENGINE_REGS *regs; // control regs
    volatile XDMA_SGDMA_REGS *sgdma;

    // engine configuration
    UINT32 irqBitMask;
    UINT32 alignAddr;
    UINT32 alignLength;
    UINT32 alignAddrBits;
    DWORD channel;
    DirToDev dir;               // data flow direction (H2C or C2H)
    BOOLEAN enabled;
    EngineType type;            // MemoryMapped or Streaming
    AddressMode addressMode;    // incremental (contiguous) or non-incremental (fixed)

    // dma transfer related
    WDFCOMMONBUFFER descBuffer;
    WDFDMATRANSACTION dmaTransaction;
    PFN_XDMA_ENGINE_WORK work; // engine work for interrupt processing

    // specific to streaming interface
    XDMA_RING ring;

    // specific to poll mode
    ULONG poll;
    WDFCOMMONBUFFER pollWbBuffer; // buffer for holding poll mode descriptor writeback data
    ULONG numDescriptors; // keep count of descriptors in transfer for poll mode
} XDMA_ENGINE;

#pragma pack(1)

/// \brief Descriptor for a single contiguous memory block transfer.
///
/// Multiple descriptors are linked a 'next' pointer. An additional extra adjacent number gives the 
/// amount of subsequent contiguous descriptors. The descriptors are in root complex memory, and the
/// bytes in the 32-bit words must be in little-endian byte ordering.
typedef struct xdma_descriptor_t {
    UINT32 control;
    UINT32 numBytes;  // transfer length in bytes
    UINT32 srcAddrLo; // source address (low 32-bit)
    UINT32 srcAddrHi; // source address (high 32-bit)
    UINT32 dstAddrLo; // destination address (low 32-bit)
    UINT32 dstAddrHi; // destination address (high 32-bit)
                      // next descriptor in the single-linked list of descriptors, 
                      // this is the bus address of the next descriptor in the root complex memory.
    UINT32 nextLo;    // next desc address (low 32-bit)
    UINT32 nextHi;    // next desc address (high 32-bit)
} DMA_DESCRIPTOR;

/// Result buffer of the streaming DMA operation. 
/// The XDMA IP core writes the result of the DMA transfer to the host memory
typedef struct {
    UINT32 status;
    UINT32 length;
    UINT32 reserved_1[6]; // padding
} DMA_RESULT;

/// \brief Structure for polled mode descriptor writeback
///
/// XDMA IP core writes number of completed descriptors to this memory, which the driver can then
/// poll to detect transfer completion
typedef struct {
    UINT32 completedDescCount;
    UINT32 reserved_1[7];
} XDMA_POLL_WB;

#pragma pack()

// ========================= function declarations ================================================

struct XDMA_DEVICE_T;
typedef struct XDMA_DEVICE_T* PXDMA_DEVICE;

/// Initialize an XDMA_ENGINE for each engine configured in HW
NTSTATUS ProbeEngines(IN PXDMA_DEVICE xdma);

/// Start the DMA engine
/// The transfer descriptors should be initialized and bound to HW before calling this function
VOID EngineStart(IN XDMA_ENGINE *engine);

/// Stop the DMA engine
VOID EngineStop(IN XDMA_ENGINE *engine);

/// Configure the streaming ring buffer and start the cyclic DMA transfer
VOID EngineRingSetup(IN XDMA_ENGINE *engine);

/// Reset the streaming ring buffer and stop the cyclic DMA transfer
VOID EngineRingTeardown(IN XDMA_ENGINE *engine);

/// Poll the write-back buffer for DMA transfer completion
NTSTATUS EnginePollTransfer(IN XDMA_ENGINE* engine);

/// Poll the write-back buffer for DMA transfer completion
NTSTATUS EnginePollRing(IN XDMA_ENGINE* engine);

/// enable the engines interrupt
VOID EngineEnableInterrupt(IN XDMA_ENGINE* engine);

/// disable the engines interrupt
VOID EngineDisableInterrupt(IN XDMA_ENGINE* engine);

/// Arm the performance counters of the XDMA engine
/// Automatically stops when a dma descriptor with the stop bit is completed
VOID EngineStartPerf(IN XDMA_ENGINE* engine);

/// Get the performance counters 
VOID EngineGetPerf(IN XDMA_ENGINE* engine, OUT XDMA_PERF_DATA* perfData);

/// Stringify the Engine direction (H2C/C2H)
char* DirectionToString(DirToDev dir);

/// Copy data from the ring buffer directly into a WDFMEMORY object
NTSTATUS EngineRingCopyBytesToMemory(IN XDMA_ENGINE *engine, WDFMEMORY outputMem,
                                     size_t length, LARGE_INTEGER timeout, size_t* bytesRead);