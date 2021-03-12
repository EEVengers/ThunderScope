#ifndef dspPipeline_hpp
#define dspPipeline_hpp

#include "trigger.hpp"
#include "processor.hpp"
#include "postProcessor.hpp"

class dspPipeline
{
public:
    // Constructor & Destructor
    dspPipeline(void);
    ~dspPipeline(void);

    // Pipeline control
    void dspPipelineStop();
    void dspPipelineStart();
    void dspPipelinePause();
    void dspPipelineUnPause();

private:

    // Queues between stages
    boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> triggeredQueue{1000};
    boost::lockfree::queue<int8_t*, boost::lockfree::fixed_sized<false>> preProcessorQueue{1000};
    boost::lockfree::queue<int8_t*, boost::lockfree::fixed_sized<false>> postProcessorQueue{1000};

    // Stages of the pipeline
    Trigger* triggerThread;
    Processor* processorThread;
    postProcessor* postProcessorThread;
};


#endif
