
#include <cassert>
#include <iostream>
#include <string>
#include <system_error>
#include <vector>

#include <Windows.h>
#include <SetupAPI.h>
#include <INITGUID.H>

#include "xdma_public.h"

#pragma comment(lib, "setupapi.lib")

using std::uint32_t;
using std::string;
using std::vector;
using std::runtime_error;
using std::cout;

// ============= Static Utility Functions =====================================

inline static uint32_t bit(uint32_t n) {
    return (1 << n);
}

inline static bool is_bit_set(uint32_t x, uint32_t n) {
    return (x & bit(n)) == bit(n);
}

inline static uint32_t create_mask(uint32_t n, uint32_t l) {
    return ((1 << l) - 1) << n;
}

inline static uint32_t get_bits(uint32_t x, uint32_t n, uint32_t l) {
    return ((x & create_mask(n, l)) >> n);
}

enum module {
    h2c_block = 0,
    c2h_block,
    irq_block,
    config_block,
    h2c_sgdma_block,
    c2h_sgdma_block,
    sgdma_common_block,
};

static string to_string(module mod) {
    switch (mod) {
    case h2c_block:
        return "H2C";
    case c2h_block:
        return "C2H";
    case irq_block:
        return "IRQ";
    case config_block:
        return "Config";
    case h2c_sgdma_block:
        return "H2C SGDMA";
    case c2h_sgdma_block:
        return "C2H SGDMA";
    case sgdma_common_block:
        return "SGDMA Common";
    default:
        return "unknown";
    }
}

static module id_to_module(uint32_t id_reg_value) {
    return static_cast<module>(get_bits(id_reg_value, 16, 4));
}

static string version_to_string(unsigned version) {
    switch (get_bits(version, 0, 4)) {
    case 1:
        return "2015.3/2015.4";
    case 2:
        return "2016.1";
    case 3:
        return "2016.2";
    case 4:
        return "2016.3";
    case 5:
        return "2016.4";
    case 6:
        return "2017.1";
    default:
        return "unknown";
    }
}

static vector<string> get_device_paths(GUID guid) {

    auto device_info = SetupDiGetClassDevs((LPGUID)&guid, NULL, NULL, DIGCF_PRESENT | DIGCF_DEVICEINTERFACE);
    if (device_info == INVALID_HANDLE_VALUE) {
        throw runtime_error("GetDevices INVALID_HANDLE_VALUE");
    }

    SP_DEVICE_INTERFACE_DATA device_interface = { 0 };
    device_interface.cbSize = sizeof(SP_DEVICE_INTERFACE_DATA);

    // enumerate through devices

    vector<string> device_paths;

    for (unsigned index = 0;
         SetupDiEnumDeviceInterfaces(device_info, NULL, &guid, index, &device_interface);
         ++index) {

        // get required buffer size
        unsigned long detailLength = 0;
        if (!SetupDiGetDeviceInterfaceDetail(device_info, &device_interface, NULL, 0, &detailLength, NULL) && GetLastError() != ERROR_INSUFFICIENT_BUFFER) {
            throw runtime_error("SetupDiGetDeviceInterfaceDetail - get length failed");
        }

        // allocate space for device interface detail
        auto dev_detail = reinterpret_cast<PSP_DEVICE_INTERFACE_DETAIL_DATA>(new char[detailLength]);
        dev_detail->cbSize = sizeof(SP_DEVICE_INTERFACE_DETAIL_DATA);

        // get device interface detail
        if (!SetupDiGetDeviceInterfaceDetail(device_info, &device_interface, dev_detail, detailLength, NULL, NULL)) {
            delete[] dev_detail;
            throw runtime_error("SetupDiGetDeviceInterfaceDetail - get detail failed");
        }
        device_paths.emplace_back(dev_detail->DevicePath);
        delete[] dev_detail;
    }

    SetupDiDestroyDeviceInfoList(device_info);

    return device_paths;
}

// ============ XDMA device ===================================================

class xdma_device {
public:
    xdma_device(const string& device_path);
    ~xdma_device();
    void print_details();
private:
    HANDLE control = NULL;
    uint32_t read_register(long addr);
    void read_block(long addr, size_t size, void* buffer);
    void print_block(long offset);
    void print_channel_module(long offset);
    void print_irq_module(long module_base);
    void print_config_module(long offset);
    void print_sgdma_module(long offset);
    void print_sgdma_common_module(long offset);

