//
//  EVDataTransferThread.hpp
//  Scope
//
//  Created by Daniel Vasile on 2019-07-30.
//  Copyright © 2019 EEVengers. All rights reserved.
//

#ifndef EVDataTransferThread_hpp
#define EVDataTransferThread_hpp

#include "EVLibrary.hpp"
#include <atomic>

enum CopyFuncs
{
    DataTransferFullBuffRead 
};

/*
 Container class that encapsulates all data transfers that occur in this program.
 FTDIChip -> DataHandler
 DataHandler -> DigitalProcessingHandler
 DigitalProcessingHandler -> Electron app
 */
class DataTransferHandler
{
public:

    DataTransferHandler();

    void StartFTDITransferThread();
    void SetFTDITransferCopyFunction();
    void SetCopyFunc(CopyFuncs Func);
    void stopHandler();

    // Control the inner and outer transfer loops
    void transferStop();
    void transferStart();
    void transferUnpause();
    void transferPause();

    unsigned int bytesRead;//used for testing

    EVSharedCache* threadSharedCache;

    ~DataTransferHandler();

    void FTDITransferThread();

private:


    FT_HANDLE superSpeedFIFOBridgeHandle;

    void (*CopyFunc)(unsigned char* buff, unsigned int& idx, unsigned int size, void* obj);

    std::atomic<bool> stopTransfer;
    std::atomic<bool> pauseTransfer;

protected:

    std::mutex lock;

    const static unsigned int numAsyncBuffers = 16;

    unsigned char asyncDataBuffers[numAsyncBuffers][BUFFER_SIZE];
};

#endif /* EVDataTransferThread_hpp */
