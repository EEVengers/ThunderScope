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

    threadExists.store(false);
    stopTransfer.store(false);
    pauseTransfer.store(true);
    windowStored.store(false);

    updateWindowSize(windowSize, persistanceSize);
}

// Returns the offset of the next trigger in the current buffer
bool Processor::findNextTrigger(buffer *currentBuffer, uint32_t* p_bufCol)
{
    INFO << "p_bufCol: " << *p_bufCol;
    uint32_t t_offset = 0;

    // Find which 64 block the buffer is in
    uint32_t t_64offset = (*p_bufCol / 64);
    INFO << "p_bufCol: " << *p_bufCol
         << " t_offset: " << t_offset 
         << " t_64offset: " << t_64offset;

    if (windowCol != 0) {
        // Partialy filled window
        *p_bufCol = 0;
        // TODO: Test the partial window buffer
        INFO << "Partial Window. bufferCol = 0" << std::endl;
        return true;
    }

    for (;
         t_64offset < BUFFER_SIZE/64;
         t_64offset++) {
        if (currentBuffer->trigger[t_64offset] > 0) {
            // Found a trigger, find exact position
            t_offset = (int)(log2(currentBuffer->trigger[t_64offset]));
#ifdef DBG
            INFO << "found Trigger in 64: " << t_64offset
                 << " with val: " << currentBuffer->trigger[t_64offset]
                 << " t_offset: " << t_offset;
#endif 
            t_offset = (64 - 1) - t_offset;
#ifdef DBG
            INFO << "t_64offset corrected: " << t_64offset;
#endif
            break;
        }
    }

    if (t_64offset >= BUFFER_SIZE/64) {
        // No trigger found in buffer
        *p_bufCol = BUFFER_SIZE;
        INFO << "End of buffer reached, go to next one";
        return false;
    } else {
        *p_bufCol = ((t_offset) + (t_64offset * 64));
        INFO << "t_offset: " << t_offset
             << " t_64_offset: " << t_64offset;
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
        while (pauseTransfer.load() == false &&
               windowStored.load() == false &&
               inputQueue->pop(currentBuffer)) {

            INFO << "*** New Buffer ***";
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

                INFO << "bufferCol: " << bufferCol;
                INFO << "copyCount: " << copyCount;

                if (windowRow < persistanceSize) {
//                    // print Data to copy
//                    std::cout << "Values to copy: ";
//                    for (uint32_t i = 0; i < copyCount; i++) {
//                        std::cout << (int)*(currentBuffer->data + bufferCol + i) << ", ";
//                    }
//                    std::cout << std::endl;

                    // Copy samples into the window
                    std::memcpy(windowProcessed + (windowCol + windowRow * windowSize),
                                (currentBuffer->data + bufferCol),
                                copyCount);

//                    // print Data coppied
//                    std::cout << "Values Coppied: ";
//                    for (uint32_t i = 0; i < copyCount; i++) {
//                        std::cout << (int)*(windowProcessed +
//                                            (windowCol +
//                                             windowRow *
//                                             windowSize) + i);
//                        std::cout << ", ";
//                    }
//                    std::cout << std::endl;

                    bufferCol += copyCount;
                    windowCol += copyCount;

                    INFO << "bufferCol: " << bufferCol 
                         << " windowCol: " << windowCol
                         << " windowSize: " << windowSize
                         << std::endl;

                    // Reset the window column if its past the end
                    // (when finished a window)
                    if (windowCol == windowSize) {
                        windowCol = 0;
                        windowRow++;

                        // Push it into the next 64 space so we don't
                        // trigger on the same twice
                        bufferCol += 64;
                        INFO << "full window. windowCol: "
                             << windowCol;
                    } else {
                        // Partial window coppied
                        INFO << "partial window. windowCol: "
                             << windowCol;
                    }

                } else {
                    // Window persistance buffer filled
                    INFO << "Dumping to csv";

                    writeToCsv(filename,
                               windowProcessed,
                               persistanceSize,
                               windowSize);

                    windowStored.store(true);
                }
            }

            bufferAllocator.deallocate(currentBuffer, 1);
        }
        // Queue empty, Sleep for a bit
        std::this_thread::sleep_for(std::chrono::microseconds(100));
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
    INFO << "Created processor thread";
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
    INFO << "Destroyed processor thread";
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
    INFO << "Starting processing";
}

void Processor::processorStop()
{
    stopTransfer.store(true);
    INFO << "Stopping processing";
}

// Control the inner loop
void Processor::processorUnpause()
{
    pauseTransfer.store(false);
    INFO << "unpausing processing";
}

void Processor::processorPause()
{
    pauseTransfer.store(true);
    INFO << "pausing processing";
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
