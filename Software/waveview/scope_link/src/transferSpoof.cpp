//
//  transferSpoof.cpp
//
//  Created by Alex Vandenberg on 2020-11-08.
//  Copyright © 2020 EEVengers. All rights reserved.
//

#include "transferSpoof.hpp"

transferSpoof::transferSpoof(boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *outputQ)
{
    transferComplete.store(false);
    threadExists.store(false);

    assert(outputQ != NULL);
    outputQueue = outputQ;

    bytesRead = 0;

    clearCount();
}

void transferSpoof::coreLoop()
{
    buffer* tempBuffer;
    uint8_t num = 0;
    boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> tempQueue{1024};

    for (uint32_t i = 0; i < 1024; i++) {
        tempBuffer = bufferAllocator.allocate(1);
        bufferAllocator.construct(tempBuffer);

        for (uint32_t j = 0; j < BUFFER_SIZE; j++) {
            tempBuffer->data[i] = num;
            num++;
        }

        tempQueue.push(tempBuffer);
    }

    while (tempQueue.pop(tempBuffer)) {
        outputQueue->push(tempBuffer);
        count++;
        std::this_thread::sleep_for(std::chrono::nanoseconds(1));
    }
    transferComplete.store(true);
}

void transferSpoof::createThread()
{
    const std::lock_guard<std::mutex> lock(lockThread);

    // Check it thread created
    if (threadExists.load() == false) {
        handlerThread = std::thread(&transferSpoof::coreLoop, this);
        threadExists.store(true);
    } else {
        // Thread already created
        throw EVException(10, "createThread(): Thread already created");
    }
}

void transferSpoof::destroyThread()
{
    const std::lock_guard<std::mutex> lock(lockThread);

    if (threadExists.load() == true) {
        handlerThread.join();

        // clear thread exists flag
        threadExists.store(false);
    } else {
        // Thread does not exist
        throw EVException(10, "createThread(): thread does not exist");
    }
}

transferSpoof::~transferSpoof()
{
    handlerThread.join();
}

uint32_t transferSpoof::getCount()
{
    return count;
}

uint32_t transferSpoof::getCountBytes()
{
    return getCount() * BUFFER_SIZE;
}

void transferSpoof::setCount(uint32_t newCount)
{
    count = newCount;
}

void transferSpoof::clearCount()
{
    setCount(0);
}
