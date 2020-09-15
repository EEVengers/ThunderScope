#include <array>
#include <algorithm>
#include <iostream>
#include <iomanip>
#include <numeric>
#include <string>
#include <system_error>
#include <thread>
#include <vector>

#define NOMINMAX
#include <Windows.h>
#include <SetupAPI.h>
#include <INITGUID.H>

#include "xdma_public.h"

#pragma comment(lib, "setupapi.lib")

// ============= Static Utility Functions =====================================

static std::vector<std::string> get_device_paths(GUID guid) {

    auto device_info = SetupDiGetClassDevs((LPGUID)&guid, NULL, NULL, DIGCF_PRESENT | DIGCF_DEVICEINTERFACE);
    if (device_info == INVALID_HANDLE_VALUE) {
        throw std::runtime_error("GetDevices INVALID_HANDLE_VALUE");
    }

    SP_DEVICE_INTERFACE_DATA device_interface = { 0 };
    device_interface.cbSize = sizeof(SP_DEVICE_INTERFACE_DATA);

    // enumerate through devices

    std::vector<std::string> device_paths;

    for (unsigned index = 0;
        SetupDiEnumDeviceInterfaces(device_info, NULL, &guid, index, &device_interface);
        ++index) {

        // get required buffer size
        unsigned long detailLength = 0;
        if (!SetupDiGetDeviceInterfaceDetail(device_info, &device_interface, NULL, 0, &detailLength, NULL) && GetLastError() != ERROR_INSUFFICIENT_BUFFER) {
            throw std::runtime_error("SetupDiGetDeviceInterfaceDetail - get length failed");
        }

        // allocate space for device interface detail
        auto dev_detail = reinterpret_cast<PSP_DEVICE_INTERFACE_DETAIL_DATA>(new char[detailLength]);
        dev_detail->cbSize = sizeof(SP_DEVICE_INTERFACE_DETAIL_DATA);

        // get device interface detail
        if (!SetupDiGetDeviceInterfaceDetail(device_info, &device_interface, dev_detail, detailLength, NULL, NULL)) {
            delete[] dev_detail;
            throw std::runtime_error("SetupDiGetDeviceInterfaceDetail - get detail failed");
        }
        device_paths.emplace_back(dev_detail->DevicePath);
        delete[] dev_detail;
    }

    SetupDiDestroyDeviceInfoList(device_info);

    return device_paths;
}

inline static uint32_t bit(uint32_t n) {
    return (1 << n);
}

inline static bool is_bit_set(uint32_t x, uint32_t n) {
    return (x & bit(n)) == bit(n);
}

static int is_printable(char c) {
    // anything below ASCII code 32 is non-printing, 127 is DELETE
    if (c < 32 || c == 127) {
        return FALSE;
    }
    return TRUE;
}

// formatted output
static void print_bytes(size_t addr, BYTE* data, size_t length) {
    std::cout << std::hex << std::setfill('0');
    for (unsigned row = 0; row < (length / 16 + ((length % 16) ? 1 : 0));
        row++) {

        // Print address
        std::cout << "0x" << std::setw(4) << (addr + row * 16) << ":  ";

        // Print bytes
        unsigned column;
        for (column = 0; column < std::min(16ull, length - (row * 16ull));
            column++) {
            std::cout << std::setw(2) << unsigned(data[(row * 16) + column]) << " ";
        }
        for (; column < 16; column++) {
            std::cout << "   ";
        }

        // Print gutter
        std::cout << "    ";

        // Print characters
        for (column = 0; column < std::min(16ull, length - (row * 16ull));
            column++) {
            std::cout << (is_printable(data[(row * 16) + column]) ? char(data[(row * 16) + column]) : '.');
        }
        for (; column < 16; column++) {
            std::cout << " ";
        }
        std::cout << "\n";
    }
}

// ============= windows device handle  =======================================
struct device_file {
    HANDLE h;
    device_file(const std::string& path, DWORD accessFlags);
    ~device_file();
};

device_file::device_file(const std::string& path, DWORD accessFlags) {
    h = CreateFile(path.c_str(), accessFlags, 0, NULL, OPEN_EXISTING,
        FILE_ATTRIBUTE_NORMAL, NULL);
    if (h == INVALID_HANDLE_VALUE) {
        throw std::runtime_error("CreateFile control failed: " + std::to_string(GetLastError()));
    }
}

device_file::~device_file() {
    CloseHandle(h);
}

// ============ XDMA device ===================================================

class xdma_device {
public:
    xdma_device(const std::string& device_path);

    // transfer data from Host PC to FPGA Card using SGDMA engine
    size_t write_to_engine(void* buffer, size_t size);