    uint32_t regs[0xD4 / sizeof(uint32_t)];

    inline uint32_t reg_at (size_t addr) {
        return (regs[addr / sizeof(uint32_t)]);
    };
};

xdma_device::xdma_device(const string& device_path) {
    using namespace std::string_literals;
    string minor_dev_path = device_path + "\\control"s;

    control = CreateFile(minor_dev_path.c_str(), GENERIC_READ | GENERIC_WRITE, 0, NULL,
                         OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);
    if (control == INVALID_HANDLE_VALUE) {
        throw runtime_error("CreateFile failed: " + std::to_string(GetLastError()));
    }
}

xdma_device::~xdma_device() {
    CloseHandle(control);
}

void xdma_device::print_channel_module(long module_base) {
    cout << std::boolalpha << std::hex;

    for (unsigned i = 0; i < 4; ++i) {

        const long base = module_base + i * 0x100;
        read_block(base, 0xD4, regs);

        if (reg_at(0x0) & 0x1cf00000) {
            cout << "Channel ID:\t\t" << get_bits(reg_at(0x0), 8, 4) << '\n';
            cout << " Version:\t\t" << version_to_string(reg_at(0x0)) << '\n';
            cout << " Streaming:\t\t" << is_bit_set(reg_at(0x0), 15) << '\n';
            cout << " Running:\t\t" << is_bit_set(reg_at(0x4), 0) << '\n';
            cout << " IE descr stop:\t\t" << is_bit_set(reg_at(0x4), 1) << '\n';
            cout << " IE descr complete:\t" << is_bit_set(reg_at(0x4), 2) << '\n';
            cout << " IE align mismatch:\t" << is_bit_set(reg_at(0x4), 3) << '\n';
            cout << " IE magic stopped:\t" << is_bit_set(reg_at(0x4), 4) << '\n';
            cout << " IE invalid length:\t" << is_bit_set(reg_at(0x4), 5) << '\n';
            cout << " IE idle stopped:\t" << is_bit_set(reg_at(0x4), 6) << '\n';
            cout << " IE read error:\t\t" << get_bits(reg_at(0x4), 9, 5) << '\n';
            cout << " IE write error:\t" << get_bits(reg_at(0x4), 14, 5) << '\n';
            cout << " IE descr error:\t" << get_bits(reg_at(0x4), 19, 5) << '\n';
            cout << " Non incremental mode:\t" << is_bit_set(reg_at(0x4), 25) << '\n';
            cout << " Pollmode wb:\t\t" << is_bit_set(reg_at(0x4), 26) << '\n';
            cout << " AXI-ST wb disabled:\t" << is_bit_set(reg_at(0x4), 27) << '\n';
            cout << " Busy:\t\t\t" << is_bit_set(reg_at(0x40), 0) << '\n';
            cout << " Descriptor stopped:\t" << is_bit_set(reg_at(0x40), 1) << '\n';
            cout << " Descriptor completed:\t" << is_bit_set(reg_at(0x40), 2) << '\n';
            cout << " Alignment mismatch:\t" << is_bit_set(reg_at(0x40), 3) << '\n';
            cout << " Magic stopped:\t\t" << is_bit_set(reg_at(0x40), 4) << '\n';
            cout << " Invalid length:\t" << is_bit_set(reg_at(0x40), 5) << '\n';
            cout << " Idle stopped:\t\t" << is_bit_set(reg_at(0x40), 6) << '\n';
            cout << " Read error:\t\t0x" << get_bits(reg_at(0x40), 9, 5) << '\n';
            cout << " Write error:\t\t0x" << get_bits(reg_at(0x40), 14, 5) << '\n';
            cout << " Descriptor error:\t0x" << get_bits(reg_at(0x40), 19, 5) << '\n';
            cout << " Completed Descriptors:\t" << std::dec << reg_at(0x48) << '\n';
            cout << " Addr Alignment:\t" << get_bits(reg_at(0x4C), 16, 7) << " bytes\n";
            cout << " Len Granularity:\t" << get_bits(reg_at(0x4C), 8, 7) << " bytes\n";
            cout << " Addr bits:\t\t" << get_bits(reg_at(0x4C), 0, 7) << " bits\n";
            cout << " Poll wb addr lo:\t0x" << std::hex << reg_at(0x88) << '\n';
            cout << " Poll wb addr hi:\t0x" << reg_at(0x8C) << '\n';
            cout << " IM Descr stopped:\t" << is_bit_set(reg_at(0x90), 1) << '\n';
            cout << " IM Descr completed:\t" << is_bit_set(reg_at(0x90), 2) << '\n';
            cout << " IM Alignment mismatch:\t" << is_bit_set(reg_at(0x90), 3) << '\n';
            cout << " IM Magic stopped:\t" << is_bit_set(reg_at(0x90), 4) << '\n';
            cout << " IM Invalid length:\t" << is_bit_set(reg_at(0x90), 5) << '\n';
            cout << " IM Idle stopped:\t" << is_bit_set(reg_at(0x90), 6) << '\n';
            cout << " IM Read error:\t\t0x" << get_bits(reg_at(0x90), 9, 5) << '\n';
            cout << " IM Write error:\t0x" << get_bits(reg_at(0x90), 14, 5) << '\n';
            cout << " IM Descriptor error:\t0x" << get_bits(reg_at(0x90), 19, 5) << '\n';
            cout << '\n';
        }
    }
}

