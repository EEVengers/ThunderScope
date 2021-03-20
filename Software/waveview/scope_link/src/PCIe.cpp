

#include "PCIe.hpp"
#include "logger.hpp"


/*
* get_devices -- Ripped from Xilinx examples
* returns the number of XDMA devices
*/
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
#ifdef WIN32 //So i dont know how to change this is work on unix, since HeapAlloc is windows specific, so since Unix does not work with PCIe yet, just ingore this code
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
#endif
    }

    SetupDiDestroyDeviceInfoList(device_info);

    return index;
}

int PCIeLink::Connect() {

    int status = 0;

    connected = true;

    // get device path from GUID
    char device_base_path[MAX_PATH + 1] = "";
    DWORD num_devices = get_devices(GUID_DEVINTERFACE_XDMA, device_base_path, sizeof(device_base_path));
    INFO << "Devices found: " << num_devices;

    // extend device path to include target device node (xdma_control, xdma_user etc) 
    INFO << "Device base path: " << device_base_path;
    char device_path[MAX_PATH + 1] = "";

    //change to sprintf so that it can run on windows and linux
    sprintf(user_connection_string,"%s\\%s",device_base_path,user_device);
    sprintf(c2h_0_connection_string,"%s\\%s",device_base_path,c2h_0_device);
    //strcpy_s(device_path, sizeof device_path, device_base_path);
    //strcat_s(device_path, sizeof device_path, "\\");
    //strcat_s(device_path, sizeof device_path, options.device);
    INFO << "USER CONNECTION PATH: " << user_connection_string;
    INFO << "C2H_0 CONNECTION PATH: " << c2h_0_connection_string;

    // open tx device file
    if(user_handle == INVALID_HANDLE_VALUE) {
        INFO << "CONNECTING TO USER DEVICE...";
        user_handle = CreateFile(user_connection_string, GENERIC_READ | GENERIC_WRITE, 0, NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);
        if (user_handle == INVALID_HANDLE_VALUE) {
            ERROR << "Error opening device, win32 error code: " << GetLastError();
            connected = false;
            status = -1;
        } else {
            INFO << "SUCCESSFULLY CREATED USER HANDLE: " << user_handle;
        }
    } else {
        INFO << "user_handle is already connected";
    }
    // open rx device file
    if(c2h_0_handle == INVALID_HANDLE_VALUE) {
        INFO << "CONNECTING TO C2H_0 DEVICE...";
        c2h_0_handle = CreateFile(c2h_0_connection_string, GENERIC_READ | GENERIC_WRITE, 0, NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);
        if(c2h_0_handle == INVALID_HANDLE_VALUE) {
            ERROR << "Error opening device, win32 error code: " << GetLastError();
            connected = false;
            status = -1;
        } else {
            INFO << "SUCCESSFULLY CREATED C2H_0 HANDLE: " << c2h_0_handle;
        }
    } else {
        INFO << "c2h_0_handle is already connected";
    }

    return status;

}

void PCIeLink::Read(uint8_t* buff, int bytesToRead) {

}

