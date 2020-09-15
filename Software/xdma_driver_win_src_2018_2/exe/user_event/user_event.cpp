#include <iostream>
#include <string>
#include <thread>
#include <vector>
#include <Windows.h>
#include <SetupAPI.h>
#include <INITGUID.H>

#include "xdma_public.h"

#pragma comment(lib, "setupapi.lib")

std::string get_windows_error_msg() {

    char msg_buffer[256];
    FormatMessageA(FORMAT_MESSAGE_FROM_SYSTEM, NULL, GetLastError(), 
                   MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT), (LPSTR)&msg_buffer, 256, NULL);
    return{ msg_buffer, 256 };
}

class device_file {
public:
    device_file::device_file() : h(INVALID_HANDLE_VALUE) {};

    device_file(const std::string& path, DWORD accessFlags) {
        h = CreateFile(path.c_str(), accessFlags, 0, NULL, OPEN_EXISTING,
                       FILE_ATTRIBUTE_NORMAL, NULL);
        if (h == INVALID_HANDLE_VALUE) {
            throw std::runtime_error("Opening device file failed: " + get_windows_error_msg());
        }
    }

    ~device_file() {
        if (h != INVALID_HANDLE_VALUE) {
            CloseHandle(h);
        }
    }

    template <typename T>
    T read(long address) {
        if (INVALID_SET_FILE_POINTER == SetFilePointer(h, address, NULL, FILE_BEGIN)) {
            throw std::runtime_error("SetFilePointer failed: " + get_windows_error_msg());
        }
        T buffer;
        unsigned long num_bytes_read;
        if (!ReadFile(h, &buffer, sizeof(T), &num_bytes_read, NULL)) {
            throw std::runtime_error("Failed to read from stream! " + get_windows_error_msg());
        } else if (num_bytes_read != sizeof(T)) {
            throw std::runtime_error("Failed to read all bytes!");
        }
        return buffer;
    }

private:
    HANDLE h;
};

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
        unsigned long detail_length = 0;
        if (!SetupDiGetDeviceInterfaceDetail(device_info, &device_interface, NULL, 0, &detail_length, NULL) && GetLastError() != ERROR_INSUFFICIENT_BUFFER) {
            throw std::runtime_error("SetupDiGetDeviceInterfaceDetail - get length failed");
        }

        // allocate space for device interface detail
        auto dev_detail = reinterpret_cast<PSP_DEVICE_INTERFACE_DETAIL_DATA>(new char[detail_length]);
        dev_detail->cbSize = sizeof(SP_DEVICE_INTERFACE_DETAIL_DATA);

        // get device interface detail
        if (!SetupDiGetDeviceInterfaceDetail(device_info, &device_interface, dev_detail, detail_length, NULL, NULL)) {
            delete[] dev_detail;
            throw std::runtime_error("SetupDiGetDeviceInterfaceDetail - get detail failed");
        }
        device_paths.emplace_back(dev_detail->DevicePath);
        delete[] dev_detail;
    }

    SetupDiDestroyDeviceInfoList(device_info);

    return device_paths;
}

int __cdecl main(int, char* argv[]) {

    try {
        std::cout << argv[0] << "\n";
        std::cout << "This application opens all user event device files (event_0 to event_15) and waits on an event to be triggered.\n";
        std::cout << "When an event is triggered, a corresponding message is printed to the terminal.\n";
        std::cout << "This application loops indefinitely. To exit press CTRL-C.\n";

        const auto dev_paths = get_device_paths(GUID_DEVINTERFACE_XDMA);
        if (dev_paths.empty()) {
            throw std::runtime_error("No XDMA device driver installed!");
        }


        auto event_loop = [&](unsigned event_id) {
            std::cout << ("Waiting on event_" + std::to_string(event_id) + "...\n");
            while (true) {

                    const auto event_dev_path = dev_paths[0] + "\\event_" + std::to_string(event_id);
                    device_file user_event(event_dev_path, GENERIC_READ);
                    auto val = user_event.read<uint8_t>(0); // this blocks in driver until event is triggered
                    if (val == 1) {
                        std::cout << ("event_" + std::to_string(event_id) + " received!\n");
                    } // else timed out, so try again
            }
        };

        std::thread event_threads[] = {
            std::thread(event_loop, 0),
            std::thread(event_loop, 1),
            std::thread(event_loop, 2),
            std::thread(event_loop, 3),
            std::thread(event_loop, 4),
            std::thread(event_loop, 5),
            std::thread(event_loop, 6),
            std::thread(event_loop, 7),
            std::thread(event_loop, 8),
            std::thread(event_loop, 9),
            std::thread(event_loop, 10),
            std::thread(event_loop, 11),
            std::thread(event_loop, 12),
            std::thread(event_loop, 13),
            std::thread(event_loop, 14),
            std::thread(event_loop, 15),
        };

        for (auto& t : event_threads) {
            t.join();
        }

    } catch (const std::exception& e) {
        std::cout << "Error: " << e.what() << '\n';
        return -1;
    }

}

