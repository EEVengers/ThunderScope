#ifndef controller_hpp
#define controller_hpp

#include "dspPipeline.hpp"
#include "bridge.hpp"
#include "common.hpp"

class controller
{
public:
    controller(boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *inputQ);
    ~controller(void);

    // Control Command Processor
    void controllerLoop();
    void controllerStop();
    void controllerFlush();
    void controllerUnPause();
    void controllerPause();
    void setLevel( int8_t newLevel );
    int8_t getLevel();
    void setCh(int8_t newCh);
    int8_t getCh();
    void setTriggerCh(int8_t newTriggerCh);
    int8_t getTriggerCh();
    bool getEdgeType();
    void setRising();
    void setFalling();
    uint32_t getWindowSize();
    void setWindowSize(uint32_t newSize);

private:
    // external queue
    boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *dataQueue;

    // Internal queues
    boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> triggerProcessorQueue{1000};
    boost::lockfree::queue<int8_t*, boost::lockfree::fixed_sized<false>> processorPostProcessorQueue_1{1000};

    boost::lockfree::queue<EVPacket*, boost::lockfree::fixed_sized<false>> controllerQueue_tx{1000};
    boost::lockfree::queue<EVPacket*, boost::lockfree::fixed_sized<false>> controllerQueue_rx{1000};

    // internal threads
    Bridge* bridgeThread = NULL;
    Trigger* triggerThread = NULL;
    Processor* processorThread = NULL;
    postProcessor* postProcessorThread = NULL;

    // Control Command Processor
    std::thread controllerThread;

    std::atomic<bool> stopController;

    int8_t triggerLevel = 0;
};

#endif
