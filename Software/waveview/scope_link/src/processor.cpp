#include "processor.hpp"
#include "logger.hpp"
#include "common.hpp"

Processor::Processor(
        boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *inputQ,
        boost::lockfree::queue<int8_t*, boost::lockfree::fixed_sized<false>> *outputQ)
{
    // Check that queues exist
    assert(inputQ != NULL);

    // Initialize variables
    inputQueue = inputQ;
    outputQueue = outputQ;

    clearCount();
    countProcessed = 0;

    windowProcessed = NULL;

    stopTransfer.store(false);
    pauseTransfer.store(true);
    windowStored.store(false);

    updateWinPerSize(windowSize, persistanceSize);

    // create new thread
    processorThread = std::thread(&Processor::coreLoop, this);

    INFO << "Created processor thread";
}

Processor::~Processor(void)
{
    INFO << "Processor Destructor Called";

    // Stop the transer and join thread
    processorPause();
    processorStop();
    processorThread.join();

    INFO << "Destroyed processor thread";
}

// Returns the offset of the next trigger in the current buffer
bool Processor::findNextTrigger(buffer *currentBuffer, uint32_t* p_bufCol)
{
    INFO << "** Finding Next Trigger **";
    INFO << "p_bufCol: " << *p_bufCol;
    uint32_t t_offset = 0;

    // Find which 64 block the buffer is in
    uint32_t t_64offset = (*p_bufCol / 64);
    INFO << "p_bufCol: " << *p_bufCol
         << " t_offset: " << t_offset 
         << " t_64offset: " << t_64offset;

    if (windowCol != 0) {
        // Partialy filled window
        if (*p_bufCol == 0) {
            INFO << "Partial Window. Fill the rest of the widow";
            return true;
        } else {
            INFO << "Partial Window. bufferCol = 0 and get new buffer";
            *p_bufCol = 0;
            return false;
        }
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

            // find a trigger in current buffer
            while (findNextTrigger( currentBuffer, &bufferCol) && windowStored.load() == false) {

                // Determin how much to copy. Min of:
                // - remaining space in the window
                // - remaining space in a buffer
                copyCount = std::min(windowSize - windowCol, BUFFER_SIZE - bufferCol);

                INFO << "bufferCol: " << bufferCol
                     << " copyCount: " << copyCount;

                // Copy samples into the window
                std::memcpy(windowProcessed + (windowCol + windowRow * windowSize),
                            (currentBuffer->data + bufferCol),
                            copyCount);

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

                    // TODO: Find a better way to do this. Its not very thread
                    //       safe to pass a pointer to data held in one thread
                    //       to another thread. Making it immutable might help.
                    outputQueue->push(windowProcessed + (windowCol + windowRow * windowSize));

                    // Setup next trigger in persistance buffer
                    windowRow++;

                    // Push it into the next 64 space so we don't
                    // trigger on the same spot twice
                    bufferCol += 64;
                    INFO << "full window. windowCol: "
                         << windowCol;
                } else {
                    // Partial window coppied
                    INFO << "partial window. windowCol: "
                         << windowCol;
                }

                if (windowRow == persistanceSize) {
                    // Window persistance buffer filled. write to csv
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

void Processor::setCh (int8_t newCh)
{
    if (newCh == 1 || newCh == 2 || newCh == 4) {
        numCh = newCh;
    } else {
        ERROR << "not a valid number of channels: " << numCh;
    }
}

void Processor::flushPersistence()
{
    updateWinPerSize(windowSize, persistanceSize);
}

void Processor::updatePerSize(uint32_t newPerSize)
{
    updateWinPerSize(windowSize, newPerSize);
}

void Processor::updateWinSize(uint32_t newWinSize)
{
    updateWinPerSize(newWinSize, persistanceSize);
}

void Processor::updateWinPerSize(uint32_t newWinSize, uint32_t newPerSize)
{
    processorPause();
    windowStored.store(false);

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
