#ifndef trigger_hpp
#define trigger_hpp

#include <atomic>
#include <thread>
#include <bitset>

#include "common.hpp"
#include "logger.hpp"
#include "exception.hpp"

class Trigger
{
public:
    /* functions */
    Trigger(boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *inputQ,
            boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *outputQ,
            int8_t level);

    ~Trigger();

    void checkTrigger(buffer* currentBuffer);

    void coreLoop();

    uint32_t getCount();
    uint32_t getCountBytes();
    void setCount(uint32_t);
    void clearCount();

    void triggerStop();
    void triggerStart();
    void triggerPause();
    void triggerUnpause();

    bool getTriggerStatus();

    /* variables */

private:
    /* functions */

    /* variables */
    boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *inputQueue;
    boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *outputQueue;

    std::thread triggerThread;

    int triggerLevel;

    uint32_t count;

    std::mutex lockThread;

    std::atomic<bool> stopTrigger;
    std::atomic<bool> pauseTrigger;
    std::atomic<bool> triggerMet;
};

#endif
