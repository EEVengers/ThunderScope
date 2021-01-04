//
//  EVDataTransferThread.hpp
//  Scope
//
//  Created by Daniel Vasile on 2019-07-30.
//  Copyright © 2019 EEVengers. All rights reserved.
//

#ifndef EVDataTransferThread_hpp
#define EVDataTransferThread_hpp

#include <atomic>
#include <boost/lockfree/queue.hpp>

#include "EVLibrary.hpp"
#include "common.hpp"
#include "exception.hpp"

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

    DataTransferHandler(boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *outputQ);

    void StartFTDITransferThread();
    void SetFTDITransferCopyFunction();
    void SetCopyFunc(CopyFuncs Func);
    void stopHandler();

    uint64_t bytesRead;//used for testing

    EVSharedCache* threadSharedCache;

    ~DataTransferHandler();

    void createThread();
    void destroyThread();

    uint32_t getCount();
    uint32_t getCountBytes();
    void setCount(uint32_t);
    void clearCount();

    // Control the inner and outer transfer loops
    void transferStop();
    void transferStart();
    void transferUnpause();
    void transferPause();

private:
    boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *outputQueue;

    void FTDITransferThread();

    FT_HANDLE superSpeedFIFOBridgeHandle;

    void (*CopyFunc)(unsigned char* buff, unsigned int& idx, unsigned int size, void* obj);

    std::atomic<bool> stopTransfer;
    std::atomic<bool> pauseTransfer;
    std::atomic<bool> threadExists;

    std::thread handlerThread;

    uint32_t count;

protected:

    std::mutex lock;
    std::mutex lockThread;

    const static unsigned int numAsyncBuffers = 16;

    buffer *asyncDataBuffers[numAsyncBuffers];
};

#endif /* EVDataTransferThread_hpp */
