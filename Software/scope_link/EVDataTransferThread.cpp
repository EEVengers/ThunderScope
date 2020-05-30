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
#include "EVSuperSpeedFIFOBridge.hpp"

DataTransferHandler::DataTransferHandler()
{
    try {

        killFTDIDataTransferThread = true;
        InitFTDISuperSpeedChip(&superSpeedFIFOBridgeHandle); 
       
        threadSharedCache = new EVSharedCache(MEDIUM_BUFF_SIZE,10);
 
        CopyFunc = [](unsigned char* buff, unsigned int& idx, unsigned int size, void* obj){ return; };
        
    } catch (EVException e) {
        std::cout << "DataTransferHandler:Constructor - " << e.what << std::endl;
        assert(false);
    } catch (std::exception e) {
        std::cout << "DataTransferHandler:Constructor - " << e.what() << std::endl;
        assert(false);
    }
    
}

void DataTransferHandler::FTDITransferThread(DataTransferHandler* handler)
{
    unsigned int bytesReadFromPipe;
    unsigned int errorCode;
    unsigned int asyncBytesRead[handler->numAsyncBuffers];
    unsigned int copyIdx = 0;
    OVERLAPPED vOverlapped[handler->numAsyncBuffers];


    for(int i = 0; i < handler->numAsyncBuffers; i++) {
        if(FT_OK != ( errorCode = FT_InitializeOverlapped(handler->superSpeedFIFOBridgeHandle, &(vOverlapped[i])))) {
            FT_Close(handler->superSpeedFIFOBridgeHandle);
            EVLogger::Debug( (std::string("FTDI Transfer Thread failed to init overlapped at index ") + std::to_string(i) + std::string(", error code ") + std::to_string(errorCode)).c_str() );
            assert(false);
        }
    }

    if(FT_OK != (errorCode = FT_SetStreamPipe(handler->superSpeedFIFOBridgeHandle,false,false,0x82,MEDIUM_BUFF_SIZE))) {
        for(int i = 0; i < handler->numAsyncBuffers;i++) { 
            FT_ReleaseOverlapped(handler->superSpeedFIFOBridgeHandle, vOverlapped + i);
        }
        FT_Close(handler->superSpeedFIFOBridgeHandle);
        EVLogger::Debug( (std::string("FTDI Transfer Thread failed to set stream pipe, error code ") + std::to_string(errorCode)).c_str() );
        assert(false);
    }

    //queue up the inital batch
    for(int i = 0; i < handler->numAsyncBuffers; i++) {
        if( (FT_OK | FT_IO_PENDING) != (errorCode = FT_ReadPipe(handler->superSpeedFIFOBridgeHandle,0x82,&(handler->asyncDataBuffers[i][0]),MEDIUM_BUFF_SIZE,&(asyncBytesRead[i]),vOverlapped + i))) {
            for(int i = 0; i < handler->numAsyncBuffers;i++) { 
                FT_ReleaseOverlapped(handler->superSpeedFIFOBridgeHandle, vOverlapped + i);
            }
            FT_Close(handler->superSpeedFIFOBridgeHandle);
            EVLogger::Debug( (std::string("FTDI Transfer Thread failed to que up async read, error code ") + std::to_string(errorCode)).c_str() );
            assert(false);
        } 
    }

    unsigned int idx = 0;

    while(!handler->killFTDIDataTransferThread) {
        //wait for transfer to finish once this if statment is done, handler->asyncDataBuffers[idx] has valid data
        if(FT_OK != (errorCode = FT_GetOverlappedResult(handler->superSpeedFIFOBridgeHandle,&vOverlapped[idx],&asyncBytesRead[idx],true))) {
            for(int i = 0; i < handler->numAsyncBuffers;i++) { 
                FT_ReleaseOverlapped(handler->superSpeedFIFOBridgeHandle, vOverlapped + i);
            }
            FT_Close(handler->superSpeedFIFOBridgeHandle);
            EVLogger::Debug( (std::string("FTDI Transfer Thread failed to  wait for overlapped result, error code ") + std::to_string(errorCode)).c_str() );
            assert(false);
        } 
        //re-submit the transfer request for continous streaming
        if( (FT_OK | FT_IO_PENDING) != (errorCode = FT_ReadPipe(handler->superSpeedFIFOBridgeHandle,0x82,&(handler->asyncDataBuffers[idx][0]),MEDIUM_BUFF_SIZE,&(asyncBytesRead[idx]),vOverlapped + idx))) {
            for(int i = 0; i < handler->numAsyncBuffers;i++) { 
                FT_ReleaseOverlapped(handler->superSpeedFIFOBridgeHandle, vOverlapped + i);
            }
            FT_Close(handler->superSpeedFIFOBridgeHandle);
            EVLogger::Debug( (std::string("FTDI Transfer Thread failed to  wait for overlapped result, error code ") + std::to_string(errorCode)).c_str() );
            assert(false);
        }
        //submit data to shared cache
        handler->lock.lock();
        handler->CopyFunc(handler->asyncDataBuffers[idx],copyIdx, bytesReadFromPipe, (void*)handler);
        handler->lock.unlock();
        //Keep trace of bytes transfered
        handler->bytesRead += asyncBytesRead[idx];
        //roll over
        if(++idx == handler->numAsyncBuffers) {
            idx = 0;
        }
    }
}

void DataTransferHandler::StartFTDITransferThread()
{
    if(!killFTDIDataTransferThread) {
        throw EVException(EVErrorCodeServiceAlreadyRunning,"DataTransferHandler:StartFTDITransferThread",nullptr);
    }
    
    killFTDIDataTransferThread = false;
    superSpeedFTDITransferThread = std::thread(DataTransferHandler::FTDITransferThread,this);
}

void DataTransferHandler::StopThread() {
    killFTDIDataTransferThread = true;
}

void DataTransferHandler::SetCopyFunc(CopyFuncs Func) {
    lock.lock();
    switch(Func) {
        case DataTransferFullBuffRead:
            CopyFunc = [](unsigned char* buff, unsigned int &idx, unsigned int size, void* obj)
        { ((DataTransferHandler*)obj)->threadSharedCache->SetWriteCache(buff); };
            break;
        default:
            throw EVException(EVErrorCodeInvalidValue,"DataTransferHandler::SetCopyFunc()",nullptr);
            break;
    }
    lock.unlock();
}

DataTransferHandler::~DataTransferHandler()
{
    if(superSpeedFTDITransferThread.joinable())
    {
        killFTDIDataTransferThread = true;
        superSpeedFTDITransferThread.join();
    }
    if(superSpeedFIFOBridgeHandle != 0)
    {
        FT_Close(superSpeedFIFOBridgeHandle);
    }
}
