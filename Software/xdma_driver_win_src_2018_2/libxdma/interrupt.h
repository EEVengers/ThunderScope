/*
* XDMA Interrupt Service Routines, Handlers and Dispatch Functions
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
#include "dma_engine.h"

// ========================= declarations =================================================

#define XDMA_MAX_USER_IRQ (16)
#define XMDA_MAX_NUM_IRQ (XDMA_MAX_USER_IRQ + XDMA_MAX_CHAN_IRQ)

typedef struct _IRQ_CONTEXT {
    ULONG eventId;
    UINT32 channelIrqPending; // channel irq that have fired
    UINT32 userIrqPending; // user event irq that have fired
    XDMA_ENGINE* engine;
    volatile XDMA_IRQ_REGS* regs;
    PXDMA_DEVICE xdma;
} IRQ_CONTEXT, *PIRQ_CONTEXT;
WDF_DECLARE_CONTEXT_TYPE_WITH_NAME(IRQ_CONTEXT, GetIrqContext)


/// Initialize the interrupt resources given by the OS for use by DMA engines and user events 
 NTSTATUS SetupInterrupts(IN PXDMA_DEVICE xdma,
                         IN WDFCMRESLIST ResourcesRaw,
                         IN WDFCMRESLIST ResourcesTranslated);