    // transfer data from FPGA Card to Host PC using SGDMA engine
    size_t read_from_engine(void* buffer, size_t size);
private:
    device_file control;
    device_file h2c0;
    device_file c2h0;

    uint32_t read_register(long addr);
};

xdma_device::xdma_device(const std::string& device_path) :
    control(device_path + "\\control", GENERIC_READ | GENERIC_WRITE),
    h2c0(device_path + "\\h2c_0", GENERIC_WRITE),
    c2h0(device_path + "\\c2h_0", GENERIC_READ) {

    std::cout << std::hex << "h2c_0=0x" << read_register(0x0) << ", c2h_0=0x" << read_register(0x1000) << "\n";

    if (!is_bit_set(read_register(0x0), 15) || !is_bit_set(read_register(0x1000), 15)) {
        throw std::runtime_error("XDMA engines h2c_0 and/or c2h_0 are not streaming engines!");
    }
}

uint32_t xdma_device::read_register(long addr) {
    uint32_t value = 0;
    size_t num_bytes_read;
    if (INVALID_SET_FILE_POINTER == SetFilePointer(control.h, addr, NULL, FILE_BEGIN)) {
        throw std::runtime_error("SetFilePointer failed: " + std::to_string(GetLastError()));
    }
    if (!ReadFile(control.h, (LPVOID)&value, 4, (LPDWORD)&num_bytes_read, NULL)) {
        throw std::runtime_error("ReadFile failed:" + std::to_string(GetLastError()));
    }
    return value;
}

size_t xdma_device::write_to_engine(void* buffer, size_t size) {
    unsigned long num_bytes_written;
    if (!WriteFile(h2c0.h, buffer, (DWORD)size, &num_bytes_written, NULL)) {
        throw std::runtime_error("Failed to write to stream! " + std::to_string(GetLastError()));
    }

    return num_bytes_written;
}

size_t xdma_device::read_from_engine(void* buffer, size_t size) {
    unsigned long num_bytes_read;
    if (!ReadFile(c2h0.h, buffer, (DWORD)size, &num_bytes_read, NULL)) {
        throw std::runtime_error("Failed to read from stream! " + std::to_string(GetLastError()));
    }
    return num_bytes_read;
}

// ======================= main ===============================================

static bool err = false;

void read(xdma_device& dev, void* buffer, const size_t size, const size_t block_size = 4096) {

    size_t bytes_remaining = size;
    try {
        while (bytes_remaining > 0) {
            const size_t offset = size - bytes_remaining;
            const size_t bytes_to_read = bytes_remaining < block_size ? bytes_remaining : block_size;
            bytes_remaining -= dev.read_from_engine((char*)buffer + offset, bytes_to_read);
        }
    } catch (const std::exception& e) {
        err = true;
        std::cout << e.what();
    }
    std::cout << "finished reading " << size - bytes_remaining << " bytes" << std::endl;
}

void write(xdma_device& dev, void* buffer, const size_t size, const size_t chunks = 1) {

    const size_t chunk_size = size / chunks;

    if (size % chunks != 0) {
        throw std::runtime_error("size not evenly divisible by chunks!");
    }

    size_t bytes_written = 0;
    try {
        for (unsigned i = 0; i < chunks; ++i) {
            bytes_written += dev.write_to_engine((char*)buffer + (i * chunk_size), chunk_size);

        }
    } catch (const std::exception& e) {
        err = true;
        std::cout << e.what();
    }
    std::cout << "finished writing " << bytes_written << " bytes" << std::endl;
}

int __cdecl main() {

    constexpr size_t num_dma_blocks = 40;
    constexpr size_t dma_block_size = 0x1000; // 4kB
    constexpr size_t num_uint32_per_block = dma_block_size / sizeof(uint32_t);
    constexpr size_t array_size = num_uint32_per_block * num_dma_blocks;

    alignas(128) std::array<uint32_t, array_size> write_data;
    alignas(128) std::array<uint32_t, array_size> read_data = { { 0 } };

    std::iota(std::begin(write_data), std::end(write_data), 0);

    try {
        const auto device_paths = get_device_paths(GUID_DEVINTERFACE_XDMA);
        if (device_paths.empty()) {
            throw std::runtime_error("Failed to find XDMA device!");
        }

        xdma_device dev(device_paths[0]);

        std::thread read_thread(read, std::ref(dev),
            (void*)read_data.data(), read_data.size() * sizeof(uint32_t), dma_block_size*32);
        std::thread write_thread(write, std::ref(dev),
            (void*)write_data.data(), write_data.size() * sizeof(uint32_t), 40);

        write_thread.join();
        read_thread.join();

        if (!err) {
            print_bytes(0, (BYTE*)read_data.data(), read_data.size() * sizeof(uint32_t));
        }

    } catch (const std::exception& e) {
        std::cout << e.what();
    }
}
