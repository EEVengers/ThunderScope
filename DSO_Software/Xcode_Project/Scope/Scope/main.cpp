//
//  main.cpp
//  Scope
//
//  Created by Daniel Vasile on 2019-07-26.
//  Copyright © 2019 EEVengers. All rights reserved.
//

#include "EVLibrary.h"
#include "SuperSpeedFIFIOBridge.hpp"

#define FIFO_SUPER_SPEED_BRIDGE_NAME "FTDI SuperSpeed-FIFO Bridge"

static const int BUFFER_LEN = 32*1024;

int main(int argc, char *argv[])
{
    FT_HANDLE superSuperFIFOBridgeHandle = 0;
    UCHAR buffer[BUFFER_LEN] = {0};
    DWORD error;
    ULONG bytesRead;
    
    if(InitFTDISuperSpeedChip(&superSuperFIFOBridgeHandle)) {
        std::cout << "Error Failed To Open Handle To FTDI SuperSpeed FIFO Buffer" << std::endl;
        return 1;
    }
    
//    FT_ReadPipe(superSuperFIFOBridgeHandle, (UCHAR)0x82, buffer, BUFFER_LEN, &bytes_read, NULL);
//    std::cout << "# Of Bytes Read: " << bytes_read << std::endl;

//    uint64_t total_bytes_read = 0;
//    auto start_time = std::chrono::high_resolution_clock::now();
//    while(total_bytes_read < (((uint64_t)1) << 32)) {
//        if(FT_OK != (error = FT_ReadPipe(superSuperFIFOBridgeHandle, (UCHAR)0x82, buffer, BUFFER_LEN, &bytesRead, NULL))) {
//            std::cout << "Could Not Read Pipe 0x82 from FIFO-SuperSpeed Bridge, Error Code: " << error << std::endl;
//            return 1;
//        }
//        total_bytes_read += bytesRead;
//    }
//    auto end_time = std::chrono::high_resolution_clock::now();
//    auto total_time = end_time - start_time;
//    std::cout << "Data Transfer Rate Average: " << ((double)(2^32) / (double)total_time.count()) / (8.0) * 1000000000000.0 << "MB/s" << std::endl;
    
    FT_Close(superSuperFIFOBridgeHandle);
    
    return 0;
}

