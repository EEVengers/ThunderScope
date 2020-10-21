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

#include "dataTransferHandler.hpp"
#include "EVSuperSpeedFIFOBridge.hpp"

DataTransferHandler::DataTransferHandler(boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *outputQ)
{
    pauseTransfer.store(true);
    stopTransfer.store(false);
    threadExists.store(false);

    assert(outputQ != NULL);
    outputQueue = outputQ;

    clearCount();

    try {
        InitFTDISuperSpeedChip(&superSpeedFIFOBridgeHandle); 

        threadSharedCache = new EVSharedCache(BUFFER_SIZE,10);

        CopyFunc = [](unsigned char* buff, unsigned int& idx, unsigned int size, void* obj){ return; };

    } catch (EVException &e) {
        std::cout << "DataTransferHandler:Constructor - " << e.what() << std::endl;
        assert(false);
    } catch (std::exception &e) {
        std::cout << "DataTransferHandler:Constructor - " << e.what() << std::endl;
        assert(false);
    }
}

void DataTransferHandler::transferStart()
{
    stopTransfer.store(false);
}

void DataTransferHandler::transferStop()
{
    stopTransfer.store(true);
}

void DataTransferHandler::transferUnpause()
{
    pauseTransfer.store(false);
}

void DataTransferHandler::transferPause()
{
    pauseTransfer.store(true);
}

void DataTransferHandler::FTDITransferThread()
{
    unsigned int bytesReadFromPipe = 0;
    unsigned int errorCode;
    unsigned int copyIdx = 0;

#ifdef ON_LINUX // Linux does not allow for async reads
    // Outerloop
    while(!stopTransfer.load()) {
        //Innerloop
        while (!pauseTransfer.load()) {
            //read a chunck from the FTDI chip
            lock.lock();
    
            asyncDataBuffers[0] = bufferAllocator.allocate(1);
            bufferAllocator.construct(asyncDataBuffers[0]);

            errorCode = FT_ReadPipe(superSpeedFIFOBridgeHandle,
                                    FTDI_FLAG_READ_CHIP_TO_COMPUTER,
                                    asyncDataBuffers[0]->data,
                                    BUFFER_SIZE,
                                    &bytesReadFromPipe,
                                    nullptr);
    
            if (errorCode != 0 || bytesReadFromPipe != BUFFER_SIZE) {
                throw EVException(errorCode,"DataTransferHandler:FTDITransferThread:FT_ReadPipe()");
            }
    

            //transfer chunck to shared cache
//            CopyFunc(asyncDataBuffers[0]->data, copyIdx, bytesReadFromPipe, (void*)this);

            count++;
            outputQueue->push(asyncDataBuffers[0]);
//            bufferAllocator.deallocate(asyncDataBuffers[0], 1);

            lock.unlock();

            bytesRead += bytesReadFromPipe;
            bytesReadFromPipe = 0;
        }

        // Busy wait the for either unpausing or killing the thread
        std::this_thread::sleep_for(std::chrono::milliseconds(150));
    }

#else // Windows Implementation allows for overlapped async reads
    unsigned int asyncBytesRead[numAsyncBuffers];
    OVERLAPPED vOverlapped[numAsyncBuffers];


    for(unsigned int i = 0; i < numAsyncBuffers; i++) {
        errorCode = FT_InitializeOverlapped(superSpeedFIFOBridgeHandle,
                                            &(vOverlapped[i]));
        if(errorCode != FT_OK) {
            FT_Close(superSpeedFIFOBridgeHandle);
            EVLogger::Debug( (std::string("FTDI Transfer Thread failed to init overlapped at index ")
                              + std::to_string(i) + std::string(", error code ")
                              + std::to_string(errorCode)).c_str() );
            assert(false);
        }
    }

    errorCode = FT_SetStreamPipe(superSpeedFIFOBridgeHandle,
                                 false,
                                 false,
                                 0x82,
                                 BUFFER_SIZE);
    if(errorCode != FT_OK) {
        for(unsigned int i = 0; i < numAsyncBuffers;i++) { 
            FT_ReleaseOverlapped(superSpeedFIFOBridgeHandle, vOverlapped + i);
        }
        FT_Close(superSpeedFIFOBridgeHandle);
        EVLogger::Debug( (std::string("FTDI Transfer Thread failed to set stream pipe, error code ")
                          + std::to_string(errorCode)).c_str() );
        assert(false);
    }

    //queue up the inital batch
    for(unsigned int i = 0; i < numAsyncBuffers; i++) {
        errorCode = FT_ReadPipe(superSpeedFIFOBridgeHandle,
                                0x82,
                                asyncDataBuffers[i]->data,
                                BUFFER_SIZE,
                                &(asyncBytesRead[i]),
                                vOverlapped + i);
        if(errorCode !=  (FT_OK | FT_IO_PENDING)) {
            for(unsigned int i = 0; i < numAsyncBuffers;i++) { 
                FT_ReleaseOverlapped(superSpeedFIFOBridgeHandle, vOverlapped + i);
            }
            FT_Close(superSpeedFIFOBridgeHandle);
            EVLogger::Debug( (std::string("FTDI Transfer Thread failed to queue up async read, error code ")
                              + std::to_string(errorCode)).c_str() );
            assert(false);
        }
    }

    unsigned int idx = 0;

    // Outerloop
    while(!stopTransfer.load()) {
        //Innerloop
        while (!pauseTransfer.load()) {
            //wait for transfer to finish once this if statment is done, asyncDataBuffers[idx] has valid data
            errorCode = FT_GetOverlappedResult(superSpeedFIFOBridgeHandle,
                                               &vOverlapped[idx],
                                               &asyncBytesRead[idx],
                                               true);
            if (errorCode != FT_OK) {
                for(unsigned int i = 0; i < numAsyncBuffers;i++) { 
                    FT_ReleaseOverlapped(superSpeedFIFOBridgeHandle, vOverlapped + i);
                }
                FT_Close(superSpeedFIFOBridgeHandle);
                EVLogger::Debug( (std::string("FTDI Transfer Thread failed to  wait for overlapped result, error code ")
                                  + std::to_string(errorCode)).c_str() );
                assert(false);
            } 

            //re-submit the transfer request for continous streaming
            errorCode = FT_ReadPipe(superSpeedFIFOBridgeHandle,
                                    0x82,
                                    asyncDataBuffers[idx]->data,
                                    BUFFER_SIZE,
                                    &(asyncBytesRead[idx]),
                                    vOverlapped + idx);
            if (errorCode != (FT_OK | FT_IO_PENDING)) {
                for(unsigned int i = 0; i < numAsyncBuffers;i++) { 
                    FT_ReleaseOverlapped(superSpeedFIFOBridgeHandle, vOverlapped + i);
                }
                FT_Close(superSpeedFIFOBridgeHandle);
                EVLogger::Debug( (std::string("FTDI Transfer Thread failed to  wait for overlapped result, error code ")
                                  + std::to_string(errorCode)).c_str() );
                assert(false);
            }
            //submit data to shared cache
            lock.lock();
            CopyFunc(asyncDataBuffers[idx]->data,copyIdx, bytesReadFromPipe, (void*)this);
            lock.unlock();
            //Keep trace of bytes transfered
            bytesRead += asyncBytesRead[idx];
            //roll over
            if(++idx == numAsyncBuffers) {
                idx = 0;
            }
        }
    }
#endif
}

