/*
* XDMA Device Driver
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
* Description:
* ------------
* This is a sample driver for the Xilinx Inc. 'DMA/Bridge Subsystem for PCIe v3.0' (XDMA).
*
*
* References:
* -----------
*	[1] pg195-pcie-dma.pdf - DMA/Bridge Subsystem for PCI Express v3.0 - Product Guide
*/

#pragma once

// ========================= include dependencies =================================================

#include <ntddk.h>
#include "reg.h"
#include "dma_engine.h"
#include "interrupt.h"

// ========================= constants ============================================================

#define XDMA_MAX_NUM_BARS (3)

// ========================= type declarations ====================================================


/// Callback function type for user-defined work to be executed on receiving a user event.
typedef void(*PFN_XDMA_USER_WORK)(ULONG eventId, void* userData);

/// user event interrupt context
typedef struct XDMA_EVENT_T {
    PFN_XDMA_USER_WORK work; // user callback 
    void* userData; // custom user data. will be passed into work callback function
    WDFINTERRUPT irq; //wdf interrupt handle
} XDMA_EVENT;

/// The XDMA device context
typedef struct XDMA_DEVICE_T {

    // WDF 
    WDFDEVICE wdfDevice;

    // PCIe BAR access
    UINT numBars;
    PVOID bar[XDMA_MAX_NUM_BARS]; // kernel virtual address of BAR
    ULONG barLength[XDMA_MAX_NUM_BARS];
    ULONG configBarIdx;
    LONG userBarIdx;
    LONG bypassBarIdx;
    volatile XDMA_CONFIG_REGS *configRegs;
    volatile XDMA_IRQ_REGS *interruptRegs;
    volatile XDMA_SGDMA_COMMON_REGS * sgdmaRegs;

    // DMA Engine management
    XDMA_ENGINE engines[XDMA_MAX_NUM_CHANNELS][XDMA_NUM_DIRECTIONS];
    WDFDMAENABLER dmaEnabler;   // WDF DMA Enabler for the engine queues

    // Interrupt Resources
    WDFINTERRUPT lineInterrupt;
    WDFINTERRUPT channelInterrupts[XDMA_MAX_CHAN_IRQ];

    // user events
    XDMA_EVENT userEvents[XDMA_MAX_USER_IRQ];

} XDMA_DEVICE, *PXDMA_DEVICE;

// ========================= function declarations ================================================


