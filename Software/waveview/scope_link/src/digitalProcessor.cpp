//
//  EVDigitalProcessing.cpp
//  Scope
//
//  Created by Daniel Vasile on 2019-08-06.
//  Copyright © 2019 EEVengers. All rights reserved.
//

#include "digitalProcessor.hpp"
#include "EVMath.hpp"
#include <fstream>

//----STATIC VARIABLES---

volatile int DigitalProcessor::orderIDMax;
volatile int DigitalProcessor::currentOrderID;

//----FUNCTIONS-----

DigitalProcessor::DigitalProcessor()
{
    windowIndex = 0;
    killThread.store(true); 
}

void DigitalProcessor::risingEdgeTriggerMethod() {
    unsigned char* tempBuff = (unsigned char*)malloc(sizeof(unsigned char) * BUFFER_SIZE);
    //TODO -> Make the actual buffer size the size of the trigger window
    unsigned char* buff = (unsigned char*)malloc(sizeof(unsigned char) * BUFFER_SIZE * 8);    

    while(killThread.load() == false) {
        //wait for this thread's ID to be the one allowed to access the cache
        while(DigitalProcessor::currentOrderID != orderID) {
            if(killThread.load() == true) {
                free(tempBuff);
                free(buff);
                return;
            }
            std::this_thread::sleep_for(std::chrono::microseconds(100));
        }

        //copy until a trigger has been met
        while(1) {
            while(cache->CopyReadCache(tempBuff,BUFFER_SIZE)) {
                if(killThread.load() == true) {
                    free(tempBuff);
                    free(buff);
                    return;
                }
                std::this_thread::sleep_for(std::chrono::microseconds(100));
            }
            //TODO add trigger logic
            memcpy(buff,tempBuff,BUFFER_SIZE);
            break;
        }

        //copy the rest of the window
        for(int i = 1; i < 8; i++) {
            while(cache->CopyReadCache(tempBuff,BUFFER_SIZE)) {
                std::this_thread::sleep_for(std::chrono::microseconds(100));
            }
            memcpy(buff + (BUFFER_SIZE * i),tempBuff,BUFFER_SIZE);
        }

        //advance the orderID so the next thread gets access
        if(DigitalProcessor::currentOrderID == DigitalProcessor::orderIDMax) {
            DigitalProcessor::currentOrderID = 0;
        } else {
            DigitalProcessor::currentOrderID++;
        }
        //sinc interpolate

        //**** TODO Actually implement a proper unsinged char scope value to voltage function *****
        DataPoint* points = (DataPoint*)malloc(sizeof(DataPoint) * BUFFER_SIZE * 8);
        DataPoint* interpolatedPoints;
        for(int i = 0; i < BUFFER_SIZE * 8; i++) {
            points[i] = DataPoint{ .time = static_cast<float>(i * 0.05), .value = static_cast<float>(buff[i]) };
        }
        int newBuffSize;
        interpolatedPoints = SincInterpolate(points,BUFFER_SIZE,&newBuffSize,3,4);
        //hand data to next step
        bytesProcessed += BUFFER_SIZE * 8;
        free(points);
        free(interpolatedPoints);        
    }

    free(tempBuff);
    free(buff);
}

void DigitalProcessor::StartRisingEdgeTriggerThread() {
    if(killThread.load() == false) {
        throw EVException(1,"DigitalProcessor:StartRisingEdgeTriggerThread() -> Thread Already Started");
    }
    killThread.store(false);
    processorThread = std::thread(&DigitalProcessor::risingEdgeTriggerMethod, this);
}

void DigitalProcessor::StopThread() {
    killThread.store(true);
    if(processorThread.joinable()) {
        processorThread.join();
    }
}

void DigitalProcessor::SetSharedCache(EVSharedCache* cache) {
    this->cache = cache;
}

void DigitalProcessor::createThread()
{
    // Check it thread created
    // TODO Check if the output fifo exists
    if (threadExists.load() == false) {
        // create new thread
        processorThread = std::thread(&DigitalProcessor::risingEdgeTriggerMethod, this);

        // set thread exists flag
        threadExists.store(true);
    } else {
        // Thread already created
        throw EVException(10, "createThread(): processor thread already created");
    }
}

void DigitalProcessor::destroyThread()
{
    if (threadExists.load() == true) {
        // Stop the transer and join thread
        stopProcessor();
        processorThread.join();

        // clear thread exists flag
        threadExists.store(false);
    } else {
        // Thread does not exist
        throw EVException(10, "createThread(): thread does not exist");
    }
}

void DigitalProcessor::stopProcessor()
{
}

DigitalProcessor::~DigitalProcessor() {
}
