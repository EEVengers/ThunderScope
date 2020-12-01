#ifndef processor_hpp
#define processor_hpp

#include "common.hpp"
#include <atomic>
#include <boost/lockfree/queue.hpp>
#include <thread>
#include <assert.h>
#include "EVLibrary.hpp"

class Processor
{
public:
    /* functions */
    Processor(boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *inputQ);

    void coreLoop();

    void createThread();
    void destroyThread();

    uint32_t getCount();
    uint32_t getCountBytes();
    void setCount(uint32_t);
    void clearCount();

    bool getWindowStatus();

    void processorStop();
    void processorStart();
    void processorPause();
    void processorUnpause();

    std::chrono::high_resolution_clock::time_point getTimeFilled();
    std::chrono::high_resolution_clock::time_point getTimeWritten();

    /* variables */
    uint32_t windowCol;
    uint32_t windowRow;

private:
    /* functions */
    void copyProcess(int8_t * src, int8_t * dst, uint32_t count);
    void updateWindowSize(uint32_t newWinSize, uint32_t newPerSize);
    uint32_t findNextTrigger(buffer *currentBuffer);

    /* variables */
    boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *inputQueue;
    boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *outputQueue;

    std::thread processorThread;

    std::chrono::high_resolution_clock::time_point windowFilled;
    std::chrono::high_resolution_clock::time_point windowWritten;

    uint32_t count;
    uint32_t countProcessed;

    int8_t* windowProcessed;

    std::mutex lockThread;

    std::atomic<bool> stopTransfer;
    std::atomic<bool> pauseTransfer;
    std::atomic<bool> threadExists;
    std::atomic<bool> windowStored;
};

#endif
