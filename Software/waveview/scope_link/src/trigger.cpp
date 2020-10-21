#include "trigger.hpp"

Trigger::Trigger(boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *inputQ,
                 boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *outputQ,
                 int level)
{
    inputQueue = inputQ;
    outputQueue = outputQ;
    triggerLevel = level;
    clearCount();

    stopTransfer.store(false); 
    threadExists.store(false);
    triggerMet.store(false);
}

bool Trigger::checkTrigger(buffer* currentBuffer)
{
    // Compute the trigger
    for (int i = 0; i < BUFFER_SIZE - 1; ++i) {
        trigger[i] = (currentBuffer->data[i] < triggerLevel) && (currentBuffer->data[i+1] >= triggerLevel);
    }

    // Check the trigger
    for (int i = 0; i < BUFFER_SIZE - 1; ++i) {
        if (trigger[i] == true) {
            return true;
        }
    }

    return false;
}

void Trigger::coreLoop()
{
    buffer *currentBuffer;

    while (stopTransfer.load() == false) {
        // Attempt to pop from the pueue
        if(inputQueue->pop(currentBuffer)) {
            count++;
            // Was able to pop from the queue
            if (triggerMet.load() == false) {
                // Trigger on the buffer
                if(checkTrigger(currentBuffer)){
                    triggerMet.store(true);

                    std::cout << "Trigger Met" << std::endl;

                    // Copy the buffer into the processed window
                    outputQueue->push(currentBuffer);
                    countTriggered++;
                }
            } else { //if (countTriggered < windowSize) {
                // Trigger has been met. copy full window
                outputQueue->push(currentBuffer);
                countTriggered++;
            }
        } else {
            // Queue empty, Sleep for a bit
            std::this_thread::sleep_for(std::chrono::microseconds(100));
        }
    }
}

void Trigger::createThread()
{
    const std::lock_guard<std::mutex> lock(lockThread);

    // Check it thread created
    // TODO Check if the output fifo exists
    if (threadExists.load() == false) {
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
        stopTransfer.store(true);
        triggerThread.join();

        // clear thread exists flag
        threadExists.store(false);
    } else {
        // Thread does not exist
        throw EVException(10, "createThread(): thread does not exist");
    }
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
