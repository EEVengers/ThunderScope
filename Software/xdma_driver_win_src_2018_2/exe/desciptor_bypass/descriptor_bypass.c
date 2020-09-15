#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <Windows.h>
#include <SetupAPI.h>
#include <INITGUID.H>
#include <strsafe.h>
#include <WinIoCtl.h>

#include "xdma_public.h"

#pragma comment(lib, "setupapi.lib")

#define DEVICE_NAME_DEFAULT "bypass_h2c_0"
#define BUFFER_LENGTH_BYTES 64416

static int verbosity = 0;

static int verbose_msg(const char* const fmt, ...) {
    int ret = 0;
    va_list args;
    if (verbosity) {
        va_start(args, fmt);
        ret = vprintf(fmt, args);
        va_end(args);
    }
    return ret;
}

static int find_devices(GUID guid, TCHAR *devpath, size_t len_devpath) {
    
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

static void bypass_dma(char* devicename) {
    DWORD write_count;
    DWORD read_count = 0;
    DWORD total_count = 0;
    PCHAR descriptor_buffer = NULL;
    TCHAR full_device_path[MAX_PATH + 1];
    DWORD num_devices = 0;

    /* find a Xdma device */
    num_devices = find_devices(GUID_DEVINTERFACE_XDMA, full_device_path, sizeof(full_device_path));
    verbose_msg("Found %d XDMA device%s.\n", num_devices, num_devices == 1 ? "" : "s");
    if (num_devices < 1) {
        printf("Error: No XDMA devices found!");
        exit(-1);
    }

    descriptor_buffer = malloc(BUFFER_LENGTH_BYTES);
    assert(descriptor_buffer);

    strcat_s(full_device_path, sizeof full_device_path, "\\");
    strcat_s(full_device_path, sizeof full_device_path, devicename);

    /* open XDMA Card-to-Host 0 device */
    HANDLE device = CreateFile(full_device_path, GENERIC_READ | GENERIC_WRITE, 0, NULL, OPEN_EXISTING,
                        FILE_ATTRIBUTE_NORMAL, NULL);
    if (device == INVALID_HANDLE_VALUE) {
        fprintf(stderr, "Error: failed to open device, win32 error code: %d\n", GetLastError());
        free(descriptor_buffer);
        exit(-1);
    }

    do {

        if (!ReadFile(device, descriptor_buffer + total_count, BUFFER_LENGTH_BYTES, &read_count, NULL)) {
            fprintf(stderr, "Error: ReadFile() failed with Win32 error code: %ld\n", 
                    GetLastError());
            free(descriptor_buffer);
            CloseHandle(device);
            exit(-1);
        }
        total_count += read_count;
    } while (read_count == 0 || (read_count % 32 != 0));

    if (!WriteFile(device, (LPVOID)descriptor_buffer, total_count, &write_count, NULL)) {
        fprintf(stderr, "Error: WriteFile() failed with Win32 code: %ld\n", GetLastError());
        free(descriptor_buffer);
        CloseHandle(device);
        exit(-1);
    }

    free(descriptor_buffer);
    CloseHandle(device);
    printf("Transferred %d bytes of descriptor data to bypass interface\n", total_count);

}

static void usage(const char* name) {
    printf("%s\n\n", name);
    printf("usage: %s [OPTIONS]\n\n", name);
    printf("Transfer descriptors using the XDMA bypass interface\n\n");
    printf("  -d  device (defaults to %s)\n", DEVICE_NAME_DEFAULT);
    printf("  -v  be more verbose during test\n");
    printf("  -h  print usage help and exit\n");
}

int __cdecl main(int argc, char* argv[]) {

    char *device_name = DEVICE_NAME_DEFAULT;

    int argidx = 1;
    while ((argidx < argc) && ((argv[argidx][0] == '-') || (argv[argidx][0] == '/'))) {
        /* test for help option */
        switch (argv[argidx][1]) {
        case '?':
        case 'h':
            usage(argv[0]);
            return 0;
        case 'v':
            verbosity = TRUE;
            argidx++;
            break;
        case 'd':
            argidx++;
            device_name = _strdup(argv[argidx]);
            argidx++;
            break;
        default:
            fprintf(stderr, "Error: unknown option: %c\n\n", argv[argidx][1]);
            usage(argv[0]);
            return 0;
        }

    }

    bypass_dma(device_name);
}
