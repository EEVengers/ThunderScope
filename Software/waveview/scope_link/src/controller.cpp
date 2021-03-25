#include "controller.hpp"
#include "logger.hpp"

//RampDemo Related
int8_t RD_PACKET_ORIGINAL[RD_PACKET_SIZE];


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

#ifndef NOHARDWARE
    pcieLinkThread = new PCIeLink(dataQueue);
#endif

    // set default values
    setCh(1);
    setTriggerCh(1);
    setLevel(50);
    setPerSize(1);
    setWindowSize(1000);

    //RampDemo related
    for(int ch = 0; ch < RD_CHAN_COUNT; ch++) {
        for(int i = 0; ch == 0 && i < RD_DATA_PER_CHAN; i++) {
            RD_PACKET_ORIGINAL[i + ch*RD_DATA_PER_CHAN] = (i % 24) - 12;
        }
        for(int i = 0; ch == 1 && i < RD_DATA_PER_CHAN; i++) {
            RD_PACKET_ORIGINAL[i + ch*RD_DATA_PER_CHAN] = 12 - (i % 24);
        }
        for(int i = 0; ch == 2 && i < RD_DATA_PER_CHAN; i++) {
            RD_PACKET_ORIGINAL[i + ch*RD_DATA_PER_CHAN] = (i % 24) / 12;
        }
        for(int i = 0; ch == 3 && i < RD_DATA_PER_CHAN; i++) {
            RD_PACKET_ORIGINAL[i + ch*RD_DATA_PER_CHAN] = 10;
        }
    }

    // input file related
    std::string newName = "./scope_link/test/test1.csv";
    char* filename = (char*)malloc(newName.size() + 1);
    std::strcpy(filename, newName.c_str());
    free(inputFile);
    inputFile = filename;

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

            // execute the packet command
            switch (currentPacket->command) {
                case CMD_GetData1:
                    INFO << "Packet command: GetData";
                    getData();
                    break;
                case CMD_GetData2:
                    ERROR << "Packet command: Reserved";
                    break;
                case CMD_GetData3:
                    ERROR << "Packet command: Reserved";
                    break;
                case CMD_GetData4:
                    ERROR << "Packet command: Reserved";
                    break;
                case CMD_GetMin: {
                        INFO << "Packet command: GetMin";
                        const int maxCh = 4;
                        const int incomingDataSize = maxCh;
                        //calloc to ensure zero
                        int8_t* outgoingData = (int8_t*) calloc(2*maxCh, sizeof(uint64_t));
                        if(currentPacket->dataSize != incomingDataSize) {
                            ERROR << "Unexpected size for GetMin packet";
                        }
                        else {
                            uint64_t* outgoingU = (uint64_t*) outgoingData;
                            int64_t* outgoingS = (int64_t*) outgoingData;
                            for(int ch = 0; ch < incomingDataSize; ch++) {
                                if(currentPacket->data[ch]) {
                                    int8_t val;
                                    uint64_t pos;
                                    getMin(ch + 1, &val, &pos);
                                    outgoingU[ch] = pos;
                                    outgoingS[ch + maxCh] = val;
                                }
                            }
                        }
                        EVPacket* tempPacket = (EVPacket*) malloc(sizeof(EVPacket));
                        tempPacket->data = outgoingData;
                        tempPacket->dataSize = 2*maxCh*sizeof(uint64_t);
                        tempPacket->packetID = 0;
                        tempPacket->command = CMD_GetMin;
                        controllerQueue_tx.push(tempPacket);
                    }
                    break;
                case CMD_GetMax: {
                        INFO << "Packet command: GetMax";
                        const int maxCh = 4;
                        const int incomingDataSize = maxCh;
                        //calloc to ensure zero
                        int8_t* outgoingData = (int8_t*) calloc(2*maxCh, sizeof(uint64_t));
                        if(currentPacket->dataSize != incomingDataSize) {
                            ERROR << "Unexpected size for GetMin packet";
                        }
                        else {
                            uint64_t* outgoingU = (uint64_t*) outgoingData;
                            int64_t* outgoingS = (int64_t*) outgoingData;
                            for(int ch = 0; ch < incomingDataSize; ch++) {
                                if(currentPacket->data[ch]) {
                                    int8_t val;
                                    uint64_t pos;
                                    getMax(ch + 1, &val, &pos);
                                    outgoingU[ch] = pos;
                                    outgoingS[ch + maxCh] = val;
                                }
                            }
                        }
                        EVPacket* tempPacket = (EVPacket*) malloc(sizeof(EVPacket));
                        tempPacket->data = outgoingData;
                        tempPacket->dataSize = 2*maxCh*sizeof(uint64_t);
                        tempPacket->packetID = 0;
                        tempPacket->command = CMD_GetMin;
                        controllerQueue_tx.push(tempPacket);
                    }
                    break;
                case CMD_SetFile: {
                        INFO << "Packet command: SetFile";
                        const int packetSize = 2;
                        if(currentPacket->dataSize != packetSize) {
                            ERROR << "Unexpected size for SetFile packet";
                        }
                        else {
                            setFileName(currentPacket->data[0]);
                        }
                        EVPacket* tempPacket = (EVPacket*) malloc(sizeof(EVPacket));
                        tempPacket->data = NULL;
                        tempPacket->dataSize = 0;
                        tempPacket->packetID = 0;
                        tempPacket->command = CMD_SetFile;
                        controllerQueue_tx.push(tempPacket);
                    }
                    break;
                case CMD_RampDemo: {
                        INFO << "Packet command: RampDemo";
                        EVPacket* tempPacket = (EVPacket*) malloc(sizeof(EVPacket));
                        tempPacket->data = (int8_t*) malloc(RD_PACKET_SIZE);
                        tempPacket->dataSize = RD_PACKET_SIZE;
                        tempPacket->packetID = 0x11;
                        tempPacket->command = CMD_RampDemo;
                        memcpy(tempPacket->data, (const void*)RD_PACKET_ORIGINAL, RD_PACKET_SIZE);
                        controllerQueue_tx.push(tempPacket);
                    }
                    break;
                case CMD_GetWindowSize: {
                        INFO << "Packet command: GetWindowSize";

                        EVPacket* tempPacket = (EVPacket*) malloc(sizeof(EVPacket));
                        const int packetSize = sizeof(uint32_t);
                        uint32_t* windata = (uint32_t*) malloc(packetSize);
                        windata[0] = getWindowSize();
                        tempPacket->data = (int8_t*) windata;
                        tempPacket->dataSize = packetSize;
                        tempPacket->packetID = 0;
                        tempPacket->command = CMD_GetWindowSize;
                        controllerQueue_tx.push(tempPacket);
                    }
                    break;
                case CMD_GetCh: {
                        INFO << "Packet command: GetCh";
                        const int packetSize = 2;
                        EVPacket* tempPacket = (EVPacket*) malloc(sizeof(EVPacket));
                        tempPacket->data = (int8_t*) malloc(packetSize);
                        tempPacket->dataSize = packetSize;
                        tempPacket->packetID = 0;
                        tempPacket->command = CMD_GetCh;
                        tempPacket->data[0] = getCh();
                        tempPacket->data[1] = 0;
                        controllerQueue_tx.push(tempPacket);
                    }
                    break;
                case CMD_GetLevel: {
                        INFO << "Packet command: GetLevel";
                        const int packetSize = 2;
                        EVPacket* tempPacket = (EVPacket*) malloc(sizeof(EVPacket));
                        tempPacket->data = (int8_t*) malloc(packetSize);
                        tempPacket->dataSize = packetSize;
                        tempPacket->packetID = 0;
                        tempPacket->command = CMD_GetLevel;
                        tempPacket->data[0] = getLevel();
                        tempPacket->data[1] = 0;
                        controllerQueue_tx.push(tempPacket);
                    }
                    break;
                case CMD_GetTriggerCh: {
                        INFO << "Packet command: GetTriggerCh";
                        const int packetSize = 2;
                        EVPacket* tempPacket = (EVPacket*) malloc(sizeof(EVPacket));
                        tempPacket->data = (int8_t*) malloc(packetSize);
                        tempPacket->dataSize = packetSize;
                        tempPacket->packetID = 0;
                        tempPacket->command = CMD_GetTriggerCh;
                        tempPacket->data[0] = getTriggerCh();
                        tempPacket->data[1] = 0;
                        controllerQueue_tx.push(tempPacket);
                    }
                    break;
                case CMD_GetEdgeType: {
                        INFO << "Packet command: GetEdgeType";
                        const int packetSize = 2;
                        EVPacket* tempPacket = (EVPacket*) malloc(sizeof(EVPacket));
                        tempPacket->data = (int8_t*) malloc(packetSize);
                        tempPacket->dataSize = packetSize;
                        tempPacket->packetID = 0;
                        tempPacket->command = CMD_GetEdgeType;
                        tempPacket->data[0] = getEdgeType() ? 1 : 2;
                        tempPacket->data[1] = 0;
                        controllerQueue_tx.push(tempPacket);
                    };
                    break;
                case CMD_SetWindowSize: {
                        INFO << "Packet command: SetWindowSize";
                        const int packetSize = 4;
                        if(currentPacket->dataSize != packetSize) {
                            ERROR << "Unexpected size for SetWindowSize packet";
                        }
                        else {
                            uint32_t* windowSize = (uint32_t*)currentPacket->data;
                            setWindowSize(windowSize[0]);
                        }
                        EVPacket* tempPacket = (EVPacket*) malloc(sizeof(EVPacket));
                        tempPacket->data = NULL;
                        tempPacket->dataSize = 0;
                        tempPacket->packetID = 0;
                        tempPacket->command = CMD_SetWindowSize;
                        controllerQueue_tx.push(tempPacket);
                    }
                    break;
                case CMD_SetCh: {
                        INFO << "Packet command: SetCh";
                        const int packetSize = 2;
                        if(currentPacket->dataSize != packetSize) {
                            ERROR << "Unexpected size for SetCh packet";
                        }
                        else {
                            int8_t ch = currentPacket->data[0];
                            if(ch == 1 || ch == 2 || ch == 4) {
                                setCh(currentPacket->data[0]);
                            }
                            else {
                                ERROR << "Bad Ch value";
                            }
                        }
                        EVPacket* tempPacket = (EVPacket*) malloc(sizeof(EVPacket));
                        tempPacket->data = NULL;
                        tempPacket->dataSize = 0;
                        tempPacket->packetID = 0;
                        tempPacket->command = CMD_SetCh;
                        controllerQueue_tx.push(tempPacket);
                    }
                    break;
                case CMD_SetLevel: {
                        INFO << "Packet command: SetLevel";
                        const int packetSize = 2;
                        if(currentPacket->dataSize != packetSize) {
                            ERROR << "Unexpected size for SetLevel packet";
                        }
                        else {
                            int8_t level = currentPacket->data[0];
                            setLevel(level);
                        }
                        EVPacket* tempPacket = (EVPacket*) malloc(sizeof(EVPacket));
                        tempPacket->data = NULL;
                        tempPacket->dataSize = 0;
                        tempPacket->packetID = 0;
                        tempPacket->command = CMD_SetLevel;
                        controllerQueue_tx.push(tempPacket);
                    }
                    break;
                case CMD_SetTriggerCh: {
                        INFO << "Packet command: SetTriggerCh";
                        const int packetSize = 2;
                        if(currentPacket->dataSize != packetSize) {
                            ERROR << "Unexpected size for SetTriggerCh packet";
                        }
                        else {
                            int8_t triggerCh = currentPacket->data[0];
                            if(triggerCh > 4) {
                                //Other conditions??
                                ERROR << "Unexpected triggerCh";
                            }
                            else {
                                setTriggerCh(triggerCh);
                            }
                        }
                        EVPacket* tempPacket = (EVPacket*) malloc(sizeof(EVPacket));
                        tempPacket->data = NULL;
                        tempPacket->dataSize = 0;
                        tempPacket->packetID = 0;
                        tempPacket->command = CMD_SetLevel;
                        controllerQueue_tx.push(tempPacket);
                    }
                    break;
                case CMD_SetEdgeType: {
                        INFO << "Packet command: SetEdgeType";
                        const int packetSize = 2;
                        if(currentPacket->dataSize != packetSize) {
                            ERROR << "Unexpected size for SetEdgeType packet";
                        }
                        else {
                            int8_t edgeType = currentPacket->data[0];
                            if(edgeType == 1) {
                                setRising();
                            }
                            else if(edgeType == 2) {
                                setFalling();
                            }
                            else {
                                ERROR << "Unexpected edgeType";
                            }
                        }
                        EVPacket* tempPacket = (EVPacket*) malloc(sizeof(EVPacket));
                        tempPacket->data = NULL;
                        tempPacket->dataSize = 0;
                        tempPacket->packetID = 0;
                        tempPacket->command = CMD_SetEdgeType;
                        controllerQueue_tx.push(tempPacket);
                    }
                    break;
                case CMD_SetVerticalScaling: {
                        INFO << "Packet command: SetVerticalScaling";
                        const int packetSize = 4;
                        if(currentPacket->dataSize != packetSize) {
                            ERROR << "Unexpected size for SetVerticalScaling packet";
                        }
                        else {
                            int16_t* data16 = (int16_t*) currentPacket->data;
                            int ch = data16[0];
                            int millivoltPerDiv = data16[1];
                            if(ch < 1 || ch > 4) {
                                ERROR << "Bad channel for SetVerticalScaling";
                            }
                            if(millivoltPerDiv < 0 || millivoltPerDiv > 10000) {
                                ERROR << "Bad millivoltPerDiv for SetVerticalScaling";
                            }
                            //Do something...
                        }
                        EVPacket* tempPacket = (EVPacket*) malloc(sizeof(EVPacket));
                        tempPacket->data = NULL;
                        tempPacket->dataSize = 0;
                        tempPacket->packetID = 0;
                        tempPacket->command = CMD_SetEdgeType;
                        controllerQueue_tx.push(tempPacket);
                    }
                    break;
                case CMD_SetMath: {
                        INFO << "Packet command: SetMath";
                        const int packetSize = 4;
                        if(currentPacket->dataSize != packetSize) {
                            ERROR << "Unexpected size for SetMath packet";
                        }
                        else {
                            int8_t lhsChan = currentPacket->data[0];
                            int8_t rhsChan = currentPacket->data[1];
                            int8_t op = currentPacket->data[2];

                            //JS and C++ might not encode these vars the same
                            if(op == 0) {
                                lhsChan = -1;
                                rhsChan = -1;
                            }
                            //Do something with these.
                            setMathCh_1(lhsChan);
                            setMathCh_2(rhsChan);
                            setMathSign(op == 1);
                        }
                        EVPacket* tempPacket = (EVPacket*) malloc(sizeof(EVPacket));
                        tempPacket->data = NULL;
                        tempPacket->dataSize = 0;
                        tempPacket->packetID = 0;
                        tempPacket->command = CMD_SetMath;
                        controllerQueue_tx.push(tempPacket);
                    }
                    break;
                default:
                    ERROR << "Unknown packet command";
                    break;
            }

        }

        //Sleep, but don't oversleep
        std::this_thread::sleep_for(std::chrono::milliseconds(5));
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
#ifndef NOHARDWARE
    pcieLinkThread->Pause();