/************************************************************
 * Write()
 * Takes in a valid command that the changes a function/value on the scope
 * 
 * command: the command to be executed
 * val: a void pointer to any extra data that may be needed for the command
 * 
 * return: NONE
 * 
*************************************************************/
void PCIeLink::Write(ScopeCommand command, void* val) {
    switch(command) {
        case board_enable:
        INFO << "Enabling Board";
        {
            uint8_t en[] = {0x00, 0x00};
            _Read(user_handle,BOARD_REG_OUT,en,2);
            en[1] |= 0x01; //acq->on fe->off
            _Write(user_handle,BOARD_REG_OUT,en,2);
            std::this_thread::sleep_for(std::chrono::milliseconds(5));
        }
        break;
        case adc_enable:
        INFO << "Enabling ADC";
        {
            //Reset ADC
            uint8_t resetADC[] = {0xFD,0x00,0x00,0x01};
            _FIFO_WRITE(user_handle,resetADC,4);
            //Power Down ADC
            uint8_t powerDownADC[] = {0xFD,0x0F,0x02,0x00};
            _FIFO_WRITE(user_handle,powerDownADC,4);
            //Set adc into ramp test
            uint8_t adcRampTest[] = {0xFD,0x25,0x00,0x20};
            _FIFO_WRITE(user_handle,adcRampTest,4);
            //Set adc into active mode
            uint8_t adcActiveMode[] = {0xFD,0x0F,0x00,0x00};
            _FIFO_WRITE(user_handle,adcActiveMode,4);
        }
        break;
        case clk_enable:
        INFO << "Enabling PLL";
        {
            uint16_t config_clk_gen[] = { 
                0x0010, 0x010B, 0x0233, 0x08B0, 
                0x0901, 0x1000, 0x1180, 0x1501, 
                0x1600, 0x1705, 0x1900, 0x1A32, 
                0x1B00, 0x1C00, 0x1D00, 0x1E00,
                0x1F00, 0x2001, 0x210C, 0x2228,
                0x2303, 0x2408, 0x2500, 0x2600,
                0x2700, 0x2F00, 0x3000, 0x3110, 
                0x3200, 0x3300, 0x3400, 0x3500,
                0x3800, 0x4802 }; //correct bytes to configure the clock gen
            
            //write to the clock generator
            for(int i = 0; i < 34; i++) {
                uint8_t data[] = {I2C_BYTE_PLL, CLOCK_GEN_I2C_ADDRESS_WRITE, (uint8_t)((config_clk_gen[i] & 0xFF00) >> 8),(uint8_t)(config_clk_gen[i] & 0xFF)};
                printf("DataPacket: %X %X %X %X\n",data[0],data[1],data[2],data[3]);
                _FIFO_WRITE(user_handle,data,4);
            }
        }
        break;
        case test_write:
        {
            INFO << "TESTING WRITING TO SCOPE";
            //test the following register: address 0, val 0x03
            uint8_t txBuff[1] = {0x03};
            uint8_t rxBuff[1] = {0xFF};
            uint8_t rxBuff_org[1] = {0xFF};
            //read original value
            _Read(user_handle,0,rxBuff_org,1);
            //write to user space
            _Write(user_handle,0,txBuff,1);
            //read back from user space
            _Read(user_handle,0,rxBuff,1);
            printf("Original val: %d, written val: %d, read val: %d\n",rxBuff_org[0],
                                                        txBuff[0],rxBuff[0]);
            txBuff[0] = 0;
            _Write(user_handle,0,txBuff,1);
            //read original value
            _Read(user_handle,0,rxBuff,1);
            printf("After writting 0 again, the read value is: %d\n",rxBuff[0]);
        }
        break;
        default:
            INFO << "Invalid/Unimplmented Command Given ";
        break;
    }
}

void PCIeLink::_FIFO_WRITE(HANDLE hPCIE, uint8_t* data, uint8_t bytesToWrite) {
    
    uint8_t* txBuff = data;
    uint16_t bytes = bytesToWrite * 4;
    uint8_t lengthBuff[] = { (uint8_t)(bytes & 0xFF), (uint8_t)((bytes & 0xFF00) >> 8),0x00,0x00};
    uint8_t isrClearBuff[] = {0xFF, 0xFF, 0xFF, 0xFF};
    uint8_t ierSetupBuff[] = {0x00, 0x00, 0x00, 0x0C};
    uint8_t isrRxBuff[] = {0x00, 0x00, 0x00, 0x00};
    uint8_t tdrBuff[] = {0x02,0x00,0x00,0x00};
    uint8_t tdfvBuff[] = {0x00,0x00,0x00,0x00};

    //reset ISR
    _Write(user_handle,SERIAL_FIFO_ISR_ADDRESS,isrClearBuff,4);
    //read ISR and IER
    _Read(user_handle, SERIAL_FIFO_ISR_ADDRESS,isrRxBuff,4);
    _Read(user_handle, SERIAL_FIFO_IER_ADDRESS,isrRxBuff,4);
    //enable IER
    _Write(user_handle,SERIAL_FIFO_IER_ADDRESS,ierSetupBuff,4);
    //Set false TDR
    _Write(user_handle,SERIAL_FIFO_TDR_ADDRESS,tdrBuff,4);
    //Put data into queue
    for(int q = 0; q < bytesToWrite; q++) {
        _Write(user_handle,SERIAL_FIFO_DATA_WRITE_REG,txBuff + q,1);
    }
    //read TDFV (vacancy byte)
    _Read(user_handle,SERIAL_FIFO_TDFV_ADDRESS,tdfvBuff,4);
    //write to TLR (the size of the packet)
    _Write(user_handle,SERIAL_FIFO_TLR_ADDRESS,lengthBuff,4);
    //read ISR for a done value
    bool done = false;
    while(!done) {
        _Read(user_handle,SERIAL_FIFO_ISR_ADDRESS,(uint8_t*)isrRxBuff,4);
        if(0x0008 == isrRxBuff[3]) {
            done = true;
        } else {
            std::this_thread::sleep_for(std::chrono::microseconds(1500));
        }
    }
    //write 0xFF FF FF FF to ISR
    _Write(user_handle,SERIAL_FIFO_ISR_ADDRESS,isrClearBuff,4);
    //read TDFV
    _Read(user_handle,SERIAL_FIFO_TDFV_ADDRESS,tdfvBuff,4);
}

