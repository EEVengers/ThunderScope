//
//  EVDataTransferThread.hpp
//  Scope
//
//  Created by Daniel Vasile on 2019-07-30.
//  Copyright © 2019 EEVengers. All rights reserved.
//

#ifndef transferSpoof_hpp
#define transferSpoof_hpp

#include "EVLibrary.hpp"
#include <atomic>
#include <boost/lockfree/queue.hpp>
#include "common.hpp"

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
class transferSpoof
{
public:

    transferSpoof(boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *outputQ);

    uint64_t bytesRead;//used for testing

    ~transferSpoof();

    void createThread();
    void destroyThread();

    uint32_t getCount();
    uint32_t getCountBytes();
    void setCount(uint32_t);
    void clearCount();

private:
    boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *outputQueue;

    void coreLoop();

    std::atomic<bool> transferComplete;
    std::atomic<bool> threadExists;

    std::thread handlerThread;

    uint32_t count;

protected:

    std::mutex lockThread;
};

#endif
