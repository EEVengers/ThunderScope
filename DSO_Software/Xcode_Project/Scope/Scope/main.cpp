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
#include "EVDigitalProcessing.hpp"

#define FIFO_SUPER_SPEED_BRIDGE_NAME "FTDI SuperSpeed-FIFO Bridge"

DataTransferHandler* dataHandler;
DigitalProcessor* digitalProcessor;

void run()
{
    while(!programClosing){
        std::this_thread::sleep_for(std::chrono::seconds(1));
        logger.debug("Main:Run() - 1 second has passed");
    }
}

int main(int argc, char *argv[])
{
    programClosing = false;
    //create classes -
    //  DataTransferHandler gets data off of the board
    //  DigitalProcessor currently prints to file, but will be responsible for triggering
    dataHandler = new DataTransferHandler();
    digitalProcessor  = new DigitalProcessor();
    
    //share cache object
    dataHandler->processingThreadSharedCache = digitalProcessor->cache;
    
    //set the data handler to save data to the digitalprocessor's shared cache
    dataHandler->SetCopyFunc(digitalProcessorFunc);
    //start reading
    dataHandler->StartFTDITransferThread();
        
    //Run test function which currently prints about 700kbytes of data to a csv file
    //It writes about 65,553 columns, and Numbers cant display more then 65,536
    //Output can be found in the same directory as the program.
    digitalProcessor->Test();
    
    delete dataHandler;
    delete digitalProcessor;
        
    return 0;
}

