#include "controller.hpp"
#include "logger.hpp"

#define RAMPDEMO 1

#ifdef RAMPDEMO

#define RD_DATA_PER_CHAN 1024
#define RD_CHAN_COUNT 4
#define RD_PACKET_SIZE 4096

uint8_t RD_PACKET_ORIGINAL[RD_PACKET_SIZE]; 

#endif

enum CMD {
    //Data commands
    CMD_GetData1 = 0x01,
    CMD_GetData2 = 0x02,
    CMD_GetData3 = 0x03,
    CMD_GetData4 = 0x04,

    //Demo commands
    CMD_RampDemo = 0x1F
};

controller::controller(boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *inputQ)
{
    dataQueue = inputQ;
    stopController.store(false);

    // command packet parser thread
    controllerThread = std::thread(&controller::controllerLoop, this);

    // Bridge to JS
    bridgeThread = new Bridge("testPipe", &controllerQueue_tx, &controllerQueue_rx);
    bridgeThread->TxStart();
    bridgeThread->RxStart();

    // Create pipeline threads
    triggerThread = new Trigger(dataQueue, &triggerProcessorQueue, triggerLevel);
    processorThread = new Processor(&triggerProcessorQueue, &processorPostProcessorQueue_1);
    postProcessorThread = new postProcessor(&processorPostProcessorQueue_1, &controllerQueue_tx);

    // set default values
    setCh(1);
    setTriggerCh(1);
    setLevel(50);

#ifdef RAMPDEMO
    for(int ch = 0; ch < RD_CHAN_COUNT; ch++) {
        for(int i = 0; ch == 0 && i < RD_DATA_PER_CHAN; i++) {
            RD_PACKET_ORIGINAL[i + ch*RD_DATA_PER_CHAN] = i % 24;
        }
        for(int i = 0; ch == 1 && i < RD_DATA_PER_CHAN; i++) {
            RD_PACKET_ORIGINAL[i + ch*RD_DATA_PER_CHAN] = 24 - (i % 24);
        }
        for(int i = 0; ch == 2 && i < RD_DATA_PER_CHAN; i++) {
            RD_PACKET_ORIGINAL[i + ch*RD_DATA_PER_CHAN] = (i % 24) / 12;
        }
        for(int i = 0; ch == 3 && i < RD_DATA_PER_CHAN; i++) {
            RD_PACKET_ORIGINAL[i + ch*RD_DATA_PER_CHAN] = 10;
        }
    }
#endif

    INFO << "Controller Created";
}

controller::~controller()
{
    stopController.store(true);
    controllerThread.join();

    delete triggerThread;
    delete processorThread;
    delete postProcessorThread;
    delete bridgeThread;

    DEBUG << "Controller Destroyed";
}

/*******************************************************************************
 * controllerLoop()
 *
 * Core loop for the controller.
 * Parses packets from the rx queue
 *
 * Arguments:
 *   None
 * Return:
 *   None
 ******************************************************************************/
void controller::controllerLoop()
{
    EVPacket* currentPacket;

    while (stopController.load() == false) {
        while (stopController.load() == false &&
               controllerQueue_rx.pop(currentPacket)) {
            DEBUG << "Controller processing a packet";

            EVPacket* tempPacket = NULL;

            //RampDemo variables
            int rd_dataPerChan = 1024;
            int rd_chanCount = 4;

            // execute the packet command
            switch (currentPacket->command) {
                case CMD_GetData1:
                    INFO << "Packet command 0x01: GetData";
                    break;
                case CMD_GetData2:
                    ERROR << "Packet command 0x02: Reserved";
                    break;
                case CMD_GetData3:
                    ERROR << "Packet command 0x03: Reserved";
                    break;
                case CMD_GetData4:
                    ERROR << "Packet command 0x04: Reserved";
                    break;
#ifdef RAMPDEMO
                case CMD_RampDemo:
                    INFO << "Packet command 0x1F: RampDemo";
                    tempPacket = (EVPacket*) malloc(sizeof(EVPacket));
                    tempPacket->data = (int8_t*) malloc(RD_PACKET_SIZE);
                    tempPacket->dataSize = RD_PACKET_SIZE;
                    tempPacket->packetID = 0x11;
                    tempPacket->command = 0x1F;
                    memcpy(tempPacket->data, (const void*)RD_PACKET_ORIGINAL, RD_PACKET_SIZE);
                    controllerQueue_tx.push(tempPacket);
                    break;
#endif
                default:
                    ERROR << "Unknown packet command";
                    break;
            }

        }

        std::this_thread::sleep_for(std::chrono::milliseconds(100));
    }
}

/*******************************************************************************
 * controllerPause()
 *
 * Pauses the pipeline.
 * Calls pause on each of the stages of the pipeline
 *
 * Arguments:
 *   None
 * Return:
 *   None
 ******************************************************************************/
void controller::controllerPause()
{
    DEBUG << "Pausing pipeline";
    processorThread->processorPause();
    triggerThread->triggerPause();
    postProcessorThread->postProcessorPause();
}

