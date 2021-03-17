#include "postProcessor.hpp"
#include "logger.hpp"
#include "bridge.hpp"

/*******************************************************************************
 * postProcessor()
 *
 * Constructor for the post processor.
 *
 * Arguments:
 *   boost::lockfree::queue<uint8_t*, boost::lockfree::fixed_sized<false>> *inputQ
 *    - Pointer to a lockfree queue to supply sample windows to process
 *   boost::lockfree::queue<uint8_t*, boost::lockfree::fixed_sized<false>> *outputQ
 *    - Pointer to a lockfree queue to push processed sample windows
 *
 * Return:
 *   None
 ******************************************************************************/
postProcessor::postProcessor(
        boost::lockfree::queue<int8_t*, boost::lockfree::fixed_sized<false>> *inputQ,
        boost::lockfree::queue<EVPacket*, boost::lockfree::fixed_sized<false>> *outputQ)
{
    // Check that queues exist
    assert(inputQ != NULL);

    // Initialize variables
    inputQueue = inputQ;
    outputQueue = outputQ;

    stopTransfer.store(false);
    pauseTransfer.store(true);

    // create new thread
    postProcessorThread = std::thread(&postProcessor::coreLoop, this);

    INFO << "Created post processor";
}

/*******************************************************************************
 * ~postProcessor()
 *
 * Destructor for the post processor.
 *
 * Arguments:
 *   None
 * Return:
 *   None
 ******************************************************************************/
postProcessor::~postProcessor(void)
{
    // Stop the transer and join thread
    postProcessorPause();
    postProcessorStop();
    postProcessorThread.join();

    DEBUG << "Destroyed post processor";
}

/*******************************************************************************
 * coreLoop()
 *
 * Core loop for the post processor. This loop will pop samples from the input
 * queue, apply any transformations, then push it to the output queue.
 *
 * Arguments:
 *   None
 * Return:
 *   None
 ******************************************************************************/
void postProcessor::coreLoop()
{
    EVPacket *currentPacket = NULL;
    int8_t *currentWindow = NULL;
    int8_t *postWindow = NULL;

    // Outer loop
    while (stopTransfer.load() == false) {

        // Inner loop
        while (pauseTransfer.load() == false &&
               inputQueue->pop(currentWindow)) {

            DEBUG << "post processing next window";

            // New packet
            postWindow = (int8_t *)malloc(windowSize * numCh);

            for (uint8_t j = 0; j < numCh; j++) {
                // Post process window
                for (uint32_t i = 0; i < windowSize; i++) {
                    postWindow[i + j * windowSize] = currentWindow[i * numCh + j];
                }
            }

            // Pass processed window to next stage
            currentPacket = (EVPacket*)malloc(sizeof(EVPacket));
            currentPacket->command = 1;
            currentPacket->packetID = 0x0808;
            currentPacket->dataSize = windowSize * numCh;
            currentPacket->data = postWindow;

            outputQueue->push(currentPacket);

#ifdef DBG
            std::string dbgMsgPacket = "postProcessor Packet: ";
            for (int i = 0; i < currentPacket->dataSize; i++) {
                dbgMsgPacket += std::to_string(currentPacket->data[i]) + " ";
            }
            DEBUG << dbgMsgPacket;
#endif

        }
        // Queue empty, Sleep for a bit
        std::this_thread::sleep_for(std::chrono::microseconds(100));
    }
}

/*******************************************************************************
 * setCh()
 *
 * Sets the number of channels.
 *
 * Arguments:
 *   None
 * Return:
 *   None
 ******************************************************************************/
void postProcessor::setCh (int8_t newCh)
{
    if (newCh == 1 || newCh == 2 || newCh == 4) {
        numCh = newCh;
    } else {
        ERROR << "not a valid number of channels: " << numCh;
    }
}

/*******************************************************************************
 * postProcessorStart()
 *
 * Start the outer loop.
 *
 * Arguments:
 *   None
 * Return:
 *   None
 ******************************************************************************/
void postProcessor::postProcessorStart()
{
    stopTransfer.store(false);
    DEBUG << "Starting post processing";
}

/*******************************************************************************
 * postProcessorStop()
 *
 * Stop the outer loop. This will cause the core loop to exit if the inner loop
 * is ever paused.
 *
 * Arguments:
 *   None
 * Return:
 *   None
 ******************************************************************************/
void postProcessor::postProcessorStop()
{
    stopTransfer.store(true);
    DEBUG << "Stopping post processing";
}

/*******************************************************************************
 * postProcessorUnpause()
 *
 * unpause the inner loop. This wil start processing packets from the input
 * queue.
 *
 * Arguments:
 *   None
 * Return:
 *   None
 ******************************************************************************/
void postProcessor::postProcessorUnpause()
{
    pauseTransfer.store(false);
    DEBUG << "unpausing post processing";
}

/*******************************************************************************
 * postProcessorPause()
 *
 * pause the inner loop. Stops the core loop from processing new elements on
 * the queue.
 *
 * Arguments:
 *   None
 * Return:
 *   None
 ******************************************************************************/
void postProcessor::postProcessorPause()
{
    pauseTransfer.store(true);
    DEBUG << "pausing post processing";
}
