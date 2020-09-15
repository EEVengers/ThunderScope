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
*/

#pragma once

// ========================= include dependencies =================================================

#include "xdma.h"

// ========================= declarations =========================================================

// The type of the device node - this determines behaviour of EvtIoRead and EvtIoWrite functions
typedef enum {
    DEVNODE_TYPE_USER,
    DEVNODE_TYPE_CONTROL,
    DEVNODE_TYPE_EVENTS,
    DEVNODE_TYPE_BYPASS,
    DEVNODE_TYPE_H2C,
    DEVNODE_TYPE_C2H,
    ID_DEVNODE_UNKNOWN = 255,
} DEVNODE_TYPE;

// File Context Data
typedef struct _FILE_CONTEXT {
    DEVNODE_TYPE devType;
    union {
        void* bar;              // USER / CONTROL / BYPASS
        XDMA_EVENT* event;      // EVENTS
        XDMA_ENGINE* engine;    // H2C / C2H
    } u;
    WDFQUEUE queue;
	PMDL mdl;
} FILE_CONTEXT, *PFILE_CONTEXT;
WDF_DECLARE_CONTEXT_TYPE_WITH_NAME(FILE_CONTEXT, GetFileContext)

// Queue Context Data
typedef struct _QUEUE_CONTEXT {
    XDMA_ENGINE* engine;
} QUEUE_CONTEXT, *PQUEUE_CONTEXT;
WDF_DECLARE_CONTEXT_TYPE_WITH_NAME(QUEUE_CONTEXT, GetQueueContext)

EVT_WDF_DEVICE_FILE_CREATE          EvtDeviceFileCreate;
EVT_WDF_FILE_CLOSE                  EvtFileClose;
EVT_WDF_FILE_CLEANUP                EvtFileCleanup;
EVT_WDF_IO_QUEUE_IO_DEVICE_CONTROL  EvtIoDeviceControl;
EVT_WDF_IO_QUEUE_IO_READ			EvtIoRead;
EVT_WDF_IO_QUEUE_IO_WRITE			EvtIoWrite;

EVT_WDF_IO_QUEUE_IO_READ    EvtIoReadDma;
EVT_WDF_IO_QUEUE_IO_WRITE   EvtIoWriteDma;
EVT_WDF_IO_QUEUE_IO_READ    EvtIoReadEngineRing;

NTSTATUS EvtReadUserEvent(WDFREQUEST request, size_t length);
VOID HandleUserEvent(ULONG eventId, void* userData);