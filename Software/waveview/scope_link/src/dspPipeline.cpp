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
}
