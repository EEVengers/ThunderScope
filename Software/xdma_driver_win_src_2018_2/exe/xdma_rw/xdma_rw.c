#include <assert.h>
#include <stdlib.h>
#include <stdio.h>
#include <strsafe.h>

#include <Windows.h>
#include <SetupAPI.h>
#include <INITGUID.H>
#include <WinIoCtl.h>

#include "xdma_public.h"

#pragma comment(lib, "setupapi.lib")

enum Direction {
    C2H, //client to host - read
    H2C	 // host to client - write
};

typedef struct {
    BOOL verbose;
    char* device;
    char* file;
    BYTE* data;
    LARGE_INTEGER address;
    DWORD size;
    enum Direction direction;
    size_t alignment;
    BOOL binary;
} Options;

static Options options = { FALSE, NULL, NULL, NULL, 0, 0, C2H, 0, FALSE };

static int verbose_msg(const char* const fmt, ...) {
    int ret = 0;
    va_list args;
    if (options.verbose) {
        va_start(args, fmt);
        ret = vprintf(fmt, args);
        va_end(args);
    }
    return ret;
}

static int is_printable(char c) {
    // anything below ASCII code 32 is non-printing, 127 is DELETE
    if (c < 32 || c == 127) {
        return FALSE;
    }
    return TRUE;
}

static void print_bytes_binary(BYTE* data, size_t length) {
    FILE* output = stdout;
    if (options.file && (options.direction == C2H)) {
        fopen_s(&output, options.file, "wb");
        verbose_msg("printing bytes to file\n");
    }

    fwrite(data, sizeof(BYTE), length, output);

    if (options.file && options.direction == C2H) {
        fclose(output);
    }
}

static void print_bytes(ULONGLONG addr, BYTE* data, size_t length)
{
    FILE* output = stdout;
    if (options.file && (options.direction == C2H)) {
        fopen_s(&output, options.file, "wb");
        verbose_msg("printing bytes to file\n");
    }

    // formatted output
    for (int row = 0; row < (int)(length / 16 + ((length % 16) ? 1 : 0));
         row++) {

        // Print address
        fprintf(output, "0x%04llX:  ", addr + row * 16);

        // Print bytes
        int column;
        for (column = 0; column < (int)min(16, length - (row * 16));
             column++) {
            fprintf(output, "%02x ", data[(row * 16) + column]);
        }
        for (; column < 16; column++) {
            fprintf(output, "   ");
        }

        // Print gutter
        fprintf(output, "    ");

        // Print characters
        for (column = 0; column < (int)min(16, length - (row * 16));
             column++) {
            fprintf(output, "%c", is_printable(data[(row * 16) + column]) ?
                (data[(row * 16) + column]) : '.');
        }
        for (; column < 16; column++) {
            fprintf(output, " ");
        }
        fprintf(output, "\n");
    }

    if (options.file && options.direction == C2H) {
        fclose(output);
    }
}

static BYTE* allocate_buffer(size_t size, size_t alignment) {

    if(size == 0) {
        size = 4;
    }

    if (alignment == 0) {
        SYSTEM_INFO sys_info;
        GetSystemInfo(&sys_info);
        alignment = sys_info.dwPageSize;
    }
    verbose_msg("Allocating host-side buffer of size %llu, aligned to %llu bytes\n", size, alignment);
    return (BYTE*)_aligned_malloc(size, alignment);

}

static int get_devices(GUID guid, char* devpath, size_t len_devpath) {

    HDEVINFO device_info = SetupDiGetClassDevs((LPGUID)&guid, NULL, NULL, DIGCF_PRESENT | DIGCF_DEVICEINTERFACE);
    if (device_info == INVALID_HANDLE_VALUE) {
        fprintf(stderr, "GetDevices INVALID_HANDLE_VALUE\n");
        exit(-1);
    }

    SP_DEVICE_INTERFACE_DATA device_interface;
    device_interface.cbSize = sizeof(SP_DEVICE_INTERFACE_DATA);

    // enumerate through devices
    DWORD index;
    for (index = 0; SetupDiEnumDeviceInterfaces(device_info, NULL, &guid, index, &device_interface); ++index) {

        // get required buffer size
        ULONG detailLength = 0;
        if (!SetupDiGetDeviceInterfaceDetail(device_info, &device_interface, NULL, 0, &detailLength, NULL) && GetLastError() != ERROR_INSUFFICIENT_BUFFER) {
            fprintf(stderr, "SetupDiGetDeviceInterfaceDetail - get length failed\n");
            break;
        }

        // allocate space for device interface detail
        PSP_DEVICE_INTERFACE_DETAIL_DATA dev_detail = (PSP_DEVICE_INTERFACE_DETAIL_DATA)HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, detailLength);
        if (!dev_detail) {
            fprintf(stderr, "HeapAlloc failed\n");
            break;
        }
        dev_detail->cbSize = sizeof(SP_DEVICE_INTERFACE_DETAIL_DATA);

        // get device interface detail
        if (!SetupDiGetDeviceInterfaceDetail(device_info, &device_interface, dev_detail, detailLength, NULL, NULL)) {
            fprintf(stderr, "SetupDiGetDeviceInterfaceDetail - get detail failed\n");
            HeapFree(GetProcessHeap(), 0, dev_detail);
            break;
        }

        StringCchCopy(devpath, len_devpath, dev_detail->DevicePath);
        HeapFree(GetProcessHeap(), 0, dev_detail);
    }

    SetupDiDestroyDeviceInfoList(device_info);

    return index;
}

