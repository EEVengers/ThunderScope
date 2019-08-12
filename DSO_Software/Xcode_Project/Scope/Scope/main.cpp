//
//  main.cpp
//  Scope
//
//  Created by Daniel Vasile on 2019-07-26.
//  Copyright © 2019 EEVengers. All rights reserved.
//

#include "EVLibrary.h"
#include "EVSuperSpeedFIFIOBridge.hpp"
#include "EVDataTransferThread.hpp"
#include "EVGUI.hpp"
#include "EVDigitalProcessing.hpp"

#define FIFO_SUPER_SPEED_BRIDGE_NAME "FTDI SuperSpeed-FIFO Bridge"

volatile bool programClosing;

int main(int argc, char *argv[])
{
    FT_HANDLE superSuperFIFOBridgeHandle = 0;
    UCHAR dataBuffers[NUM_FTDI_DATA_BUFFERS][FTDI_DATA_BUFFER_SZIE];
    programClosing = false;
    
//    if(InitFTDISuperSpeedChip(&superSuperFIFOBridgeHandle)) {
//        std::cout << "Error Failed To Open Handle To FTDI SuperSpeed FIFO Buffer" << std::endl;
//        return 1;
//    }
    
    std::thread ftdiHandlerThread(SuperSpeedFIFOBridgeHandler,superSuperFIFOBridgeHandle,dataBuffers);
    std::thread digitalProcessingThread(DigitalProcessingMain);
    std::thread GUIThread(GUIMain, argc, argv);

    
    programClosing = true;
    ftdiHandlerThread.join();
    std::cout << "Joined FTDI Thread" << std::endl;
    digitalProcessingThread.join();
    std::cout << "Joined Digital Processing Thread" << std::endl;
    GUIThread.join();
    std::cout << "Joined GUI Thread" << std::endl;
    
//    FT_Close(superSuperFIFOBridgeHandle);
    
    return 0;
}

