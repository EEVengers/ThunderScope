

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
    if(num_devices != 1) {
        exit(1);
    }
        

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

/************************************************************
 * Read()
 * Takes in an 8MegaByte buffer (2^23 bytes) and fills it with adc data read from the board
 * 
 * command: the command to be executed
 * val: a void pointer to any extra data that may be needed for the command
 * 
 * return: NONE
 * 
*************************************************************/
void PCIeLink::Read(uint8_t* buff) {
    //Read register to tell you how much it has read 
    //Once more than 2^23 bytes have been written, halt the datamover
    bool enoughData = false;
    int64_t current_chunk;
    uint32_t kbytes_4_moved = 0;
    uint32_t error_code = 0;
    uint32_t overflow_count = 0;

    while(!enoughData) {
        _Read(user_handle,DATAMOVER_TRANSFER_COUNTER,(uint8_t*)(&kbytes_4_moved),4);
        error_code = ((kbytes_4_moved & 0xC0000000)>>30);
        overflow_count = ((kbytes_4_moved & 0x3FFF0000)>>16);
        kbytes_4_moved = kbytes_4_moved & 0x0000FFFF;
        current_chunk = kbytes_4_moved / (1 << 11);
        //INFO << "error code: " << error_code;
        //INFO << "overflow count: " << overflow_count;
        //INFO << "4kB Transfered: " << kbytes_4_moved;
        //INFO << "Current Chunk: " << current_chunk;
        if(last_chunk_read == -1) {
            enoughData = (kbytes_4_moved >= (1 << 11));
            if(enoughData && current_chunk == 0) {
                enoughData = false;
                continue;
            } else {
                current_chunk = current_chunk - 1;
            }
        } else {
            enoughData = (current_chunk != last_chunk_read);
            if(enoughData && (current_chunk - last_chunk_read == 1 || (current_chunk == 0 && last_chunk_read == 31))) { //if the datamover is still writing to the next chunk, dont read it
                enoughData = false;
                continue;
            } else { //otherwise decretment the current chunk by 1 to read the next finished chunk
                if(current_chunk == 0) {
                    current_chunk = 31;
                } else {
                    current_chunk = current_chunk - 1;
                }
            }
        }
    }
    last_chunk_read = current_chunk;
    int64_t reading_offset = current_chunk * (1 << 23);
    //INFO << "Reading from current current chunk: " << current_chunk;
    //INFO << "Offset: " << reading_offset;
    //Read the data from ddr3 memory
    _Read(c2h_0_handle,reading_offset,buff,1 << 23);
}

void PCIeLink::InitBoard() {
    Write(init_board,nullptr);
    Write(dataMover_enable,nullptr);
}

void PCIeLink::Pause() {
    _pause.store(true);
}

void PCIeLink::UnPause() {
    _pause.store(false);
}

