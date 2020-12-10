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

    windowProcessed = NULL;
//    windowProcessed = windowAllocator.allocate(windowSize * BUFFER_SIZE);

    threadExists.store(false);
    stopTransfer.store(false);
    pauseTransfer.store(true);
    windowStored.store(false);

    updateWindowSize(windowSize, persistanceSize);
}

// Returns the offset of the next trigger in the current buffer
bool Processor::findNextTrigger(buffer *currentBuffer, uint32_t* p_bufCol)
{
    uint32_t t_offset = 0;

    // Find which 64 block the buffer is in
    uint32_t t_64offset = (*p_bufCol % 64);

    if (windowCol != 0) {
        // Partialy filled window
        *p_bufCol = 0;
        std::cout << "Partial Window. bufferCol = 0" << std::endl;
        return true;
    }

    for (;
         t_64offset < BUFFER_SIZE/64;
         t_64offset++) {
        if (currentBuffer->trigger[t_64offset] > 0) {
            // Found a trigger, find exact position
            t_offset = log2(currentBuffer->trigger[t_64offset]);
            break;
        }
    }

    if (t_64offset >= BUFFER_SIZE/64) {
        // No trigger found in buffer
        *p_bufCol = BUFFER_SIZE;
        std::cout << "End of buffer reached, go to next one" << std::endl;
        return false;
    } else {
        *p_bufCol = ((t_offset) + (t_64offset * 64));
        std::cout << "t_offset: " << t_offset;
        std::cout << " t_64_offset: " << t_64offset << std::endl;
        return true;
    }
}

void Processor::coreLoop()
{
    buffer *currentBuffer;
    char filename[] = "dump.csv";

    windowCol = 0;
    windowRow = 0;
    bufferCol = 0;

    uint32_t copyCount = 0;

    // Outer loop
    while (stopTransfer.load() == false) {

        // Inner loop
        while (pauseTransfer.load() == false && windowStored.load() == false) {
            if (inputQueue->pop(currentBuffer)) {
                std::cout << "New Buffer" << std::endl;
                // New buffer, reset variables
                count++;
                bufferCol = 0;

//                findNextTrigger( currentBuffer, &bufferCol);
                // TODO: Reorganize the findowStored condition
                //       It currently needs to find a trigger after the last trigger
                //       needed (persistance full). Should detect this before hand
                while (findNextTrigger( currentBuffer, &bufferCol) && !windowStored.load())
                    {

                    // Determin how much to copy. Min of:
                    // - remaining space in the window
                    // - remaining space in a buffer
                    copyCount = std::min(windowSize - windowCol, BUFFER_SIZE - bufferCol);

                    std::cout << "bufferCol: " << bufferCol << std::endl;
                    std::cout << "copyCount: " << copyCount << std::endl;

                    if (windowRow < persistanceSize) {
                        // print Data to copy
                        std::cout << "Values to copy: ";
                        for (uint32_t i = 0; i < copyCount; i++) {
                            std::cout << (int)*(currentBuffer->data + bufferCol + i) << ", ";
                        }
                        std::cout << std::endl;

                        // Copy samples into the window
                        std::memcpy(windowProcessed + (windowCol + windowRow * windowSize),
                                    (currentBuffer->data + bufferCol),
                                    copyCount);

                        // print Data coppied
                        std::cout << "Values Coppied: ";
                        for (uint32_t i = 0; i < copyCount; i++) {
                            std::cout << (int)*(windowProcessed +
                                                (windowCol + windowRow * windowSize) + i) << ", ";
                        }
                        std::cout << std::endl;

                        bufferCol += copyCount;
                        windowCol += copyCount;

                        std::cout << "bufferCol: " << bufferCol << " windowCol: " << windowCol;
                        std::cout << " windowSize: " << windowSize << std::endl;

                        // Reset the window column if its past the end (when finished a window)
                        if (windowCol == windowSize) {
                            windowCol = 0;
                            windowRow++;

                            // Push it into the next 64 space so we don't trigger on the same twice
                            bufferCol += 64;
                            std::cout << "full window. windowCol: " << windowCol << std::endl;
                        } else {
                            // Partial window coppied
                            std::cout << "partial window. windowCol: " << windowCol << std::endl;
                        }

                    } else {
                        // Window persistance buffer filled
                        std::cout << "Dumping to csv" << std::endl;

                        writeToCsv(filename,
                                   windowProcessed,
                                   persistanceSize,
                                   windowSize);

                        windowStored.store(true);
                    }

                    std::cout << std::endl;
                }

                bufferAllocator.deallocate(currentBuffer, 1);
            } else {
                // Queue empty, Sleep for a bit
                std::this_thread::sleep_for(std::chrono::microseconds(100));
            }
        }
    }
}

void Processor::updateWindowSize(uint32_t newWinSize, uint32_t newPerSize)
{
    // Delete old window space
    if (windowProcessed != NULL) {
        delete windowProcessed;
    }

    // Update sizes
    windowSize = newWinSize;
    persistanceSize = newPerSize;

    // Update position in window space
    windowCol = 0;
    windowRow = 0;

    // Create a new window space as a single array
    windowProcessed = new int8_t [windowSize * persistanceSize];
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
    std::cout << "Created processor thread" << std::endl;
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
    std::cout << "Destroyed processor thread" << std::endl;
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
    std::cout << "Starting processing" << std::endl;
}

void Processor::processorStop()
{
    stopTransfer.store(true);
    std::cout << "Stopping processing" << std::endl;
}

// Control the inner loop
void Processor::processorUnpause()
{
    pauseTransfer.store(false);
    std::cout << "unpausing processing" << std::endl;
}

void Processor::processorPause()
{
    pauseTransfer.store(true);
    std::cout << "pausing processing" << std::endl;
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
