#include "processor.hpp"
#include "logger.hpp"
#include "common.hpp"

Processor::Processor(boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *inputQ)
{
    // Check that queues exist
    assert(inputQ != NULL);

    // Initialize variables
    inputQueue = inputQ;

    clearCount();
    countProcessed = 0;

    // This should also be using a pool allocator
    windowProcessed = windowAllocator.allocate(windowSize * BUFFER_SIZE);

    threadExists.store(false);
    stopTransfer.store(false);
    pauseTransfer.store(true);
    windowStored.store(false);
}

void Processor::coreLoop()
{
    buffer *currentBuffer;
    char filename[] = "dump.csv";

    // Outer loop
    while (stopTransfer.load() == false) {

        // Inner loop
        while (pauseTransfer.load() == false) {
            if (inputQueue->pop(currentBuffer)) {
                count++;

                if (!windowStored.load()) {
                    if (countProcessed >= windowSize) {
                        // Save timestamp of storing
                        windowFilled = std::chrono::high_resolution_clock::now();
                        // window is filled
                        writeToCsv(filename,
                                   (char*) windowProcessed,
                                   windowSize * BUFFER_SIZE);
                        windowStored.store(true);

                        // Save timestamp of writing
                        windowWritten = std::chrono::high_resolution_clock::now();
                    } else {
                        // window not filled
                        // Copy the buffer into the processed window
                        for (uint32_t i = 0; i < BUFFER_SIZE; i++) {
                            windowProcessed[countProcessed * BUFFER_SIZE + i] = currentBuffer->data[i];
                        }
                        countProcessed++;
                    }
                }
                bufferAllocator.deallocate(currentBuffer, 1);
            } else {
                // Queue empty, Sleep for a bit
                std::this_thread::sleep_for(std::chrono::microseconds(100));
            }
        }
    }
}

void Processor::createThread()
{
    const std::lock_guard<std::mutex> lock(lockThread);

    // Check it thread created
    if (threadExists.load() == false) {
        // create new thread
        processorThread = std::thread(&Processor::coreLoop, this);

        // set thread exists flag
        threadExists.store(true);
    } else {
        // Thread already created
        throw EVException(10, "Processor::createThread(): Thread already created");
    }

}

void Processor::destroyThread()
{
    const std::lock_guard<std::mutex> lock(lockThread);

    if (threadExists.load() == true) {
        // Stop the transer and join thread
        processorPause();
        processorStop();
        processorThread.join();

        // clear thread exists flag
        threadExists.store(false);
    } else {
        // Thread does not exist
        throw EVException(10, "createThread(): thread does not exist");
    }
}


std::chrono::high_resolution_clock::time_point Processor::getTimeFilled()
{
    return windowFilled;
}

std::chrono::high_resolution_clock::time_point Processor::getTimeWritten()
{
    return windowWritten;
}

// Control the outer loop
void Processor::processorStart()
{
    stopTransfer.store(false);
}

void Processor::processorStop()
{
    stopTransfer.store(true);
}

// Control the inner loop
void Processor::processorUnpause()
{
    pauseTransfer.store(false);
}

void Processor::processorPause()
{
    pauseTransfer.store(true);
}

// Statistics
uint32_t Processor::getCount()
{
    return count;
}

uint32_t Processor::getCountBytes()
{
    return getCount() * BUFFER_SIZE;
}

void Processor::setCount(uint32_t newCount)
{
    count = newCount;
}

void Processor::clearCount()
{
    setCount(0);
}

bool Processor::getWindowStatus()
{
    return windowStored.load();
}