void PCIeLink::Stop() {
    _run.store(false);
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
        case init_board:
        INFO << "Enabling Board";
        {
            _Write32(user_handle,DATAMOVER_REG_OUT,0);
            currentBoardState.board_reg_out |= 0x0100; //acq->on fe->off
            _Write32(user_handle,BOARD_REG_OUT,currentBoardState.board_reg_out);
        }

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
                //printf("DataPacket: %X %X %X %X\n",data[0],data[1],data[2],data[3]);
                _FIFO_WRITE(user_handle,data,4);
            }

            currentBoardState.board_reg_out |= 0x0200;
            _Write32(user_handle,BOARD_REG_OUT,currentBoardState.board_reg_out);
        }

        INFO << "Enabling ADC";
        {
            //Reset ADC
            uint8_t resetADC[] = {0xFD,0x00,0x00,0x01};
            _FIFO_WRITE(user_handle,resetADC,4);
            //Power Down ADC
            _adc_power_down();
            //invert channels
            uint8_t channel_invert[] = {0xFD,0x24,0x00,0x7F};
            _FIFO_WRITE(user_handle,channel_invert,4);
            //Adjust full scale value
            uint8_t full_scale_adjust[] = {0xFD,0x55,0x00,0x10};
            _FIFO_WRITE(user_handle,full_scale_adjust,4);
            //Course Gain On
            uint8_t course_gain_on[] = {0xFD,0x33,0x00,0x00};
            _FIFO_WRITE(user_handle,course_gain_on,4);
            //Course Gain 4-CH set
            uint8_t course_gain4[] = {0xFD,0x2A,0x99,0x99};
            _FIFO_WRITE(user_handle,course_gain4,4);
            //Course Gain 1-CH & 2-CH set
            uint8_t course_gain12[] = {0xFD,0x2B,0x0A,0x99};
            _FIFO_WRITE(user_handle,course_gain12,4);
            //Set adc into active mode
            currentBoardState.num_ch_on++;
            currentBoardState.ch_is_on[0] = true;
            _FIFO_WRITE(user_handle,currentBoardState.adc_chnum_clkdiv,sizeof(currentBoardState.adc_chnum_clkdiv));
            _adc_active();
            _FIFO_WRITE(user_handle,currentBoardState.adc_in_sel_12,sizeof(currentBoardState.adc_in_sel_12));
            _FIFO_WRITE(user_handle,currentBoardState.adc_in_sel_34,sizeof(currentBoardState.adc_in_sel_34));
        }
        
        INFO << "Enabling the front end";
        {
            currentBoardState.board_reg_out |= 0x0400; //fe->on
            _Write32(user_handle,BOARD_REG_OUT,currentBoardState.board_reg_out);
            std::this_thread::sleep_for(std::chrono::milliseconds(5));
            //enable the pga
            for(int i = 0; i < 4; i++) {
                _FIFO_WRITE(user_handle,currentBoardState.pga[i],sizeof(currentBoardState.pga[i]));
                _FIFO_WRITE(user_handle,currentBoardState.dac[i],sizeof(currentBoardState.dac[i]));
            }
        }
        
        break;
        case adc_enable_ramp_test:
        INFO << "Enabling ADC RAMP MODE";
        {
            //Reset ADC
            uint8_t resetADC[] = {0xFD,0x00,0x00,0x01};
            _FIFO_WRITE(user_handle,resetADC,4);
            //Power Down ADC
            uint8_t powerDownADC[] = {0xFD,0x0F,0x02,0x00};
            _FIFO_WRITE(user_handle,powerDownADC,4);
            //Set Channel and Clock Div
            uint8_t setChannelClock[] = {0xFD,0x31,0x00,0x01};
            _FIFO_WRITE(user_handle,setChannelClock,4);
            
            //Set adc into ramp test
            uint8_t adcRampTest[] = {0xFD,0x25,0x00,0x40};
            _FIFO_WRITE(user_handle,adcRampTest,4);

            //Set adc bits_custom1
            //uint8_t adcBitsCustom1[] = {0xFD,0x26,0x11,0x00};
            //_FIFO_WRITE(user_handle,adcBitsCustom1,4);

            //Set adc into single pattern test
            //uint8_t adcSinglePatternTest[] = {0xFD,0x25,0x00,0x10};
            //_FIFO_WRITE(user_handle,adcSinglePatternTest,4);
            
            //Set adc into active mode
            uint8_t adcActiveMode[] = {0xFD,0x0F,0x00,0x00};
            _FIFO_WRITE(user_handle,adcActiveMode,4);
        }
        break;
        case dataMover_enable:
        INFO << "Enabling DataMover";
        {
            currentBoardState.datamover_reg_out |= 0x03;
            _Write32(user_handle,DATAMOVER_REG_OUT,currentBoardState.datamover_reg_out);
        }
        break;
        case dataMover_disable:
        INFO << "Disabling DataMover";
        {
            currentBoardState.datamover_reg_out &= ~(0x01);
            _Write32(user_handle,DATAMOVER_REG_OUT,currentBoardState.datamover_reg_out);
            currentBoardState.datamover_reg_out &= ~(0x02);
            _Write32(user_handle,DATAMOVER_REG_OUT,currentBoardState.datamover_reg_out);
        }
        break;
        case enable_channel:
        _ch_on(*((int*)val));
        break;
        case disable_channel:
        _ch_off(*((int*)val));
        break;
        case ac_couple:
        _ac_cpl(*((int*)val));
        break;
        case dc_couple:
        _dc_cpl(*((int*)val));
        break;
        case voltage_divison_set:
        {
            VoltageDivSetParam* param = (VoltageDivSetParam*)val;
            DEBUG << "Setting Channel " << param->ch_num << " Voltage Division To " << param->voltage_div;
            _vdiv_set(param->ch_num,param->voltage_div);
        }
        break;
        case voltage_offset_set:
        {
            VoltageOffsetParam* param = (VoltageOffsetParam*)val;
            DEBUG << "Setting Channel " << param->ch_num << " DC Voltage Offset To " << param->voltage << "mV";
            _voffset_set(param->ch_num,param->voltage);
        }
        break;
        case bandwidth_set:
        {
            BandwidthSetParam* param = (BandwidthSetParam*)val;
            DEBUG << "Setting Channel " << param->ch_num << " Bandwidth To: " << param->bw;
            _bw_set(param->ch_num,param->bw);
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
        case test_adc_data:
        {
            int num_buffers = 4;
            uint8_t* preBuff = (uint8_t*)malloc(BUFFER_SIZE * sizeof(uint8_t));
            int8_t **buffers = (int8_t**)malloc(num_buffers * sizeof(int8_t*));
            for(int i = 0; i < num_buffers; i++) {
                buffers[i] = (int8_t*)malloc(BUFFER_SIZE * sizeof(int8_t));
            }

            for(int i = 0; i < num_buffers; i++) {
                Read(preBuff);
                for(int q = 0; q < BUFFER_SIZE; q++) {
                    if(preBuff[q] & 0x80) {
                        //postive
                        buffers[i][q] = (int)(preBuff[q] & 0x7F);
                    } else {
                        //negative
                        buffers[i][q] = (-128 + ((int)(preBuff[q] & 0x7F)));
                    }
                }
            }

            for(int i = 0; i < num_buffers; i++) {
                char name[100];
                sprintf(name,"ADC_DATA_FILE%d.csv",i);
                FILE* file = fopen(name,"w");
                for(int q = 0; q < BUFFER_SIZE;) {
                    fprintf(file,"%d,",buffers[i][q++]);
                    fprintf(file,"%d,",buffers[i][q++]);
                    fprintf(file,"%d,",buffers[i][q++]);
                    fprintf(file,"%d,",buffers[i][q++]);
                    fprintf(file,"%d,",buffers[i][q++]);
                    fprintf(file,"%d,",buffers[i][q++]);
                    fprintf(file,"%d,",buffers[i][q++]);
                    fprintf(file,"%d\n",buffers[i][q++]);
                }
            }

            for(int i = 0; i < num_buffers; i++) {
                free(buffers[i]);
            }
            free(preBuff);
            free(buffers);
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
    if (!ReadFile(hPCIE, buff, bytesToRead, &bytesRead, NULL)) {
        ERROR << "_Read() failed with Win32 error code: " << GetLastError();
    }
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
    if (!WriteFile(hPCIE, buff, bytesToWrite, &bytesWritten, NULL)) {
        ERROR << "_Write() failed with Win32 error code: " << GetLastError();
    }
}

void PCIeLink::_Write32(HANDLE hPCIE, long long address, uint32_t val) {
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
    uint8_t bytes[4];
    bytes[3] = (uint8_t)( (val & 0xFF000000) >> 24);
    bytes[2] = (uint8_t)( (val & 0x00FF0000) >> 16);
    bytes[1] = (uint8_t)( (val & 0x0000FF00) >> 8);
    bytes[0] = (uint8_t)( (val & 0x000000FF));
    if (!WriteFile(hPCIE, bytes, 4, &bytesWritten, NULL)) {
        ERROR << "_Write() failed with Win32 error code: " << GetLastError();
    }
}

void PCIeLink::_Job() {

    uint8_t* preBuff = (uint8_t*)malloc(sizeof(uint8_t) * BUFFER_SIZE);
    while(_run.load()) {
        while(_pause.load()) {
            std::this_thread::sleep_for(std::chrono::milliseconds(2));
        }
        //allocate a buffer
        buffer* buff;
        buff = bufferAllocator.allocate(1);
        bufferAllocator.construct(buff);
        //read from the PCIeLink
        Read(preBuff);
        for(int i = 0; i < BUFFER_SIZE; i++) {
            if(preBuff[i] & 0x80) {
                //postive
                buff->data[i] = (int)(preBuff[i] & 0x7F);
            } else {
                //negative
                buff->data[i] = (-128 + ((int)(preBuff[i] & 0x7F)));
            }
        }
        //push to queue
        outputQueue->push(buff);
    }
    free(preBuff);
}

PCIeLink::PCIeLink(boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *outputQueue) {
    user_handle = INVALID_HANDLE_VALUE;
    c2h_0_handle = INVALID_HANDLE_VALUE;
    last_chunk_read = -1;
    QueryPerformanceFrequency(&freq);
    this->outputQueue = outputQueue;
    //keep the read thread alive but paused
    _run = true;
    _pause = true;
    //init board state vairable
    currentBoardState.board_en = false;
    currentBoardState.adc_en = false;
    currentBoardState.clk_en = false;
    currentBoardState.num_ch_on = 0;

    //adc stuff
    currentBoardState.adc_chnum_clkdiv[0] = 0xFD;
    currentBoardState.adc_chnum_clkdiv[1] = 0x31;
    currentBoardState.adc_chnum_clkdiv[2] = 0x00;
    currentBoardState.adc_chnum_clkdiv[3] = 0x01; //default single channel

    currentBoardState.adc_in_sel_12[0] = 0xFD;
    currentBoardState.adc_in_sel_12[1] = 0x3A;
    currentBoardState.adc_in_sel_12[2] = 0x02; //default CH1
    currentBoardState.adc_in_sel_12[3] = 0x02; //default CH1

    currentBoardState.adc_in_sel_34[0] = 0xFD;
    currentBoardState.adc_in_sel_34[1] = 0x3B;
    currentBoardState.adc_in_sel_34[2] = 0x02; //default CH1
    currentBoardState.adc_in_sel_34[3] = 0x02; //default CH1

    for(int i = 0; i < 4; i++) {
        currentBoardState.ch_is_on[i] = false;
        //init dac state
        currentBoardState.dac[i][0] = 0xFF;
        currentBoardState.dac[i][1] = 0xC2;
        currentBoardState.dac[i][3] = 0x07;
        currentBoardState.dac[i][4] = 0x80;
        //init pga state
        currentBoardState.pga[i][1] = 0x00;
        currentBoardState.pga[i][2] = 0x04;
        currentBoardState.pga[i][3] = 0x0A;
    }
    //init pga state address
    currentBoardState.pga[0][0] = 0xFB;
    currentBoardState.pga[1][0] = 0xFA;
    currentBoardState.pga[2][0] = 0xF9;
    currentBoardState.pga[3][0] = 0xF8;

    currentBoardState.dac[0][2] = 0x40;
    currentBoardState.dac[1][2] = 0x42;
    currentBoardState.dac[2][2] = 0x44;
    currentBoardState.dac[3][2] = 0x46;

    //init register values
    currentBoardState.datamover_reg_out = 0x00;
    currentBoardState.board_reg_out = 0xFF; // FOR FUCKS SAKE CHANGE THIS!

    //connect to the board and start the adc + read thread
    Connect();
    InitBoard();
    PCIeReadThread = std::thread(&PCIeLink::_Job, this);
}

PCIeLink::~PCIeLink() {

    //turn off the adc
    INFO << "Powering down adc";
    _adc_power_down();
    //disable the front end and board power
    INFO << "Turning Off Power To Front End";
    currentBoardState.board_reg_out = 0;
    _Write32(user_handle,BOARD_REG_OUT,currentBoardState.board_reg_out);        

    _pause.store(false);
    _run.store(false);
    
    DEBUG << "Waiting to join PCIeReadThread";
    PCIeReadThread.join();
    DEBUG << "Joined PCIeReadThread";

    if(user_handle != INVALID_HANDLE_VALUE) {
        CloseHandle(user_handle);   
        user_handle = INVALID_HANDLE_VALUE;
    }
    if(c2h_0_handle != INVALID_HANDLE_VALUE) {
        CloseHandle(c2h_0_handle);
        c2h_0_handle = INVALID_HANDLE_VALUE;
    }
}

void PCIeLink::ClockTick1() {
    QueryPerformanceCounter(&tick1);
}

void PCIeLink::ClockTick2() {
    QueryPerformanceCounter(&tick2);
}

/************************************************************
 * PrintTimeDelta()
 * prints the time difference between tick1 and tick2 -> (tick2 - tick1) / freq
 * 
 * return: NONE
 * 
*************************************************************/
void PCIeLink::PrintTimeDelta() {
    double time_sec = (unsigned long long)(tick2.QuadPart - tick1.QuadPart) / (double)freq.QuadPart;
    INFO << "Time Delta is: " << time_sec;
}

double PCIeLink::GetTimeDelta() {
    return (unsigned long long)(tick2.QuadPart - tick1.QuadPart) / (double)freq.QuadPart;
}


/************************************************************************ SCOPE CONTROL STUFF ***********************************************/

int PCIeLink::_ch_on(int ch_num){

    if (currentBoardState.ch_is_on[ch_num])
        return 0;             //Channel already on

    currentBoardState.num_ch_on++;
    currentBoardState.ch_is_on[ch_num] = true;
    _adc_ch_cfg();
    
    _FIFO_WRITE(user_handle,currentBoardState.dac[ch_num],sizeof(currentBoardState.dac[ch_num]));
    _FIFO_WRITE(user_handle,currentBoardState.pga[ch_num],sizeof(currentBoardState.pga[ch_num]));

    return 1;
}

int PCIeLink::_ch_off(int ch_num){

    if (!currentBoardState.ch_is_on[ch_num])
        return 0;             //Channel already off

    currentBoardState.num_ch_on--;
    currentBoardState.ch_is_on[ch_num] = false;
    _adc_ch_cfg();

    return 1;
}

int PCIeLink::_dc_cpl(int ch_num){
    if (ch_num == 0)
        currentBoardState.board_reg_out |= (1 << 4);
    else if (ch_num == 1)
        currentBoardState.board_reg_out |= (1 << 5);
    else if (ch_num == 2)
        currentBoardState.board_reg_out |= (1 << 6);
    else if (ch_num == 3)
        currentBoardState.board_reg_out |= (1 << 7);

    _Write32(user_handle,BOARD_REG_OUT,currentBoardState.board_reg_out);

    return 1;
}

int PCIeLink::_ac_cpl(int ch_num){
    if (ch_num == 0)
        currentBoardState.board_reg_out &= ~(1 << 4);
    else if (ch_num == 1)
        currentBoardState.board_reg_out &= ~(1 << 5);
    else if (ch_num == 2)
        currentBoardState.board_reg_out &= ~(1 << 6);
    else if (ch_num == 3)
        currentBoardState.board_reg_out &= ~(1 << 7);

    _Write32(user_handle,BOARD_REG_OUT,currentBoardState.board_reg_out);

    return 1;
}

//expect vdiv in millivolts
int PCIeLink::_vdiv_set(int ch_num, int vdiv){

    if (vdiv <= 100){              //Attenuator relay on for higher v/divs
        if (ch_num == 0)
            currentBoardState.board_reg_out |= (1 << 0);
        else if (ch_num == 1)
            currentBoardState.board_reg_out |= (1 << 1);
        else if (ch_num == 2)
            currentBoardState.board_reg_out |= (1 << 2);
        else if (ch_num == 3)
            currentBoardState.board_reg_out |= (1 << 3);
    }
    else{                         //Attenuator relay off for lower v/divs
        if (ch_num == 0)
            currentBoardState.board_reg_out &= ~(1 << 0);
        else if (ch_num == 1)
            currentBoardState.board_reg_out &= ~(1 << 1);
        else if (ch_num == 2)
            currentBoardState.board_reg_out &= ~(1 << 2);
        else if (ch_num == 3)
            currentBoardState.board_reg_out &= ~(1 << 3);
    }

    if (vdiv == 10000 || vdiv == 100){
        currentBoardState.pga[ch_num][3] &= 0xE0;
        currentBoardState.pga[ch_num][3] |= 0x0A;
    }
    else if (vdiv == 5000 || vdiv == 50){
        currentBoardState.pga[ch_num][3] &= 0xE0;
        currentBoardState.pga[ch_num][3] |= 0x07;
    }
    else if (vdiv == 2000 || vdiv == 20){
        currentBoardState.pga[ch_num][3] &= 0xE0;
        currentBoardState.pga[ch_num][3] |= 0x03;
    }
    else if (vdiv == 1000 || vdiv == 10){
        currentBoardState.pga[ch_num][3] &= 0xE0;
        currentBoardState.pga[ch_num][3] |= 0x1A;
    }
    else if (vdiv == 500 || vdiv == 5){
        currentBoardState.pga[ch_num][3] &= 0xE0;
        currentBoardState.pga[ch_num][3] |= 0x17;
    }
    else if (vdiv == 200 || vdiv == 2){
        currentBoardState.pga[ch_num][3] &= 0xE0;
        currentBoardState.pga[ch_num][3] |= 0x13;
    }
    else if (vdiv == 1){
        currentBoardState.pga[ch_num][3] &= 0xE0;
        currentBoardState.pga[ch_num][3] |= 0x10;
    }

    _Write32(user_handle,BOARD_REG_OUT,currentBoardState.board_reg_out);
    _FIFO_WRITE(user_handle,currentBoardState.pga[ch_num],sizeof(currentBoardState.pga[ch_num]));

    return 1;
}

int PCIeLink::_voffset_set(int ch_num, double voffset){
    unsigned int dac_value = (unsigned int)round((voffset + 0.5) * 4095);

    currentBoardState.dac[ch_num][4] = (unsigned char)(0xFF & dac_value);
    currentBoardState.dac[ch_num][3] = (unsigned char)(0x0F & (dac_value >> 8));

    _FIFO_WRITE(user_handle,currentBoardState.dac[ch_num],sizeof(currentBoardState.dac[ch_num]));

    return 1;
}

int PCIeLink::_bw_set(int ch_num, int bw){
    if (bw == 20){
        currentBoardState.pga[ch_num][3] &= 0x1F;
        currentBoardState.pga[ch_num][3] |= 0x40;
    }
    else if (bw == 100){
        currentBoardState.pga[ch_num][3] &= 0x1F;
        currentBoardState.pga[ch_num][3] |= 0x80;
    }
    else if (bw == 200){
        currentBoardState.pga[ch_num][3] &= 0x1F;
        currentBoardState.pga[ch_num][3] |= 0xC0;
    }
    else if (bw == 350){
        currentBoardState.pga[ch_num][3] &= 0x1F;
    }

    _FIFO_WRITE(user_handle,currentBoardState.pga[ch_num],sizeof(currentBoardState.pga[ch_num]));

    return 1;
}

int PCIeLink::_adc_ch_cfg(){
    unsigned char cmd_temp [4];
    int i;

    if (currentBoardState.num_ch_on == 0){
        return 1;
    }
    else if (currentBoardState.num_ch_on == 1) {
        currentBoardState.adc_chnum_clkdiv[3] = 0x01;
        currentBoardState.adc_chnum_clkdiv[2] = 0x00;

        for (i=0; !currentBoardState.ch_is_on[i]; i++);   //Find channel that is on

        currentBoardState.adc_in_sel_12[3] = (2 << i);    //Set all 4 ADCs to sample that channel
        currentBoardState.adc_in_sel_12[2] = (2 << i);
        currentBoardState.adc_in_sel_34[3] = (2 << i);
        currentBoardState.adc_in_sel_34[2] = (2 << i);
        currentBoardState.datamover_reg_out &= ~(0xF0);
    } else if (currentBoardState.num_ch_on == 2){
        currentBoardState.adc_chnum_clkdiv[3] = 0x02;
        currentBoardState.adc_chnum_clkdiv[2] = 0x01;

        for (i=0; !currentBoardState.ch_is_on[i]; i++);   //Find first on channel
        currentBoardState.adc_in_sel_12[3] = (2 << i);    //Set 2 ADCs to sample first channel
        currentBoardState.adc_in_sel_12[2] = (2 << i);
        i++;
        for (; !currentBoardState.ch_is_on[i]; i++);      //Find second on channel
        currentBoardState.adc_in_sel_34[3] = (2 << i);    //Set 2 ADCs to sample second channel
        currentBoardState.adc_in_sel_34[2] = (2 << i);

        currentBoardState.datamover_reg_out &= ~(0xF0);
        currentBoardState.datamover_reg_out |= 0x10;
    } else {
        currentBoardState.adc_chnum_clkdiv[3] = 0x04;
        currentBoardState.adc_chnum_clkdiv[2] = 0x02;
        currentBoardState.adc_in_sel_12[3] = (2 << 0);    //Set each ADC to sample one channel
        currentBoardState.adc_in_sel_12[2] = (2 << 1);
        currentBoardState.adc_in_sel_34[3] = (2 << 2);
        currentBoardState.adc_in_sel_34[2] = (2 << 3);
        currentBoardState.datamover_reg_out &= ~(0xF0);
        currentBoardState.datamover_reg_out |= 0x30;
    }


    _adc_power_down();

    _FIFO_WRITE(user_handle,currentBoardState.adc_chnum_clkdiv,sizeof(currentBoardState.adc_chnum_clkdiv));

    _adc_active();

    _FIFO_WRITE(user_handle,currentBoardState.adc_in_sel_12,sizeof(currentBoardState.adc_in_sel_12));
    _FIFO_WRITE(user_handle,currentBoardState.adc_in_sel_34,sizeof(currentBoardState.adc_in_sel_34));

    //write to datamover reg
    _Write32(user_handle,DATAMOVER_REG_OUT,0);
    std::this_thread::sleep_for(std::chrono::milliseconds(5));
    _Write32(user_handle,DATAMOVER_REG_OUT,currentBoardState.datamover_reg_out);

    return 1;
}

void PCIeLink::_adc_power_down() {
    uint8_t power_down_bytes[4] = {0xFD,0x0F,0x02,0x00};
    _FIFO_WRITE(user_handle,power_down_bytes,sizeof(power_down_bytes));
}

void PCIeLink::_adc_active() {
    uint8_t adc_active_bytes[4] = {0xFD,0x0F,0x00,0x00};
    _FIFO_WRITE(user_handle,adc_active_bytes,sizeof(adc_active_bytes));
}