void DataTransferHandler::createThread()
{
    const std::lock_guard<std::mutex> lock(lockThread);

    // Check it thread created
    // TODO Check if the output fifo exists
    if (threadExists.load() == false) {
        // create new thread
        handlerThread = std::thread(&DataTransferHandler::FTDITransferThread, this);

        // set thread exists flag
        threadExists.store(true);
    } else {
        // Thread already created
        throw EVException(10, "createThread(): Thread already created");
    }

}

void DataTransferHandler::destroyThread()
{
    const std::lock_guard<std::mutex> lock(lockThread);

    if (threadExists.load() == true) {
        // Stop the transer and join thread
        stopHandler();
        handlerThread.join();

        // clear thread exists flag
        threadExists.store(false);
    } else {
        // Thread does not exist
        throw EVException(10, "createThread(): thread does not exist");
    }
}

void DataTransferHandler::stopHandler()
{
    transferPause();
    transferStop();
}

void DataTransferHandler::SetCopyFunc(CopyFuncs Func)
{
    lock.lock();
    switch(Func) {
        case DataTransferFullBuffRead:
            CopyFunc = [](unsigned char* buff, unsigned int &idx, unsigned int size, void* obj)
            { ((DataTransferHandler*)obj)->threadSharedCache->SetWriteCache(buff); };
            break;
        default:
            throw EVException(EVErrorCodeInvalidValue,"DataTransferHandler::SetCopyFunc()");
            break;
    }
    lock.unlock();
}

DataTransferHandler::~DataTransferHandler()
{
    transferPause();
    transferStop();

    if(superSpeedFIFOBridgeHandle != 0)
    {
        FT_Close(superSpeedFIFOBridgeHandle);
    }
}

uint32_t DataTransferHandler::getCount()
{
    return count;
}

uint32_t DataTransferHandler::getCountBytes()
{
    return getCount() * BUFFER_SIZE;
}

void DataTransferHandler::setCount(uint32_t newCount)
{
    count = newCount;
}

void DataTransferHandler::clearCount()
{
    setCount(0);
}