void PCIeLink::_Read(HANDLE hPCIE, int64_t address, uint8_t* buff, int bytesToRead) {
    if(hPCIE == INVALID_HANDLE_VALUE) {
        ERROR << "INVALID HANDLE PASSED INTO PCIeLink::_Read(): " << hPCIE;
        return;
    }

    LARGE_INTEGER offset;
    offset.QuadPart = address;
    // set file pointer to offset of target address within PCIe BAR
    if (INVALID_SET_FILE_POINTER == SetFilePointerEx(hPCIE, offset, NULL, FILE_BEGIN)) {
        ERROR << "Error setting file pointer for PCIeLink::_Read(), win32 error code: " << GetLastError();
    }

    // read from device into buffer
    DWORD bytesRead;
    LARGE_INTEGER start;
    LARGE_INTEGER stop;
    QueryPerformanceCounter(&start);
    if (!ReadFile(hPCIE, buff, bytesToRead, &bytesRead, NULL)) {
        ERROR << "_Read() failed with Win32 error code: " << GetLastError();
    }
    QueryPerformanceCounter(&stop);
    double time_sec = (unsigned long long)(stop.QuadPart - start.QuadPart) / (double)freq.QuadPart;
    //INFO << bytesRead << " bytes read in " << time_sec;
}

void PCIeLink::_Write(HANDLE hPCIE, int64_t address, uint8_t* buff, int bytesToWrite) {
    if(hPCIE == INVALID_HANDLE_VALUE) {
        ERROR << "INVALID HANDLE PASSED INTO PCIeLink::_Write(): " << hPCIE;
        return;
    }

    LARGE_INTEGER offset;
    offset.QuadPart = address;
    // set file pointer to offset of target address within PCIe BAR
    if (INVALID_SET_FILE_POINTER == SetFilePointerEx(hPCIE, offset, NULL, FILE_BEGIN)) {
        ERROR << "Error setting file pointer for PCIeLink::_Write(), win32 error code: " << GetLastError();
    }

    // write from buffer to device
    DWORD bytesWritten;
    LARGE_INTEGER start;
    LARGE_INTEGER stop;
    QueryPerformanceCounter(&start);
    if (!WriteFile(hPCIE, buff, bytesToWrite, &bytesWritten, NULL)) {
        ERROR << "_Write() failed with Win32 error code: " << GetLastError();
    }
    QueryPerformanceCounter(&stop);
    double time_sec = (unsigned long long)(stop.QuadPart - start.QuadPart) / (double)freq.QuadPart;
    //INFO << bytesWritten << " bytes written in " << time_sec;
}

PCIeLink::PCIeLink() {
    user_handle = INVALID_HANDLE_VALUE;
    c2h_0_handle = INVALID_HANDLE_VALUE;
    QueryPerformanceFrequency(&freq);
}

PCIeLink::~PCIeLink() {
    if(user_handle != INVALID_HANDLE_VALUE)
        CloseHandle(user_handle);
    if(c2h_0_handle != INVALID_HANDLE_VALUE)
        CloseHandle(c2h_0_handle);
}