void xdma_device::print_irq_module(long base) {

    read_block(base, 0xA8, regs);

    cout << std::boolalpha;
    cout << " Version:\t\t" << version_to_string(reg_at(0x0)) << '\n';
    cout << " User IRQ en mask:\t0x" << std::hex << reg_at(0x4) << '\n';
    cout << " Chan IRQ en mask:\t0x" << reg_at(0x10) << '\n';
    cout << " User IRQ:\t\t0x" << reg_at(0x40) << '\n';
    cout << " Chan IRQ:\t\t0x" << reg_at(0x44) << '\n';
    cout << " User IRQ pending:\t0x" << reg_at(0x48) << '\n';
    cout << " Chan IRQ pending:\t0x" << reg_at(0x4c) << '\n';

    const unsigned regSize = 4; // number of vector indexes stored in each 32bit register
    cout << std::dec;
    for (unsigned j = 0; j < 4; ++j) { // 4 registers each containing 4 vector indexes
        uint32_t reg_val = reg_at(0x80 + (regSize * j));
        for (unsigned i = 0; i < regSize; ++i) {
            cout << " User IRQ Vector " << (i + regSize * j) << ":\t" << get_bits(reg_val, i * 8, 5) << '\n';
        }
    }

    for (unsigned j = 0; j < 2; ++j) { // 2 registers each containing 4 vector indexes
        uint32_t reg_val = reg_at(0xA0 + (regSize * j));
        for (unsigned i = 0; i < regSize; ++i) {
            cout << " Chan IRQ Vector " << (i + regSize * j) << ":\t" << get_bits(reg_val, i * 8, 5) << '\n';
        }
    }
}

void xdma_device::print_config_module(long base) {

    read_block(base, 0x64, regs);

    cout << std::dec << std::boolalpha;
    cout << " Version:\t\t" << version_to_string(reg_at(0x0)) << '\n';
    cout << " PCIe bus:\t\t" << get_bits(reg_at(0x4), 8, 4) << '\n';
    cout << " PCIe device:\t\t" << get_bits(reg_at(0x4), 3, 5) << '\n';
    cout << " PCIe function:\t\t" << get_bits(reg_at(0x4), 0, 3) << '\n';
    cout << " PCIE MPS:\t\t" << (1 << (7 + reg_at(0x8))) << " bytes\n";
    cout << " PCIE MRRS:\t\t" << (1 << (7 + reg_at(0xC))) << " bytes\n";
    cout << " System ID:\t\t0x" << std::hex << reg_at(0x10) << '\n';
    cout << " MSI support:\t\t" << is_bit_set(reg_at(0x14), 0) << '\n';
    cout << " MSI-X support:\t\t" << is_bit_set(reg_at(0x14), 1) << '\n';
    cout << " PCIE Data Width:\t" << std::dec << (1 << (6 + reg_at(0x18))) << " bits\n";
    cout << " PCIE Control:\t\t0x" << std::hex << reg_at(0x1C) << "\n";
    cout << " User PRG MPS:\t\t" << std::dec << (1 << (7 + get_bits(reg_at(0x40), 0, 3))) << " bytes\n";
    cout << " User EFF MPS:\t\t" << std::dec << (1 << (7 + get_bits(reg_at(0x40), 4, 3))) << " bytes\n";
    cout << " User PRG MRRS:\t\t" << std::dec << (1 << (7 + get_bits(reg_at(0x44), 0, 3))) << " bytes\n";
    cout << " User EFF MRRS:\t\t" << std::dec << (1 << (7 + get_bits(reg_at(0x44), 4, 3))) << " bytes\n";
    cout << " Write Flush Timeout:\t0x" << std::hex << reg_at(0x60) << "\n";
}

