#ifndef trigger_hpp
#define trigger_hpp

#include "common.hpp"
#include <atomic>
#include <boost/lockfree/queue.hpp>
#include <thread>
#include "EVLibrary.hpp"

class Trigger
{
public:
//    DigitalProcessor(boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *inputQ, int level);
    Trigger(boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *inputQ,
                     boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *outputQ,
                     int level);

    bool checkTrigger(buffer* currentBuffer);

    void coreLoop();

    void createThread();
    void destroyThread();

    uint32_t getCount();
    uint32_t getCountBytes();
    void setCount(uint32_t);
    void clearCount();

private:
    boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *inputQueue;
    boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *outputQueue;

    std::thread triggerThread;

    int triggerLevel;
    bool trigger[BUFFER_SIZE];

    uint32_t count;
    uint32_t countTriggered;

    std::mutex lockThread;

    std::atomic<bool> stopTransfer;
    std::atomic<bool> triggerMet;
    std::atomic<bool> threadExists;
};

#endif
