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

// ============= windows device handle  =======================================
struct device_file {
    HANDLE h;
    device_file(const std::string& path, DWORD accessFlags);
    ~device_file();

    void seek(long device_offset);
    size_t write(void* buffer, size_t size);
    size_t read(void* buffer, size_t size);
};

device_file::device_file(const std::string& path, DWORD accessFlags) {
    h = CreateFile(path.c_str(), accessFlags, 0, NULL, OPEN_EXISTING,
        FILE_ATTRIBUTE_NORMAL, NULL);
}

device_file::~device_file() {
    CloseHandle(h);
}

void device_file::seek(long device_offset) {
    if (INVALID_SET_FILE_POINTER == SetFilePointer(h, device_offset, NULL, FILE_BEGIN)) {
        throw std::runtime_error("SetFilePointer failed: " + std::to_string(GetLastError()));
    }
}

size_t device_file::write(void* buffer, size_t size) {
    unsigned long num_bytes_written;
    if (!WriteFile(h, buffer, (DWORD)size, &num_bytes_written, NULL)) {
        throw std::runtime_error("Failed to write to device! " + std::to_string(GetLastError()));
    }

    return num_bytes_written;
}

size_t device_file::read(void* buffer, size_t size) {
    unsigned long num_bytes_read;
    if (!ReadFile(h, buffer, (DWORD)size, &num_bytes_read, NULL)) {
        throw std::runtime_error("Failed to read from stream! " + std::to_string(GetLastError()));
    }
    return num_bytes_read;
}

// ============ XDMA device ===================================================

class xdma_device {
public:
    xdma_device(const std::string& device_path);
    bool is_axi_st();
private:
    device_file control;
    uint32_t read_register(long addr);

};

xdma_device::xdma_device(const std::string& device_path) :
    control(device_path + "\\control", GENERIC_READ | GENERIC_WRITE)  {
}

uint32_t xdma_device::read_register(long addr) {
    uint32_t value = 0;
    control.seek(addr);
    size_t num_bytes_read = control.read(&value, sizeof(value));
    if (num_bytes_read <= 0) {
        throw std::runtime_error("Read returned zero bytes");
    }
    return value;
}

bool xdma_device::is_axi_st() {
    return is_bit_set(read_register(0x0), 15);
}

// ======================= main ===============================================

static constexpr size_t dma_block_size = 0x1000; // 4kB
static constexpr size_t array_size = dma_block_size / sizeof(uint32_t);

void do_transfers_in_parallel(unsigned index, device_file& h2c, device_file& c2h, 
                           std::array<uint32_t, array_size>& h2c_data, 
                           std::array<uint32_t, array_size>& c2h_data) {

    std::cout << "    Initiating H2C_" << index << " transfer of " << h2c_data.size() * sizeof(uint32_t) << " bytes...\n";
    std::thread read_thread(&device_file::write, &h2c, (void*)h2c_data.data(), 
                            h2c_data.size() * sizeof(uint32_t));
    std::cout << "    Initiating C2H_" << index << " transfer of " << c2h_data.size() * sizeof(uint32_t) << " bytes...\n";
    std::thread write_thread(&device_file::read, &c2h, (void*)c2h_data.data(), 
                             c2h_data.size() * sizeof(uint32_t));

    write_thread.join();
    read_thread.join();
}

void do_transfers_in_sequence(unsigned index, device_file& h2c, device_file& c2h,
                              std::array<uint32_t, array_size>& h2c_data,
                              std::array<uint32_t, array_size>& c2h_data) {

    std::cout << "    Initiating H2C_" << index << " transfer of " << h2c_data.size() * sizeof(uint32_t) << " bytes...\n";
    h2c.write(h2c_data.data(), h2c_data.size() * sizeof(uint32_t));
    std::cout << "    Initiating C2H_" << index << " transfer of " << c2h_data.size() * sizeof(uint32_t) << " bytes...\n";
    c2h.read(c2h_data.data(), c2h_data.size() * sizeof(uint32_t));
}

int __cdecl main() {

    alignas(32) std::array<uint32_t, array_size> write_data;
    alignas(32) std::array<uint32_t, array_size> read_data = { { 0 } };
    std::iota(std::begin(write_data), std::end(write_data), 0);
    
    try {
        const auto device_paths = get_device_paths(GUID_DEVINTERFACE_XDMA);
        if (device_paths.empty()) {
            throw std::runtime_error("Failed to find XDMA device!");
        }
        xdma_device xdma(device_paths.front());

        if (xdma.is_axi_st()) { // AXI-ST streaming interface
            std::cout << "Detected XDMA AXI-ST design.\n";
        } else { // AXI-MM Memory Mapped interface
            std::cout << "Detected XDMA AXI-MM design.\n";
        }

        unsigned channels_found = 0;
        for (unsigned i = 0; i < 4; i++) {
            device_file h2c(device_paths[0] + "\\h2c_" + std::to_string(i), GENERIC_WRITE);
            device_file c2h(device_paths[0] + "\\c2h_" + std::to_string(i), GENERIC_READ);

            if (h2c.h == INVALID_HANDLE_VALUE || c2h.h == INVALID_HANDLE_VALUE) {
                std::cout << "Could not find h2c_" << i << " and/or c2h_" << i << "\n";
                continue;
            } else {
                std::cout << "Found h2c_" << i << " and c2h_" << i << ":\n";
            }

            if (xdma.is_axi_st()) { // AXI-ST streaming interface
                do_transfers_in_parallel(i, h2c, c2h, write_data, read_data);
            } else { // AXI-MM Memory Mapped interface
                do_transfers_in_sequence(i, h2c, c2h, write_data, read_data);
            }

            std::cout << "    Transfers completed. Comparing data... ";
            if (write_data != read_data) {
                throw std::runtime_error("\nFailure! Transferred data do not match!");
            } 
            std::cout << "OK!\n";
            channels_found++;
            read_data.fill(0);
        }
        if (channels_found == 0) {
            throw std::runtime_error("Failure! No DMA channels found!");
        }

    } catch (const std::exception& e) {
        std::cout << e.what();
        return -1;
    }

    std::cout << "Success!\n";
}
