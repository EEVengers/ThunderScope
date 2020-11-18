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
//    std::bitset<BUFFER_SIZE> trigger;
    uint64_t trigger[BUFFER_SIZE/64];

    // Compute the trigger
    for (int i = 0; i < BUFFER_SIZE/64; i++) {
        trigger[i] = (((currentBuffer->data[i * sizeof(uint64_t) + 0] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 0 + 1] >= triggerLevel)) << 0) |
                     (((currentBuffer->data[i * sizeof(uint64_t) + 1] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 1 + 1] >= triggerLevel)) << 1) |
                     (((currentBuffer->data[i * sizeof(uint64_t) + 2] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 2 + 1] >= triggerLevel)) << 2) |
                     (((currentBuffer->data[i * sizeof(uint64_t) + 3] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 3 + 1] >= triggerLevel)) << 3) |
                     (((currentBuffer->data[i * sizeof(uint64_t) + 4] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 4 + 1] >= triggerLevel)) << 4) |
                     (((currentBuffer->data[i * sizeof(uint64_t) + 5] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 5 + 1] >= triggerLevel)) << 5) |
                     (((currentBuffer->data[i * sizeof(uint64_t) + 6] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 6 + 1] >= triggerLevel)) << 6) |
                     (((currentBuffer->data[i * sizeof(uint64_t) + 7] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 7 + 1] >= triggerLevel)) << 7) |
                     (((currentBuffer->data[i * sizeof(uint64_t) + 8] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 8 + 1] >= triggerLevel)) << 8) |
                     (((currentBuffer->data[i * sizeof(uint64_t) + 9] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 9 + 1] >= triggerLevel)) << 9) |
                     (((currentBuffer->data[i * sizeof(uint64_t) + 10] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 10 + 1] >= triggerLevel)) << 10) |
                     (((currentBuffer->data[i * sizeof(uint64_t) + 11] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 11 + 1] >= triggerLevel)) << 11) |
                     (((currentBuffer->data[i * sizeof(uint64_t) + 12] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 12 + 1] >= triggerLevel)) << 12) |
                     (((currentBuffer->data[i * sizeof(uint64_t) + 13] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 13 + 1] >= triggerLevel)) << 13) |
                     (((currentBuffer->data[i * sizeof(uint64_t) + 14] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 14 + 1] >= triggerLevel)) << 14) |
                     (((currentBuffer->data[i * sizeof(uint64_t) + 15] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 15 + 1] >= triggerLevel)) << 15) |
                     (((currentBuffer->data[i * sizeof(uint64_t) + 16] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 16 + 1] >= triggerLevel)) << 16) |
                     (((currentBuffer->data[i * sizeof(uint64_t) + 17] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 17 + 1] >= triggerLevel)) << 17) |
                     (((currentBuffer->data[i * sizeof(uint64_t) + 18] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 18 + 1] >= triggerLevel)) << 18) |
                     (((currentBuffer->data[i * sizeof(uint64_t) + 19] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 19 + 1] >= triggerLevel)) << 19) |
                     (((currentBuffer->data[i * sizeof(uint64_t) + 20] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 20 + 1] >= triggerLevel)) << 20) |
                     (((currentBuffer->data[i * sizeof(uint64_t) + 21] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 21 + 1] >= triggerLevel)) << 21) |
                     (((currentBuffer->data[i * sizeof(uint64_t) + 22] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 22 + 1] >= triggerLevel)) << 22) |
                     (((currentBuffer->data[i * sizeof(uint64_t) + 23] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 23 + 1] >= triggerLevel)) << 23) |
                     (((currentBuffer->data[i * sizeof(uint64_t) + 24] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 24 + 1] >= triggerLevel)) << 24) |
                     (((currentBuffer->data[i * sizeof(uint64_t) + 25] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 25 + 1] >= triggerLevel)) << 25) |
                     (((currentBuffer->data[i * sizeof(uint64_t) + 26] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 26 + 1] >= triggerLevel)) << 26) |
                     (((currentBuffer->data[i * sizeof(uint64_t) + 27] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 27 + 1] >= triggerLevel)) << 27) |
                     (((currentBuffer->data[i * sizeof(uint64_t) + 28] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 28 + 1] >= triggerLevel)) << 28) |
                     (((currentBuffer->data[i * sizeof(uint64_t) + 29] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 29 + 1] >= triggerLevel)) << 29) |
                     (((currentBuffer->data[i * sizeof(uint64_t) + 30] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 30 + 1] >= triggerLevel)) << 30) |
                     (((currentBuffer->data[i * sizeof(uint64_t) + 31] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 31 + 1] >= triggerLevel)) << 31) |
                     ((uint64_t)((currentBuffer->data[i * sizeof(uint64_t) + 32] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 32 + 1] >= triggerLevel)) << 32) |
                     ((uint64_t)((currentBuffer->data[i * sizeof(uint64_t) + 33] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 33 + 1] >= triggerLevel)) << 33) |
                     ((uint64_t)((currentBuffer->data[i * sizeof(uint64_t) + 34] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 34 + 1] >= triggerLevel)) << 34) |
                     ((uint64_t)((currentBuffer->data[i * sizeof(uint64_t) + 35] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 35 + 1] >= triggerLevel)) << 35) |
                     ((uint64_t)((currentBuffer->data[i * sizeof(uint64_t) + 36] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 36 + 1] >= triggerLevel)) << 36) |
                     ((uint64_t)((currentBuffer->data[i * sizeof(uint64_t) + 37] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 37 + 1] >= triggerLevel)) << 37) |
                     ((uint64_t)((currentBuffer->data[i * sizeof(uint64_t) + 38] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 38 + 1] >= triggerLevel)) << 38) |
                     ((uint64_t)((currentBuffer->data[i * sizeof(uint64_t) + 39] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 39 + 1] >= triggerLevel)) << 39) |
                     ((uint64_t)((currentBuffer->data[i * sizeof(uint64_t) + 40] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 40 + 1] >= triggerLevel)) << 40) |
                     ((uint64_t)((currentBuffer->data[i * sizeof(uint64_t) + 41] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 41 + 1] >= triggerLevel)) << 41) |
                     ((uint64_t)((currentBuffer->data[i * sizeof(uint64_t) + 42] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 42 + 1] >= triggerLevel)) << 42) |
                     ((uint64_t)((currentBuffer->data[i * sizeof(uint64_t) + 43] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 43 + 1] >= triggerLevel)) << 43) |
                     ((uint64_t)((currentBuffer->data[i * sizeof(uint64_t) + 44] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 44 + 1] >= triggerLevel)) << 44) |
                     ((uint64_t)((currentBuffer->data[i * sizeof(uint64_t) + 45] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 45 + 1] >= triggerLevel)) << 45) |
                     ((uint64_t)((currentBuffer->data[i * sizeof(uint64_t) + 46] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 46 + 1] >= triggerLevel)) << 46) |
                     ((uint64_t)((currentBuffer->data[i * sizeof(uint64_t) + 47] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 47 + 1] >= triggerLevel)) << 47) |
                     ((uint64_t)((currentBuffer->data[i * sizeof(uint64_t) + 48] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 48 + 1] >= triggerLevel)) << 48) |
                     ((uint64_t)((currentBuffer->data[i * sizeof(uint64_t) + 49] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 49 + 1] >= triggerLevel)) << 49) |
                     ((uint64_t)((currentBuffer->data[i * sizeof(uint64_t) + 50] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 50 + 1] >= triggerLevel)) << 50) |
                     ((uint64_t)((currentBuffer->data[i * sizeof(uint64_t) + 51] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 51 + 1] >= triggerLevel)) << 51) |
                     ((uint64_t)((currentBuffer->data[i * sizeof(uint64_t) + 52] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 52 + 1] >= triggerLevel)) << 52) |
                     ((uint64_t)((currentBuffer->data[i * sizeof(uint64_t) + 53] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 53 + 1] >= triggerLevel)) << 53) |
                     ((uint64_t)((currentBuffer->data[i * sizeof(uint64_t) + 54] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 54 + 1] >= triggerLevel)) << 54) |
                     ((uint64_t)((currentBuffer->data[i * sizeof(uint64_t) + 55] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 55 + 1] >= triggerLevel)) << 55) |
                     ((uint64_t)((currentBuffer->data[i * sizeof(uint64_t) + 56] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 56 + 1] >= triggerLevel)) << 56) |
                     ((uint64_t)((currentBuffer->data[i * sizeof(uint64_t) + 57] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 57 + 1] >= triggerLevel)) << 57) |
                     ((uint64_t)((currentBuffer->data[i * sizeof(uint64_t) + 58] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 58 + 1] >= triggerLevel)) << 58) |
                     ((uint64_t)((currentBuffer->data[i * sizeof(uint64_t) + 59] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 59 + 1] >= triggerLevel)) << 59) |
                     ((uint64_t)((currentBuffer->data[i * sizeof(uint64_t) + 60] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 60 + 1] >= triggerLevel)) << 60) |
                     ((uint64_t)((currentBuffer->data[i * sizeof(uint64_t) + 61] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 61 + 1] >= triggerLevel)) << 61) |
                     ((uint64_t)((currentBuffer->data[i * sizeof(uint64_t) + 62] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 62 + 1] >= triggerLevel)) << 62) |
                     ((uint64_t)((currentBuffer->data[i * sizeof(uint64_t) + 63] < triggerLevel) &&
                       (currentBuffer->data[i * sizeof(uint64_t) + 63 + 1] >= triggerLevel)) << 63);
    }

    // Check the trigger
/*
    for (int i = 0; i < BUFFER_SIZE - 1; ++i) {
        if (trigger[i] == true) {

            return true;
        }
    }
*/
//    if (trigger.any()) {
//        return true;
//    }
    for (int i = 0; i < BUFFER_SIZE/64; i++) {
        if (trigger[i] > 0) {
            return true;
        }
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
