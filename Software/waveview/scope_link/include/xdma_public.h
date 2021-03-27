/*
* XDMA Driver public API
* ===============================
*
* Copyright 2018 Xilinx Inc.
* Copyright 2010-2012 Sidebranch
* Copyright 2010-2012 Leon Woestenberg <leon@sidebranch.com>
*
* Maintainer:
* -----------
* Alexander Hornburg <alexander.hornburg@xilinx.com>
*
* Description:
* ------------
* This is a sample driver for the Xilinx Inc. 'DMA/Bridge Subsystem for PCIe v3.0' (XDMA) IP.
*
*/

#ifndef __XDMA_WINDOWS_H__
#define __XDMA_WINDOWS_H__

// 74c7e4a9-6d5d-4a70-bc0d-20691dff9e9d
DEFINE_GUID(GUID_DEVINTERFACE_XDMA, 
            0x74c7e4a9, 0x6d5d, 0x4a70, 0xbc, 0x0d, 0x20, 0x69, 0x1d, 0xff, 0x9e, 0x9d);

#define	XDMA_FILE_USER		L"\\user"
#define	XDMA_FILE_CONTROL	L"\\control"
#define XDMA_FILE_BYPASS	L"\\bypass"

#define	XDMA_FILE_EVENT_0	L"\\event_0"
#define	XDMA_FILE_EVENT_1	L"\\event_1"
#define	XDMA_FILE_EVENT_2	L"\\event_2"
#define	XDMA_FILE_EVENT_3	L"\\event_3"
#define	XDMA_FILE_EVENT_4	L"\\event_4"
#define	XDMA_FILE_EVENT_5	L"\\event_5"
#define	XDMA_FILE_EVENT_6	L"\\event_6"
#define	XDMA_FILE_EVENT_7	L"\\event_7"
#define	XDMA_FILE_EVENT_8	L"\\event_8"
#define	XDMA_FILE_EVENT_9	L"\\event_9"
#define	XDMA_FILE_EVENT_10	L"\\event_10"
#define	XDMA_FILE_EVENT_11	L"\\event_11"
#define	XDMA_FILE_EVENT_12	L"\\event_12"
#define	XDMA_FILE_EVENT_13	L"\\event_13"
#define	XDMA_FILE_EVENT_14	L"\\event_14"
#define	XDMA_FILE_EVENT_15	L"\\event_15"

#define	XDMA_FILE_H2C_0		L"\\h2c_0"
#define	XDMA_FILE_H2C_1		L"\\h2c_1"
#define	XDMA_FILE_H2C_2		L"\\h2c_2"
#define	XDMA_FILE_H2C_3		L"\\h2c_3"

#define	XDMA_FILE_C2H_0		L"\\c2h_0"
#define	XDMA_FILE_C2H_1		L"\\c2h_1"
#define	XDMA_FILE_C2H_2		L"\\c2h_2"
#define	XDMA_FILE_C2H_3		L"\\c2h_3"

#define XDMA_IOCTL(index) CTL_CODE(FILE_DEVICE_UNKNOWN, index, METHOD_BUFFERED, FILE_ANY_ACCESS)
	
#define IOCTL_XDMA_GET_VERSION			XDMA_IOCTL(0x0)
#define IOCTL_XDMA_PERF_START			XDMA_IOCTL(0x1)
#define IOCTL_XDMA_PERF_STOP			XDMA_IOCTL(0x2)
#define IOCTL_XDMA_PERF_GET				XDMA_IOCTL(0x3)
#define IOCTL_XDMA_ADDRMODE_GET			XDMA_IOCTL(0x4)
#define IOCTL_XDMA_ADDRMODE_SET			XDMA_IOCTL(0x5)
#define IOCTL_WRITE_KEYHOLE_REGISTER	XDMA_IOCTL(0x6)
#define IOCTL_MAP_BAR					XDMA_IOCTL(0x7)

// structure for IOCTL_XDMA_PERF_GET
typedef struct {
    UINT64 clockCycleCount;
    UINT64 dataCycleCount;
	UINT64 pendingCount;
}XDMA_PERF_DATA;

/* For use on user bar repeatedly writing to a given register one 32 bit value at a time
// ptrAddr - the pointer to the data you want to write e.g. an array
// size - the number of 32 bit words you would like to write to the register
// offset the address of the register

example use
-----------
const ULONG size = 16;
ULONG AXI_ADDRESS_EXAMPLE = 0x88;
alignas(32) ULONG wr_buffer[size];

DWORD nb;
XDMA_KEYHOLE_DATA kholeData;
kholeData.offset = AXI_ADDRESS_EXAMPLE;
kholeData.ptrAddr = wr_buffer;
kholeData.size = size;
BOOL success = DeviceIoControl(user, IOCTL_WRITE_KEYHOLE_REGISTER, &kholeData, sizeof(XDMA_KEYHOLE_DATA), nullptr, 0, &nb, NULL);
if (!success) {
	throw std::runtime_error("ioctl failed!" + GetLastError());
}

*/
typedef struct {
	PULONG ptrAddr;
	ULONG size;
	ULONG offset;
}XDMA_KEYHOLE_DATA, *PXDMA_KEYHOLE_DATA;


typedef struct {
	PVOID mappedAddress;
	ULONG barLength;
}XDMA_BAR_INFO, *PXDMA_BAR_INFO;

#endif/*__XDMA_WINDOWS_H__*/

