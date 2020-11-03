#include "trigger.hpp"

Trigger::Trigger(boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *inputQ,
                 boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *outputQ,
                 int8_t level)
{
    inputQueue = inputQ;
    outputQueue = outputQ;
    triggerLevel = level;
    clearCount();

    stopTrigger.store(false); 
    pauseTrigger.store(true); 
    threadExists.store(false);
    triggerMet.store(false);
}

bool Trigger::checkTrigger(buffer* currentBuffer)
{
//    bool trigger[BUFFER_SIZE];
    std::bitset<BUFFER_SIZE> trigger;

    // Compute the trigger
    for (int i = 0; i < BUFFER_SIZE - 1; i++) {
        trigger[i] = (currentBuffer->data[i] < triggerLevel);// && (currentBuffer->data[i+1] >= triggerLevel);
    }

    // Check the trigger
/*
    for (int i = 0; i < BUFFER_SIZE - 1; ++i) {
        if (trigger[i] == true) {

            return true;
        }
    }
*/
    if (trigger.any()) {
        return true;
    }

    return false;
}

void Trigger::coreLoop()
{
    buffer *currentBuffer;

    // Outer loop
    while (stopTrigger.load() == false) {

        // Inner Loop
        while (pauseTrigger.load() == false) {
            // Attempt to pop from the pueue
            if(inputQueue->pop(currentBuffer)) {
                count++;
                // Was able to pop from the queue
                if (triggerMet.load() == false) {
                    // Trigger on the buffer
                    if(checkTrigger(currentBuffer)){
                        triggerMet.store(true);

                        // Copy the buffer into the processed window
                        outputQueue->push(currentBuffer);
                        countTriggered++;

                        // Timestamp
                        endTrigger = std::chrono::high_resolution_clock::now();
                    } else {
                        // Trigger not met, deallocate
                        bufferAllocator.deallocate(currentBuffer, 1);
                    }
                } else if (countTriggered < windowSize) {
                    // Trigger has been met. copy full window
                    outputQueue->push(currentBuffer);
                    countTriggered++;
                } else {
                    // Window filled, deallocate
                    bufferAllocator.deallocate(currentBuffer, 1);
                }
            } else {
                // Queue empty, Sleep for a bit
                std::this_thread::sleep_for(std::chrono::microseconds(100));
            }
        }
    }
}

void Trigger::createThread()
{
    const std::lock_guard<std::mutex> lock(lockThread);

    // Check it thread created
    if (threadExists.load() == false) {
        // start thread paused
        pauseTrigger.store(true);
        stopTrigger.store(false);

        // create new thread
        triggerThread = std::thread(&Trigger::coreLoop, this);

        // set thread exists flag
        threadExists.store(true);
    } else {
        // Thread already created
        throw EVException(10, "Trigger::createThread(): Thread already created");
    }

}

void Trigger::destroyThread()
{
    const std::lock_guard<std::mutex> lock(lockThread);

    if (threadExists.load() == true) {
        // Stop the transer and join thread
        stopTrigger.store(true);
        pauseTrigger.store(true);
        triggerThread.join();

        // clear thread exists flag
        threadExists.store(false);
    } else {
        // Thread does not exist
        throw EVException(10, "createThread(): thread does not exist");
    }
}

std::chrono::high_resolution_clock::time_point Trigger::getTimeTriggerd()
{
    return endTrigger;
}

void Trigger::triggerStop()
{
    stopTrigger.store(true);
}

void Trigger::triggerStart()
{
    stopTrigger.store(false);
}

void Trigger::triggerPause()
{
    pauseTrigger.store(true);
}

void Trigger::triggerUnpause()
{
    pauseTrigger.store(false);
}

uint32_t Trigger::getCount()
{
    return count;
}

uint32_t Trigger::getCountBytes()
{
    return getCount() * BUFFER_SIZE;
}

void Trigger::setCount(uint32_t newCount)
{
    count = newCount;
}

void Trigger::clearCount()
{
    setCount(0);
}
