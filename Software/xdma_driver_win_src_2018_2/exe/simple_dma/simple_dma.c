#include <stdio.h>
#include <stdlib.h>
#include <Windows.h>
#include <SetupAPI.h>
#include <INITGUID.H>
#include <strsafe.h>
#include <WinIoCtl.h>

#include "xdma_public.h"

#pragma comment(lib, "setupapi.lib")

#define ONE_MB (1024UL * 1024UL)
#define US_PER_S (1000UL * 1000UL)

/* helper struct to remember the Xdma device names */
typedef struct {
	TCHAR base_path[MAX_PATH + 1]; /* path to first found Xdma device */
	TCHAR c2h0_path[MAX_PATH + 1];	/* card to host DMA 0 */
	TCHAR h2c0_path[MAX_PATH + 1];	/* host to card DMA 0 */
	PBYTE buffer; /* pointer to the allocated buffer */
	DWORD buffer_size; /* size of the buffer in bytes */
	HANDLE c2h0;
	HANDLE h2c0;
} xdma_device;

typedef struct {
	LARGE_INTEGER start;
	LARGE_INTEGER end;
	LARGE_INTEGER freq;
} Timer;

__inline static void timer_start(Timer *timer) {
	QueryPerformanceFrequency(&timer->freq);
	QueryPerformanceCounter(&timer->start);
}

__inline static LONGLONG timer_elapsed_us(Timer *timer) {
	QueryPerformanceCounter(&timer->end);
	return (((timer->end.QuadPart - timer->start.QuadPart) * US_PER_S) / timer->freq.QuadPart);
}

int find_devices(GUID guid, TCHAR *devpath, size_t len_devpath) {
	
	HDEVINFO dev_info = SetupDiGetClassDevs((LPGUID)&guid, NULL, NULL, DIGCF_PRESENT | DIGCF_DEVICEINTERFACE);
	if (dev_info == INVALID_HANDLE_VALUE) {
		fprintf(stderr, "GetDevices INVALID_HANDLE_VALUE\n");
		exit(-1);
	}

	SP_DEVICE_INTERFACE_DATA dev_interface;
	dev_interface.cbSize = sizeof(SP_DEVICE_INTERFACE_DATA);

	// enumerate through devices
	DWORD index;
	for (index = 0; SetupDiEnumDeviceInterfaces(dev_info, NULL, &guid, index, &dev_interface); ++index) {

		// get required buffer size
		ULONG detail_size = 0;
		if (!SetupDiGetDeviceInterfaceDetail(dev_info, &dev_interface, NULL, 0, &detail_size, NULL) && GetLastError() != ERROR_INSUFFICIENT_BUFFER) {
			fprintf(stderr, "SetupDiGetDeviceInterfaceDetail - get length failed\n");
			break;
		}

		// allocate space for device interface detail
		PSP_DEVICE_INTERFACE_DETAIL_DATA dev_detail = (PSP_DEVICE_INTERFACE_DETAIL_DATA)HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, detail_size);
		if (!dev_detail) {
			fprintf(stderr, "HeapAlloc failed\n");
			break;
		}
		dev_detail->cbSize = sizeof(SP_DEVICE_INTERFACE_DETAIL_DATA);

		// get device interface detail
		if (!SetupDiGetDeviceInterfaceDetail(dev_info, &dev_interface, dev_detail, detail_size, NULL, NULL)) {
			fprintf(stderr, "SetupDiGetDeviceInterfaceDetail - get detail failed\n");
			HeapFree(GetProcessHeap(), 0, dev_detail);
			break;
		}

		StringCchCopy(devpath, len_devpath, dev_detail->DevicePath);
		HeapFree(GetProcessHeap(), 0, dev_detail);
	}

	SetupDiDestroyDeviceInfoList(dev_info);

	return index;
}

int __cdecl main(int argc, char* argv[]) {
	xdma_device xdma;
	LONG status = 0;
	DWORD num_devices;
	DWORD num_bytes_read;
	Timer timer;
	LONGLONG elapsed;

	UNREFERENCED_PARAMETER(argc);
	UNREFERENCED_PARAMETER(argv);

	/* find a Xdma device */
	num_devices = find_devices(GUID_DEVINTERFACE_XDMA, &xdma.base_path[0], sizeof(xdma.base_path));
	printf("Found %d Xdma device%s.\n", num_devices, num_devices == 1 ? "" : "s");
	if (num_devices < 1) {
		exit(-1);
	}

	strcpy_s(xdma.c2h0_path, sizeof xdma.c2h0_path, &xdma.base_path[0]);
	strcat_s(xdma.c2h0_path, sizeof xdma.c2h0_path, "\\c2h_0");
	strcpy_s(xdma.h2c0_path, sizeof xdma.h2c0_path, &xdma.base_path[0]);
	strcat_s(xdma.h2c0_path, sizeof xdma.h2c0_path, "\\h2c_0");

	/* open XDMA Card-to-Host 0 device */
	xdma.c2h0 = CreateFile(xdma.c2h0_path, GENERIC_READ | GENERIC_WRITE,
								 0, NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);
	if (xdma.c2h0 == INVALID_HANDLE_VALUE) {
		fprintf(stderr, "Error opening device, win32 error code: %d\n", GetLastError());
		status = -1;
		goto cleanup_handles;
	}

	/* open XDMA Host-to-Card 0 device */
	xdma.h2c0 = CreateFile(xdma.h2c0_path, GENERIC_READ | GENERIC_WRITE,
									0, NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);
	if (xdma.c2h0 == INVALID_HANDLE_VALUE) {
		fprintf(stderr, "Error opening device, win32 error code: %d\n", GetLastError());
		status = -1;
		goto cleanup_handles;
	}

	/* allocate buffer */
	xdma.buffer_size = 8 * ONE_MB; /* buffer size, for easy debugging use a power of two */
	xdma.buffer = (PBYTE)_aligned_malloc(xdma.buffer_size, 128);
	if (xdma.buffer == NULL) {
		status = -1;
		goto cleanup_handles;
	}
	/* clear buffer */
	memset(xdma.buffer, 0x5D, xdma.buffer_size);

	/* transfer data from FPGA Card to Host PC using SGDMA engine */
	printf("Starting single XDMA Card-to-Host transfer of %u MB.\n", xdma.buffer_size / ONE_MB);
	timer_start(&timer);
	if (!ReadFile(xdma.c2h0, (LPVOID)xdma.buffer, xdma.buffer_size, (LPDWORD)&num_bytes_read, NULL)) {
		fprintf(stderr, "ReadFile from device %s failed: %d", xdma.c2h0_path, GetLastError());
	}
	elapsed = timer_elapsed_us(&timer);
	printf("XDMA Card-to-Host transfer has finished after %lld us.\n", elapsed);

	/* transfer data from Host PC to FPGA Card using SGDMA engine */
	printf("Starting single XDMA Host-to-Card transfer for %u MB.\n", xdma.buffer_size / ONE_MB);
	timer_start(&timer);
	if (!WriteFile(xdma.h2c0, (LPVOID)xdma.buffer, xdma.buffer_size, (LPDWORD)&num_bytes_read, NULL)) {
		fprintf(stderr, "WriteFile from device %s failed: %d\n", xdma.h2c0_path, GetLastError());
	}
	elapsed = timer_elapsed_us(&timer);
	printf("XDMA Host-to-Card transfer has finished after %lld us.\n", elapsed);

cleanup_handles:
	if (xdma.c2h0) CloseHandle(xdma.c2h0);
	if (xdma.h2c0) CloseHandle(xdma.h2c0);
	return status;

}