void xdma_device::print_sgdma_module(long module_base) {
    cout << std::boolalpha << std::hex;
    for (unsigned i = 0; i < 4; ++i) {
        long base = module_base + i * 0x100;
        read_block(base, 0x90, regs);

        if (reg_at(0x0) & 0x1cf00000) {
            cout << "Channel ID:\t\t" << get_bits(reg_at(0x0), 8, 4) << '\n';
            cout << " Version:\t\t" << version_to_string(reg_at(0x0)) << '\n';
            cout << " Streaming:\t\t" << is_bit_set(reg_at(0x0), 15) << '\n';
            cout << " Descr addr lo:\t\t0x" << std::hex << reg_at(0x80) << '\n';
            cout << " Descr addr hi:\t\t0x" << reg_at(0x84) << '\n';
            cout << " Adj Descriptors:\t" << std::dec << reg_at(0x88) << '\n';
            cout << " Descr credits:\t\t" << reg_at(0x8C) << '\n';
        }
    }
}

void xdma_device::print_sgdma_common_module(long base) {

    read_block(base, 0x24, regs);

    cout << std::hex << std::boolalpha;
    cout << " Version:\t\t" << version_to_string(reg_at(0x0)) << '\n';
    cout << " Halt H2C descr fetch:\t0x" << get_bits(reg_at(0x10), 0, 4) << '\n';
    cout << " Halt C2H descr fetch:\t0x" << get_bits(reg_at(0x10), 16, 4) << '\n';
    cout << " H2C descr credit:\t0x" << get_bits(reg_at(0x20), 0, 4) << '\n';
    cout << " C2H descr credit:\t0x" << get_bits(reg_at(0x20), 16, 4) << '\n';
}

void xdma_device::print_block(long base) {
    uint32_t id = read_register(base);
    auto module_type = id_to_module(id);
    cout << to_string(module_type) << " Module\n";

    switch (module_type) {
    case h2c_block:
    case c2h_block:
        print_channel_module(base);
        break;
    case irq_block:
        print_irq_module(base);
        break;
    case config_block:
        print_config_module(base);
        break;
    case h2c_sgdma_block:
    case c2h_sgdma_block:
        print_sgdma_module(base);
        break;
    case sgdma_common_block:
        print_sgdma_common_module(base);
        break;
    default:
        break;
    }

    cout << '\n';
}

void xdma_device::print_details() {
    cout << std::hex;

    for (long i = 0; i < 7; ++i) {
        print_block(i * 0x1000);
    }
}

uint32_t xdma_device::read_register(long addr) {
    int value = -1;
    size_t num_bytes_read;
    if (INVALID_SET_FILE_POINTER == SetFilePointer(control, addr, NULL, FILE_BEGIN)) {
        throw runtime_error("SetFilePointer failed: " + std::to_string(GetLastError()));
    }
    if (!ReadFile(control, (LPVOID)&value, 4, (LPDWORD)&num_bytes_read, NULL)) {
        throw runtime_error("ReadFile failed:" + std::to_string(GetLastError()));
    }
    return value;
}

void xdma_device::read_block(long addr, size_t size, void* buffer) {
    size_t num_bytes_read;
    if (INVALID_SET_FILE_POINTER == SetFilePointer(control, addr, NULL, FILE_BEGIN)) {
        throw runtime_error("SetFilePointer failed: " + std::to_string(GetLastError()));
    }
    if (!ReadFile(control, buffer, (DWORD)size, (LPDWORD)&num_bytes_read, NULL)) {
        throw runtime_error("ReadFile failed:" + std::to_string(GetLastError()));
    }
}

// ================= main =====================================================

int __cdecl main() {
    auto device_paths = get_device_paths(GUID_DEVINTERFACE_XDMA);
    cout << "Found " << device_paths.size() << " XDMA devices\n";
    for (const auto& dev_path : device_paths) {
        xdma_device dev(dev_path);
        cout << "device path:\t" << dev_path << "\n";
        dev.print_details();
    }
}