static void usage(const char* const exe_name) {
    printf("%s usage:\n\n", exe_name);
    printf("%s <DEVNODE> <read|write> <ADDR> [OPTIONS] [DATA]\n", exe_name);
    printf("- DEVNODE : One of: control | user | event_* | hc2_* | c2h_*, \n");
    printf("            where the * is a numeric wildcard (0-15 for events, 0-3 for hc2 and c2h).\n");
    printf("- ADDR :    The target offset address of the read/write operation. \n");
    printf("            Can be in hex or decimal.\n");
    printf("- OPTIONS : \n");
    printf("            -a set alignment requirement for host-side buffer (default: PAGE_SIZE)\n");
    printf("            -b open file as binary\n");
    printf("            -f use contents of file as input or write output into file.\n");
    printf("            -l length of data to read/write (default: 4 bytes or whole file if '-f' flag is used)\n");
    printf("            -v more verbose output\n");
    printf("- DATA :    Space separated bytes (big endian) in decimal or hex, \n");
    printf("            e.g.: 17 34 51 68\n");
    printf("            or:   0x11 0x22 0x33 0x44\n");
}

static int parse(int argc, char* argv[]) {

    // xdma_rw <device> <read|write> <address> [OPTIONS] [DATA]
    // 0		1			2			3		4...     n...
    if (argc < 3) {
        usage(argv[0]);
        return 0;
    }

    options.device = _strdup(argv[1]);
    if (strcmp(argv[2], "write") == 0) {
        options.direction = H2C;
    }
    else if (strcmp(argv[2], "read") == 0) {
        options.direction = C2H;
    }
    else {
        usage(argv[0]);
        return 0;
    }
    options.address.QuadPart = strtoull(argv[3], NULL, 0);

    int argidx = 4;
    while ((argidx < argc) && ((argv[argidx][0] == '-') || (argv[argidx][0] == '/'))) {
        /* test for help option */
        switch (argv[argidx][1]) {
            case '?':
            case 'h':
                usage(argv[0]);
                return 0;
            case 'b':
                options.binary = TRUE;
                argidx++;
                break;
            case 'v':
                options.verbose = 1;
                argidx++;
                break;
            case 'f':
                argidx++;
                options.file = _strdup(argv[argidx]);
                argidx++;
                break;
            case 'l':
                argidx++;
                options.size = strtoul(argv[argidx],  NULL, 0);
                argidx++;
                break;
            case 'a':
                argidx++;
                options.alignment = strtoul(argv[argidx],  NULL, 0);
                argidx++;
                break;
            default:
                fprintf(stderr, "Error: unknown option: %c\n\n", argv[argidx][1]);
                usage(argv[0]);
                return 0;
        }

    }

    /* check if arguments left */
    if (argidx != argc) {
        if (options.direction == H2C) {
            options.size = argc - argidx;
            options.data = allocate_buffer(options.size, options.alignment);
            for (int byteidx = 0; argidx < argc; argidx++, byteidx++) {
                options.data[byteidx] = (char)strtoul(argv[argidx], NULL, 0);
            }
        }
        else {
            usage(argv[0]);
            return 0;
        }
    }
    return 1;
}