/*******************************************************************************
 *  controllerUnPause()
 *
 * unpauses the dsp pipeline.
 * Calls unpause on each of the stages of the pipeline
 *
 * Arguments:
 *   None
 * Return:
 *   None
 ******************************************************************************/
void controller::controllerUnPause()
{
    DEBUG << "Unpausing pipeline";
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
 * controllerFlush()
 *
 * Flushes all data out of the pipeline.
 * Pauses the pipeline until its done clearing all queues.
 * Resets the persistence buffer.
 *
 * Arguments:
 *   None
 * Return:
 *   None
 ******************************************************************************/
void controller::controllerFlush()
{
    INFO << "Flushing pipeline";
    // pause while flusing
    controllerPause();

    // Clear queues
    size_t count = 0;
    count = (*dataQueue).consume_all(bufferFunctor);
    DEBUG << "Flushed inputQueue: " << count;

    count = triggerProcessorQueue.consume_all(bufferFunctor);
    DEBUG << "Flushed triggeredQueue: " << count;

    // Clear persistence buffer
    processorThread->flushPersistence();
    DEBUG << "Flushed persistence buffer";
//    count = preProcessorQueue.consume_all(bufferFunctor);
//    DEBUG << "Flushed preProcessorQueue: " << count;

    count = processorPostProcessorQueue_1.consume_all(free);
    DEBUG << "Flushed postProcessorQueue: " << count;
}

/*******************************************************************************
 * getTriggerLevel()
 *
 * returns the trigger level.
 *
 * Arguments:
 *   int8_t newLevel - New level for the trigger function
 * Return:
 *   None
 ******************************************************************************/
int8_t controller::getLevel()
{
    return triggerThread->getTriggerLevel();
}

/*******************************************************************************
 * setTriggerLevel()
 *
 * flushes the pipeline and sets a new trigger level.
 *
 * Arguments:
 *   int8_t newLevel - New level for the trigger function
 * Return:
 *   None
 ******************************************************************************/
void controller::setLevel( int8_t newLevel )
{
    triggerLevel = newLevel;

    triggerThread->setTriggerLevel(triggerLevel);

    INFO << "new trigger level: " << (int)triggerThread->getTriggerLevel();

    controllerFlush();
}

/*******************************************************************************
 * getCh()
 *
 * gets the number of channels on each stage of the pipeline.
 *
 * Arguments:
 *   None
 * Return:
 *   int8_t - The number of channels as set in the trigger thread;
 ******************************************************************************/
int8_t controller::getCh()
{
    return triggerThread->getCh();
}

/*******************************************************************************
 * setCh()
 *
 * sets the number of channels on each stage of the pipeline.
 *
 * Arguments:
 *   int8_t newCh - desired number of channels;
 * Return:
 *   None
 ******************************************************************************/
void controller::setCh(int8_t newCh)
{
    controllerPause();

    triggerThread->setCh(newCh);
    processorThread->setCh(newCh);
    postProcessorThread->setCh(newCh);

    controllerFlush();
}

/*******************************************************************************
 * getTriggerCh()
 *
 * get Trigger channel.
 *
 * Arguments:
 *   None
 * Return:
 *   int8_t - current trigger channel as known by the trigger thread;
 ******************************************************************************/
int8_t controller::getTriggerCh()
{
    return triggerThread->getTriggerCh();
}

/*******************************************************************************
 * setTriggerCh()
 *
 * set Trigger channel.
 *
 * Arguments:
 *   int8_t newTriggerCh - desired trigger channel;
 * Return:
 *   None
 ******************************************************************************/
void controller::setTriggerCh(int8_t newTriggerCh)
{
    controllerPause();

    triggerThread->setTriggerCh(newTriggerCh);

    controllerFlush();
}

/*******************************************************************************
 * getEdgeType()
 *
 * gets the type of edge.
 *
 * Arguments:
 *   int8_t newTriggerCh - desired trigger channel;
 * Return:
 *   bool - true for rising edge, false for falling edge
******************************************************************************/
bool controller::getEdgeType()
{
    return triggerThread->getEdgeType();
}

/*******************************************************************************
 * setRising()
 *
 * sets edge type to rising edge.
 *
 * Arguments:
 *   None
 * Return:
 *   None
******************************************************************************/
void controller::setRising()
{
    controllerPause();

    triggerThread->setRising();

    controllerFlush();
}

/*******************************************************************************
 * setFalling()
 *
 * sets edge type to falling edge.
 *
 * Arguments:
 *   None
 * Return:
 *   None
******************************************************************************/
void controller::setFalling()
{
    controllerPause();

    triggerThread->setFalling();

    controllerFlush();
}

/*******************************************************************************
 * getWindowSize()
 *
 * returns the size of the window.
 *
 * Arguments:
 *   None
 * Return:
 *   uint32_t - current window size
******************************************************************************/
uint32_t controller::getWindowSize()
{
    return windowSize;
}

/*******************************************************************************
 * setWindowSize()
 *
 * sets the windowsize.
 *
 * Arguments:
 *   uint32_t newSize - New size to set the window to
 * Return:
 *   None
******************************************************************************/
void controller::setWindowSize(uint32_t newSize)
{
    controllerPause();

    windowSize = newSize;

    controllerFlush();
}
