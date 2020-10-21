//
//  EVDigitalProcessing.hpp
//  Scope
//
//  Created by Daniel Vasile on 2019-08-06.
//  Copyright © 2019 EEVengers. All rights reserved.
//

#ifndef EVDigitalProcessing_hpp
#define EVDigitalProcessing_hpp

#include "EVLibrary.hpp"
#include "EVMath.hpp"
#include "common.hpp"
#include <atomic>
#include <boost/lockfree/queue.hpp>

class DigitalProcessor
{
public:
    DigitalProcessor();

    void SetSharedCache(EVSharedCache* cache);
    void StartRisingEdgeTriggerThread();
    unsigned int bytesProcessed; //Used for DataThroughPut Test

    void StopThread();

    void createThread();
    void destroyThread();

    ~DigitalProcessor();

private:
    void WriteToCSV(const unsigned char* buff, const unsigned int size, const char* filename);
    EVSharedCache* cache;
    int orderID;

    std::atomic<bool> killThread;
    std::atomic<bool> threadExists;
    std::atomic<bool> triggerMet;

    int triggerLevel;
    bool trigger[BUFFER_SIZE];

    unsigned int windowIndex;

    //function and thread that will copy data from the shared cache, check for a rising edge and trigger on it.
    //Data will be sinc interpolated if needed.
    std::thread processorThread;
    void risingEdgeTriggerMethod();
    void startRisingEdgeTriggerThread();

    void stopProcessor();

    bool checkTrigger();

    buffer *currentBuffer;

protected:

    static volatile int orderIDMax;
    static volatile int currentOrderID;

};

#endif /* EVDigitalProcessing_hpp */
