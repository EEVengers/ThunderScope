#include "dspPipeline.hpp"
#include "logger.hpp"

/*******************************************************************************
 * dspPipeline()
 *
 * Constructor for the processing pipeline.
 *
 * Arguments:
 *   None
 * Return:
 *   None
 ******************************************************************************/
dspPipeline::dspPipeline (boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *inputQ)
{
    INFO << "Creating dsp pipeline";

    if (inputQ == NULL) {
        ERROR << "dsp inputQ is null";
    } else {
        inputQueue = inputQ;
    }

    int8_t triggerLevel = 10;
	triggerThread = new Trigger(inputQueue, &triggeredQueue, triggerLevel);
    processorThread = new Processor(&triggeredQueue, &preProcessorQueue);
    postProcessorThread = new postProcessor(&preProcessorQueue, &postProcessorQueue);
}

/*******************************************************************************
 * dspPipeline()
 *
 * Destructor for the processing pipeline.
 *
 * Arguments:
 *   None
 * Return:
 *   None
 ******************************************************************************/
dspPipeline::~dspPipeline()
{
    INFO << "Destroying dsp pipeline";
    delete triggerThread;
    delete processorThread;
    delete postProcessorThread;
}

/*******************************************************************************
 * dspPipelineStop()
 *
 * Stops the dsp pipeline.
 * Calls stop on each of the stages of the pipeline
 *
 * Arguments:
 *   None
 * Return:
 *   None
 ******************************************************************************/
void dspPipeline::dspPipelineStop()
{
    INFO << "Stopping pipeline";
    INFO << "Not Implemented Yet";
}

/*******************************************************************************
 * dspPipelineStart()
 *
 * Starts the dsp pipeline.
 * Calls start on each of the stages of the pipeline
 * TODO: This function may not actually be needed as stopping a stage kills its
 * core loop
 *
 * Arguments:
 *   None
 * Return:
 *   None
 ******************************************************************************/
void dspPipeline::dspPipelineStart()
{
    INFO << "Starting pipeline";
    INFO << "Not Implemented yed";
}

/*******************************************************************************
 * dspPipelinePause()
 *
 * Pauses the dsp pipeline.
 * Calls pause on each of the stages of the pipeline
 *
 * Arguments:
 *   None
 * Return:
 *   None
 ******************************************************************************/
void dspPipeline::dspPipelinePause()
{
    INFO << "Pausing pipeline";
    processorThread->processorPause();
    triggerThread->triggerPause();
    postProcessorThread->postProcessorPause();
}

/*******************************************************************************
 * dspPipelineUnPause()
 *
 * unpauses the dsp pipeline.
 * Calls unpause on each of the stages of the pipeline
 *
 * Arguments:
 *   None
 * Return:
 *   None
 ******************************************************************************/
void dspPipeline::dspPipelineUnPause()
{
    INFO << "Unpausing pipeline";
    processorThread->processorUnpause();
    triggerThread->triggerUnpause();
    postProcessorThread->postProcessorUnpause();
}

/*******************************************************************************
 * bufferFunctor()
 *
 * deallocates the buffer passed to it.
 *
 * Arguments:
 *   buffer* a - The buffer to deallocate
 * Return:
 *   None
 ******************************************************************************/
void bufferFunctor(buffer* a) {
    bufferAllocator.deallocate(a, 1);
}
/*******************************************************************************
 * dspPipelineFlush()
 *
 * Flushes all data out of the pipeline.
 * Puses the pipeline until its done clearing all queues.
 * Resets the persistence buffer.
 *
 * Arguments:
 *   None
 * Return:
 *   None
 ******************************************************************************/
void dspPipeline::dspPipelineFlush()
{
    INFO << "Flushing pipeline";
    // pause while flusing
    dspPipelinePause();

    // Clear queues
    size_t count = 0;
    count = (*inputQueue).consume_all(bufferFunctor);
    INFO << "Flushed inputQueue: " << count;

    count = triggeredQueue.consume_all(bufferFunctor);
    INFO << "Flushed triggeredQueue: " << count;

    // This is handled by clearing persistence buffer
    processorThread->flushPersistence();
    INFO << "Flushed persistence buffer";
//    count = preProcessorQueue.consume_all(bufferFunctor);
//    INFO << "Flushed preProcessorQueue: " << count;

    count = postProcessorQueue.consume_all(free);
    INFO << "Flushed postProcessorQueue: " << count;
    // Clear persistence buffer
    // Reset flags
}
