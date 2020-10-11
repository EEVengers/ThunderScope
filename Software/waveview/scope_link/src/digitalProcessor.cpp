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
   killThread = true; 
}

void DigitalProcessor::risingEdgeTriggerMethod(DigitalProcessor* handler) {
    unsigned char* tempBuff = (unsigned char*)malloc(sizeof(unsigned char) * MEDIUM_BUFF_SIZE);
    //TODO -> Make the actual buffer size the size of the trigger window
    unsigned char* buff = (unsigned char*)malloc(sizeof(unsigned char) * MEDIUM_BUFF_SIZE * 8);    

    while(!handler->killThread) {

        //wait for this thread's ID to be the one allowed to access the cache
        while(DigitalProcessor::currentOrderID != handler->orderID) {
            if(handler->killThread) {
                free(tempBuff);
                free(buff);
                return;
            }
            std::this_thread::sleep_for(std::chrono::microseconds(100));
        }

        //copy until a trigger has been met
        while(1) {
            while(handler->cache->CopyReadCache(tempBuff,MEDIUM_BUFF_SIZE)) {
                if(handler->killThread) {
                    free(tempBuff);
                    free(buff);
                    return;
                }
                std::this_thread::sleep_for(std::chrono::microseconds(100));
            }
            //TODO add trigger logic
            memcpy(buff,tempBuff,MEDIUM_BUFF_SIZE);
            break;
        }

        //copy the rest of the window
        for(int i = 1; i < 8; i++) {
            while(handler->cache->CopyReadCache(tempBuff,MEDIUM_BUFF_SIZE)) {
                std::this_thread::sleep_for(std::chrono::microseconds(100));
            }
            memcpy(buff + (MEDIUM_BUFF_SIZE * i),tempBuff,MEDIUM_BUFF_SIZE);
        }

        //advance the orderID so the next thread gets access
        if(DigitalProcessor::currentOrderID == DigitalProcessor::orderIDMax) {
            DigitalProcessor::currentOrderID = 0;
        } else {
            DigitalProcessor::currentOrderID++;
        }
        //sinc interpolate

        //**** TODO Actually implement a proper unsinged char scope value to voltage function *****
        DataPoint* points = (DataPoint*)malloc(sizeof(DataPoint) * MEDIUM_BUFF_SIZE * 8);
        DataPoint* interpolatedPoints;
        for(int i = 0; i < MEDIUM_BUFF_SIZE * 8; i++) {
            points[i] = DataPoint{ .time = static_cast<float>(i * 0.05), .value = static_cast<float>(buff[i]) };
        }
        int newBuffSize;
        interpolatedPoints = SincInterpolate(points,MEDIUM_BUFF_SIZE,&newBuffSize,3,4);
        //hand data to next step
        handler->bytesProcessed += MEDIUM_BUFF_SIZE * 8;
        free(points);
        free(interpolatedPoints);        
    }

    free(tempBuff);
    free(buff);
}

void DigitalProcessor::StartRisingEdgeTriggerThread() {
    if(!killThread) {
        throw EVException(1,"DigitalProcessor:StartRisingEdgeTriggerThread() -> Thread Already Started");
    }
    killThread = false;
    processorThread = std::thread(risingEdgeTriggerMethod,this);
}

void DigitalProcessor::StopThread() {
    killThread = true;
    if(processorThread.joinable()) {
        processorThread.join();
    }
}

void DigitalProcessor::SetSharedCache(EVSharedCache* cache) {
    this->cache = cache;
}

DigitalProcessor::~DigitalProcessor() {
}
