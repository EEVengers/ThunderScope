//
//  EVDataTransferThread.cpp
//  Scope
//
//  Created by Daniel Vasile on 2019-07-30.
//  Copyright © 2019 EEVengers. All rights reserved.
//

/*
 Class that runs all data transfers.
 From FTDI Chip -> DigitalProccesing
 From DigitalProcessing -> Electron App
 */

#include "EVDataTransferThread.hpp"
#include "EVSuperSpeedFIFIOBridge.hpp"

DataTransferHandler::DataTransferHandler()
{
    try {

        superSpeedFIFOBridgeHandle = 0;
        
        dataBuffer = (unsigned char*) malloc(sizeof(unsigned char*) * FTDI_DATA_BUFFER_SIZE);
        if(dataBuffer == nullptr) throw EVException(EVErrorCodeMallocFailed,"DataTransferHandler:Constructor");
        
        CopyFunc = [](unsigned char* buff, unsigned int& idx, unsigned int size, void* obj){ return; };
        
    } catch (EVException e) {
        std::cout << "DataTransferHandler:Constructor - " << e.what <<std::endl;
        assert(false);
    } catch (std::exception e) {
        std::cout << "DataTransferHandler:Constructor - " << e.what() << std::endl;
    }
    
}

void DataTransferHandler::FTDITransferThread(DataTransferHandler* handler)
{
    unsigned int bytesRead;
    unsigned int idx = 0;
    while(!handler->closeFTDIDataTransferThread) {
        //read a chunck from the FTDI chip
        handler->lock.lock();
        auto errorCode = FT_ReadPipe(handler->superSpeedFIFOBridgeHandle,FTDI_FLAG_READ_CHIP_TO_COMPUTER,handler->dataBuffer,FTDI_DATA_BUFFER_SIZE,&bytesRead,nullptr);
        if(errorCode != 0 || bytesRead != FTDI_DATA_BUFFER_SIZE) throw EVException(errorCode,"DataTransferHandler:FTDITransferThread:FT_ReadPipe()");
        //transfer chunck to shared cache
        handler->CopyFunc(handler->dataBuffer, idx, bytesRead, (void*)handler);
        handler->lock.unlock();
    }
}

void DataTransferHandler::StartFTDITransferThread()
{
    if(superSpeedFIFOBridgeHandle != 0) {
        throw EVException(EVErrorCodeServiceAlreadyRunning,"DataTransferHandler:StartFTDITransferThread");
    }
    try {
        InitFTDISuperSpeedChip(&superSpeedFIFOBridgeHandle);
    } catch (EVException e) {
        std::cout << "EV Exceptiom Caught: " << e.what << std::endl;
        assert(false);
        return;
    } catch (std::exception e) {
        assert(false);
        std::cout << "Standard Exception Caught" << e.what() << std::endl;
        return;
    }
    
    closeFTDIDataTransferThread = false;
    superSpeedFTDITransferThread = std::thread(DataTransferHandler::FTDITransferThread,this);
}

void DataTransferHandler::SetCopyFunc(CopyFuncs Func) {
    lock.lock();
    switch(Func) {
        case digitalProcessorFunc:
            CopyFunc = [](unsigned char* buff, unsigned int &idx, unsigned int size, void* obj)
        { ((DataTransferHandler*)obj)->processingThreadSharedCache->PartialSetWriteCache(buff, idx, size); };
            break;
        default:
            throw EVException(EVErrorCodeInvalidValue,"DataTransferHandler::SetCopyFunc()");
            break;
    }
    lock.unlock();
}

DataTransferHandler::~DataTransferHandler()
{
    if(superSpeedFTDITransferThread.joinable())
    {
        closeFTDIDataTransferThread = true;
        superSpeedFTDITransferThread.join();
    }
    if(digitalProcessingTransferThread.joinable())
    {
        closeDigitalProcessingTransferThread = true;
        digitalProcessingTransferThread.join();
    }
    if(electronTransferThread.joinable())
    {
        closeElectronTransferThread = true;
        electronTransferThread.join();
    }
    if(superSpeedFIFOBridgeHandle != 0)
    {
        FT_Close(superSpeedFIFOBridgeHandle);
    }
}
