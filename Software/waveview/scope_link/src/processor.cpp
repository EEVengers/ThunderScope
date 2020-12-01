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

//    windowProcessed = windowAllocator.allocate(windowSize * BUFFER_SIZE);

    threadExists.store(false);
    stopTransfer.store(false);
    pauseTransfer.store(true);
    windowStored.store(false);

    updateWindowSize(windowSize, persistanceSize);
}

void Processor::copyProcess( int8_t * src, int8_t * dst, uint32_t count)
{
    // TODO: Add actuall post processing into the loop
    // Determin how many to count so we dont have to break out of a for loop
    // minimum of the remaining space in the window and the remaining samples
    // in the buffer

    for (uint32_t i = 0; i < count; i++) {
        dst[i] = src[i];
        std::cout << i << "-" << (int)dst[i] << ",";
    }

    std::cout << std::endl;
}

// Returns the offset of the next trigger in the current buffer
uint32_t Processor::findNextTrigger( buffer *currentBuffer )
{
    uint32_t t_offset = 0;
    uint32_t t_64offset = 0;
    for (t_64offset = 0;
         t_64offset < BUFFER_SIZE/64;
         t_64offset++) {
        if (currentBuffer->trigger[t_64offset] > 0) {
            // Found a trigger, find exact position
            t_offset = log2(currentBuffer->trigger[t_64offset]);
            break;
        }
    }
    std::cout << "t_offset: " << t_offset;
    std::cout << " t_64_offset: " << t_64offset << std::endl;
    return ((t_offset) + (t_64offset * 64));
}

void Processor::coreLoop()
{
    buffer *currentBuffer;
    char filename[] = "dump.csv";

    windowCol = 0;
    windowRow = 0;

    // Outer loop
    while (stopTransfer.load() == false) {

        // Inner loop
        while (pauseTransfer.load() == false || windowStored.load() == false) {
            if (inputQueue->pop(currentBuffer)) {
                count++;

                /*
                // If not at the start of a windoW
                if (windowCol != 0) {
                //      copy from beginning of buffer until end of window
                //      push window into next stage or just increment the row index
                    bufferIndex += (windowSize - windowCol);
                }
                */


                // Now at start of new window (possibly with buffer offset
                // Check next trigger set > 0
                //      Start copying until end or no more samples
                //      If end, push window into next stage

                if (windowRow < persistanceSize) {
                    // Check the trigger
                    std::cout << findNextTrigger( currentBuffer ) << std::endl;
                    //currentBuffer->trigger[i]

                    copyProcess(currentBuffer->data,
                        windowProcessed + (windowCol + windowRow * windowSize),
                        windowSize);
                    windowRow++;
                } else {
                    // Window persistance buffer filled

                    writeToCsv(filename,
                               (char*)windowProcessed,
                               persistanceSize,
                               windowSize);

                    windowStored.store(true);
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
