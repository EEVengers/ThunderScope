#ifndef trigger_hpp
#define trigger_hpp

#include "common.hpp"
#include <atomic>
#include <boost/lockfree/queue.hpp>
#include <thread>
#include "EVLibrary.hpp"
#include <bitset>

class Trigger
{
public:
    /* functions */
    Trigger(boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *inputQ,
                     boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *outputQ,
                     int8_t level);

    bool checkTrigger(buffer* currentBuffer);

    void coreLoop();

    void createThread();
    void destroyThread();

    uint32_t getCount();
    uint32_t getCountBytes();
    void setCount(uint32_t);
    void clearCount();

    void triggerStop();
    void triggerStart();
    void triggerPause();
    void triggerUnpause();

    /* variables */
    std::chrono::high_resolution_clock::time_point getTimeTriggerd();

private:
    /* functions */

    /* variables */
    boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *inputQueue;
    boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *outputQueue;

    std::thread triggerThread;

    int triggerLevel;

    uint32_t count;
    uint32_t countTriggered;

    std::mutex lockThread;

    std::chrono::high_resolution_clock::time_point endTrigger;

    std::atomic<bool> stopTrigger;
    std::atomic<bool> pauseTrigger;
    std::atomic<bool> triggerMet;
    std::atomic<bool> threadExists;
};

#endif
