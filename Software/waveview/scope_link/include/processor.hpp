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

    /* variables */

private:
    /* functions */

    /* variables */
    boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *inputQueue;
    boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *outputQueue;

    std::thread processorThread;

    uint32_t count;
    uint32_t countProcessed;

    int8_t* windowProcessed;

    std::mutex lockThread;

    std::atomic<bool> stopTransfer;
    std::atomic<bool> threadExists;
    std::atomic<bool> windowStored;
};

#endif
