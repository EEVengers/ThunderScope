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

    void checkTriggerRising(buffer* currentBuffer);
    void checkTriggerFalling(buffer* currentBuffer);

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

    int8_t getTriggerLevel();
    void setTriggerLevel(int8_t newLevel);

    void setCh (int8_t newCh);
    int8_t getCh ();
    void setTriggerCh (int8_t newTriggerCh);
    int8_t getTriggerCh ();

    bool getEdgeType();
    void setRising();
    void setFalling();

    /* variables */

private:
    /* functions */

    /* variables */
    boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *inputQueue;
    boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *outputQueue;

    std::thread triggerThread;

    int8_t triggerLevel;

    uint32_t count;

    std::mutex lockThread;

    std::atomic<bool> stopTrigger;
    std::atomic<bool> pauseTrigger;
    std::atomic<bool> triggerMet;

    int8_t numCh = 1;
    // valid numbers are 0, 1, 3 for math reasons
    int8_t triggerCh = 0;

    bool risingEdge = true;
};

#endif