#endif
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
#ifndef NOHARDWARE
    pcieLinkThread->UnPause();
#endif
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

    // If the trigger channel will nolonger be active
    if (getTriggerCh() + 1 > newCh){
        // Set the trigger ch to ch 1
        setTriggerCh(1);
    }

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
 *            This value is 0 - 3.
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

/*******************************************************************************
 * getPerSize()
 *
 * gets the side of the persistence buffer.
 *
 * Arguments:
 *   None
 * Return:
 *   uint32_t - Size of the persistence buffer
******************************************************************************/
uint32_t controller::getPerSize()
{
    return persistanceSize;
}

/*******************************************************************************
 * setPerSize()
 *
 * sets the side of the persistence buffer.
 *
 * Arguments:
 *   uint32_t newSize - New size to set the persistence buffer to
 * Return:
 *   None
******************************************************************************/
void controller::setPerSize(uint32_t newSize)
{
    controllerPause();

    persistanceSize = newSize;

    controllerFlush();
}

void controller::getMax(int8_t chNum, int8_t* value, uint64_t* pos)
{
    processorThread->getMax(chNum, value, pos);
}

void controller::getMin(int8_t chNum, int8_t* value, uint64_t* pos)
{
    processorThread->getMin(chNum, value, pos);
}

void controller::reProcess()
{
    processorThread->reProcess();
}

