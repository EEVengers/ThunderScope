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
    DEBUG << "Processor Destructor Called";

    // Stop the transer and join thread
    processorPause();
    processorStop();
    processorThread.join();

    DEBUG << "Destroyed processor thread";
}

// Returns the offset of the next trigger in the current buffer
bool Processor::findNextTrigger(buffer *currentBuffer, uint32_t* p_bufCol)
{
    DEBUG << "** Finding Next Trigger **";
    DEBUG << "p_bufCol: " << *p_bufCol;
    uint32_t t_offset = 0;

    // Find which 64 block the buffer is in
    uint32_t t_64offset = (*p_bufCol / 64);
    DEBUG << "p_bufCol: " << *p_bufCol
         << " t_offset: " << t_offset
         << " t_64offset: " << t_64offset;

    if (windowCol != 0) {
        // Partialy filled window
        if (*p_bufCol == 0) {
            DEBUG << "Partial Window. Fill the rest of the widow";
            return true;
        } else {
            DEBUG << "Partial Window. bufferCol = 0 and get new buffer";
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
            DEBUG << "found Trigger in 64: " << t_64offset
                 << " with val: " << currentBuffer->trigger[t_64offset]
                 << " t_offset: " << t_offset;
#endif
            t_offset = (64 - 1) - t_offset;
#ifdef DBG
            DEBUG << "t_64offset corrected: " << t_64offset;
#endif
            break;
        }
    }

    if (t_64offset >= BUFFER_SIZE/64) {
        // No trigger found in buffer
        *p_bufCol = BUFFER_SIZE;
        DEBUG << "End of buffer reached, go to next one";
        return false;
    } else {
        *p_bufCol = ((t_offset) + (t_64offset * 64));
        DEBUG << "t_offset: " << t_offset
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

            DEBUG << "*** New Buffer ***";
            // New buffer, reset variables
            count++;
            bufferCol = 0;

            // find a trigger in current buffer
            while (findNextTrigger( currentBuffer, &bufferCol)
                    && windowStored.load() == false
                    && pauseTransfer.load() == false) {

                // Determin how much to copy. Min of:
                // - remaining space in the window
                // - remaining space in a buffer
                copyCount = std::min(windowSize - windowCol, BUFFER_SIZE/numCh - bufferCol);

                DEBUG << "bufferCol: " << bufferCol
                     << " copyCount: " << copyCount;

                // Copy samples into the window
                std::memcpy(windowProcessed + (windowCol * numCh + windowRow * windowSize * numCh),
                            (currentBuffer->data + bufferCol * numCh),
                            copyCount * numCh);

                bufferCol += copyCount;
                windowCol += copyCount;

                DEBUG << "bufferCol: " << bufferCol
                     << " windowCol: " << windowCol
                     << " windowSize: " << windowSize
                     << std::endl;

                // Reset the window column if its past the end
                // (when finished a window)
                if (windowCol == windowSize) {
                    windowCol = 0;

                    outputQueue->push(windowProcessed + (windowCol * numCh + windowRow * windowSize * numCh));

                    // Setup next trigger in persistance buffer
                    windowRow++;

                    // Push it into the next 64 space so we don't
                    // trigger on the same spot twice
                    bufferCol += 64;
                    DEBUG << "full window. windowCol: "
                         << windowCol;
                } else {
                    // Partial window coppied
                    DEBUG << "partial window. windowCol: "
                         << windowCol;
                }

                if (windowRow == persistanceSize) {
                    // Window persistance buffer filled. write to csv
                    INFO << "Dumping to csv";

                    writeToCsv(filename,
                               windowProcessed,
                               persistanceSize,
                               windowSize * numCh,
                               numCh);

                    windowStored.store(true);
                }
            }

            bufferAllocator.deallocate(currentBuffer, 1);
        }

        if (windowStored.load() == true || pauseTransfer.load() == true) {
            // flush the input queue so it doesn't overflow
            size_t count = 0;
            count = (*inputQueue).consume_all(bufferFunctor);
            DEBUG << "Flushed processor inputQueue: " << count;
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
    windowProcessed = new int8_t [windowSize * persistanceSize * numCh];
    windowStored.store(false);
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
    DEBUG << "Starting processing";
}

void Processor::processorStop()
{
    stopTransfer.store(true);
    DEBUG << "Stopping processing";
}

// Control the inner loop
void Processor::processorUnpause()
{
    pauseTransfer.store(false);
    DEBUG << "unpausing processing";
}

void Processor::processorPause()
{
    pauseTransfer.store(true);
    DEBUG << "pausing processing";
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

void Processor::getMax(int8_t chNum, int8_t* value, uint64_t* pos)
{
    *value = INT8_MIN;
    *pos = chNum - 1;
    for (uint64_t i = chNum - 1; i < windowSize * numCh; i += numCh) {
        DEBUG << "windowProcessed[i]: " << (int)windowProcessed[i] << " i: " << i << " value: " << (int)*value << " pos: " << *pos;
        if ((int)*value < (int)windowProcessed[i]) {
            *value = windowProcessed[i];
            *pos = i;
        }
    }
}

void Processor::getMin(int8_t chNum, int8_t* value, uint64_t* pos)
{
    *value = INT8_MAX;
    *pos = chNum - 1;
    for (uint64_t i = chNum - 1; i < windowSize * numCh; i += numCh) {
        if (*value > windowProcessed[i]) {
            *value = windowProcessed[i];
            *pos = i;
        }
    }
}

void Processor::reProcess()
{
    if (windowStored.load() == true) {
        for (uint32_t i = 0; i < persistanceSize; i++) {
            outputQueue->push(windowProcessed + (i * windowSize * numCh));
        }
    } else {
        DEBUG << "Not a full persistence buffer yet";
    }
}