int __cdecl main(int argc, char* argv[]) {

    int status = -1;

    // get device path from GUID
    char device_base_path[MAX_PATH + 1] = "";
    DWORD num_devices = get_devices(GUID_DEVINTERFACE_XDMA, device_base_path, sizeof(device_base_path));
    verbose_msg("Devices found: %d\n", num_devices);
    if (num_devices < 1) {
        goto Exit;
    }

    // parse command line arguments
    if (!parse(argc, argv)) {
        goto Exit;
    }

    // extend device path to include target device node (xdma_control, xdma_user etc) 
    verbose_msg("Device base path: %s\n", device_base_path);
    char device_path[MAX_PATH + 1] = "";
    strcpy_s(device_path, sizeof device_path, device_base_path);
    strcat_s(device_path, sizeof device_path, "\\");
    strcat_s(device_path, sizeof device_path, options.device);
    verbose_msg("Device node: %s\n", options.device);

    // open device file
    HANDLE device = CreateFile(device_path, GENERIC_READ | GENERIC_WRITE, 0, NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);
    if (device == INVALID_HANDLE_VALUE) {
        fprintf(stderr, "Error opening device, win32 error code: %ld\n", GetLastError());
        goto Exit;
    }

    // set file pointer to offset of target address within PCIe BAR
    if (INVALID_SET_FILE_POINTER == SetFilePointerEx(device, options.address, NULL, FILE_BEGIN)) {
        fprintf(stderr, "Error setting file pointer, win32 error code: %ld\n", GetLastError());
        goto CleanupDevice;
    }

    LARGE_INTEGER start;
    LARGE_INTEGER stop;
    LARGE_INTEGER freq;
    QueryPerformanceFrequency(&freq);

    if (options.direction == C2H) {
        verbose_msg("reading from device...\n");

        // allocate and zero-initialize memory to hold read bytes
        options.data = allocate_buffer(options.size, options.alignment);
        if (!options.data) {
            fprintf(stderr, "Error allocating %ld bytes of memory, error code: %ld\n", options.size, GetLastError());
            goto CleanupDevice;
        }
        memset(options.data, 0, options.size);

        // read from device into allocated buffer
        QueryPerformanceCounter(&start);
        if (!ReadFile(device, options.data, options.size, &options.size, NULL)) {
            fprintf(stderr, "ReadFile from device %s failed with Win32 error code: %ld\n",
                    device_path, GetLastError());
            goto CleanupDevice;
        }
        QueryPerformanceCounter(&stop);

        // print received bytes
        if (options.binary == TRUE) {
            print_bytes_binary(options.data, options.size);
        }
        else {
            print_bytes(options.address.QuadPart, options.data, options.size);
        }

        double time_sec = (unsigned long long)(stop.QuadPart - start.QuadPart) / (double)freq.QuadPart;
        printf("%ld bytes received in %fs\n", options.size, time_sec);
    }
    else {
        verbose_msg("writing to device...\n");

        if (options.file) {
            FILE* inputFile;
            if (fopen_s(&inputFile, options.file, "rb") != 0) {
                fprintf(stderr, "Could not open file <%s>\n", options.file);
                goto CleanupDevice;
            }

            /* determine file size */
            if (options.size == 0) {
                fseek(inputFile, 0, SEEK_END);
                fpos_t fpos;
                fgetpos(inputFile, &fpos);
                fseek(inputFile, 0, SEEK_SET);
                options.size = (DWORD)fpos;
            }

            options.data = allocate_buffer(options.size, options.alignment);
            if (!options.data) {
                fprintf(stderr, "Error allocating %ld bytes of memory, error code: %ld\n", options.size, GetLastError());
                goto CleanupDevice;
            }
            options.size = (DWORD)fread(options.data, 1, options.size, inputFile);

            fclose(inputFile);
            printf("%ld bytes read from file %s\n", options.size, options.file);
        }

        if (options.data == NULL) {
            printf("Error! No valid data given!\n");
            usage(argv[0]);
            goto CleanupDevice;
        }

        QueryPerformanceCounter(&start);
        if (!WriteFile(device, options.data, options.size, &options.size, NULL)) {
            fprintf(stderr, "WriteFile to device %s failed with Win32 error code: %d\n",
                    device_path, GetLastError());
            goto CleanupDevice;
        }
        QueryPerformanceCounter(&stop);

        // print written bytes#
        if (options.verbose) {
            print_bytes(options.address.QuadPart, options.data, options.size);
        }

        double time_sec = (unsigned long long)(stop.QuadPart - start.QuadPart) / (double)freq.QuadPart;
        printf("%ld bytes written in %fs\n", options.size, time_sec);
    }

    status = 0; // all functions ran successfully

CleanupDevice:
    CloseHandle(device);
Exit:
    if (options.device)	free(options.device);
    if (options.file)	free(options.file);
    if (options.data)	_aligned_free(options.data);
    return status;
}


