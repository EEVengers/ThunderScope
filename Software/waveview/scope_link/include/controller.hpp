#ifndef controller_hpp
#define controller_hpp

#include "dspPipeline.hpp"
#include "bridge.hpp"
#include "common.hpp"

class controller
{
public:
    controller();
    ~controller(void);

    // Push data into each dsp
    void pushDSP_1(buffer* newBuffer);
    void pushDSP_2(buffer* newBuffer);
    void pushDSP_3(buffer* newBuffer);
    void pushDSP_4(buffer* newBuffer);

    // Configure number of channels
    void setOneCh();
    void setTwoCh();
    void setFourCh();

    // Control Command Processor
    void controllerLoop();
    void controllerStop();

private:
    boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> dataQueue_1{1000};
    boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> dataQueue_2{1000};
    boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> dataQueue_3{1000};
    boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> dataQueue_4{1000};

    boost::lockfree::queue<EVPacket*, boost::lockfree::fixed_sized<false>> controllerQueue_rx{1000};

    Bridge* bridgeThread = NULL;
    dspPipeline* dspThread_1 = NULL;
    dspPipeline* dspThread_2 = NULL;
    dspPipeline* dspThread_3 = NULL;
    dspPipeline* dspThread_4 = NULL;

//    int8_t numActiveChannels;

    // Control Command Processor
    std::thread controllerThread;

    std::atomic<bool> stopController;
};

#endif
