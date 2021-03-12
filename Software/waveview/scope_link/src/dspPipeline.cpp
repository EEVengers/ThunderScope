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
dspPipeline::dspPipeline ()
{
    INFO << "Creating dsp pipeline";
    int8_t triggerLevel = 10;
	triggerThread = new Trigger(&newDataQueue, &triggeredQueue, triggerLevel);
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
