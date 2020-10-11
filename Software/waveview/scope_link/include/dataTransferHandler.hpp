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
    void StopThread();

    unsigned int bytesRead;//used for testing

    EVSharedCache* threadSharedCache;

    ~DataTransferHandler();

private:

    static void FTDITransferThread(DataTransferHandler* handler);

    FT_HANDLE superSpeedFIFOBridgeHandle;

    void (*CopyFunc)(unsigned char* buff, unsigned int& idx, unsigned int size, void* obj);

    bool killFTDIDataTransferThread;
    bool killDigitalProcessingTransferThread;
    bool killElectronTransferThread;

    std::thread superSpeedFTDITransferThread;

protected:

    std::mutex lock;

    const static unsigned int numAsyncBuffers = 16;

    unsigned char asyncDataBuffers[numAsyncBuffers][MEDIUM_BUFF_SIZE];
};

#endif /* EVDataTransferThread_hpp */
