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
    windowStored.store(false);
}

void Processor::coreLoop()
{
    buffer *currentBuffer;

    while (stopTransfer.load() == false) {

        if (inputQueue->pop(currentBuffer)) {
            count++;

            if (!windowStored.load()) {
                if (countProcessed >= windowSize) {
                    std::cout << "window filled, Writing" << std::endl;
                    // window is filled
                    char filename[] = "dump.csv";
                    writeToCsv(filename,
                               windowProcessed,
                               windowSize * BUFFER_SIZE);
                    windowStored.store(true);
                    std::cout << "Stored window" << std::endl;
                } else {
                    // window not filled
                    // Copy the buffer into the processed window
                    for (uint32_t i = 0;
                         i < BUFFER_SIZE;
                         i++) {
                        windowProcessed[countProcessed * BUFFER_SIZE + i] = currentBuffer->data[i];
                    }

                    std::cout << "Stored window" << std::endl;

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

void Processor::createThread()
{
    const std::lock_guard<std::mutex> lock(lockThread);

    // Check it thread created
    // TODO Check if the output fifo exists
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
        stopTransfer.store(true);
        processorThread.join();

        // clear thread exists flag
        threadExists.store(false);
    } else {
        // Thread does not exist
        throw EVException(10, "createThread(): thread does not exist");
    }
}

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