void controller::setMathCh_1(int8_t newCh)
{
    postProcessorThread->setMathCh_1(newCh);
}

void controller::setMathCh_2(int8_t newCh)
{
    postProcessorThread->setMathCh_2(newCh);
}

void controller::setMathSign(bool newSign)
{
    postProcessorThread->setMathSign(newSign);
}

void controller::getData()
{
    // flush buffers
    controllerFlush();
    // unpause
    controllerUnPause();

#ifdef NOHARDWARE
    if (inputFile != NULL) {
        loadFromFile(inputFile, dataQueue);
    }
#endif
}

void controller::setFileName(int8_t newFile)
{
    std::string newName = "./scope_link/test/test1.csv";
    switch (newFile) {
        case 1:
            newName = "./scope_link/test/test1.csv";
            break;
        case 2:
            newName = "./scope_link/test/test2.csv";
            break;
        case 3:
            newName = "./scope_link/test/test3.csv";
            break;
        case 4:
            newName = "./scope_link/test/test4.csv";
            break;
        case 5:
            newName = "./scope_link/test/test5.csv";
            break;
        case 6:
            newName = "./scope_link/test/test6.csv";
            break;
        case 72:
            newName = "./scope_link/test/test7-2ch.csv";
            break;
        case 74:
            newName = "./scope_link/test/test7-4ch.csv";
            break;
        case 8:
            newName = "./scope_link/test/test8.csv";
            break;
        case 91:
            newName = "./scope_link/test/test9-max.csv";
            break;
        case 92:
            newName = "./scope_link/test/test9-min.csv";
            break;
        default:
            newName = "./scope_link/test/test1.csv";
    }
    char* filename = (char*)malloc(newName.size() + 1);
    std::strcpy(filename, newName.c_str());
    free(inputFile);
    inputFile = filename;
}
