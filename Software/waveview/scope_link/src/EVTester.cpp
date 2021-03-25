#include "EVTester.hpp"
#include "EVMath.hpp"
#include "dataTransferHandler.hpp"
#include "processor.hpp"
#include "trigger.hpp"
#include "postProcessor.hpp"
#include "bridge.hpp"
#include "dspPipeline.hpp"
#include "PCIe.hpp"
#include <boost/tokenizer.hpp>
#include <fstream>
#include <iostream>
#include "controller.hpp"

uint32_t testSize = 1000;

Bridge* bridgeThread_1;

void loadFromRand (boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *outputQ)
{
    // Create dummy buffer
    buffer* tempBuffer;
    std::srand(std::time(0));
    for (uint32_t i = 0; i < testSize; i++) {
        // initialize buffer
        tempBuffer = bufferAllocator.allocate(1);
        bufferAllocator.construct(tempBuffer);

        // fill buffer with random data
        for (uint32_t j = 0; j < BUFFER_SIZE; j++) {
            tempBuffer->data[j] = std::rand();
        }

        // Push onto queue
        outputQ->push(tempBuffer);
    }
}

void TestSincInterpolation()
{
    int numInterpolatedPoints;
    int numOriginalPoints = 300;
    DataPoint* testPoints = (DataPoint*)malloc(numOriginalPoints * sizeof(DataPoint));
    std::ofstream myFile;

    for(int i = 0; i < numOriginalPoints; i++) {
        testPoints[i].value = sin(double(10 * i) * 0.05) + (2 * sin(double(3 * i) * 0.05));
        testPoints[i].time = double(10 * i) * 0.05;
    }

    DataPoint* points = SincInterpolate(testPoints, numOriginalPoints, &numInterpolatedPoints, 3, 20);

    myFile.open("InterpolatedPoints.csv");
    for(int i = 0; i < numInterpolatedPoints; i++) {
        myFile << points[i].time;
        myFile << ",";
        myFile << points[i].value;
        myFile << "\n";
   }
    myFile.close();

    myFile.open("OriginalValues.csv");
    for(int i = 0; i < numOriginalPoints; i++) {
        myFile << testPoints[i].time;
        myFile << ",";
        myFile << testPoints[i].value;
        myFile << "\n";
    }

    myFile.close();
}

void testTriggerThroughput()
{
    uint32_t testSize = 1000;

    // Create dummy queue
    boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> newDataQueue{1000};

    // Create dummy buffer
    buffer* tempBuffer;
    std::srand(std::time(0));
    for (uint32_t i = 0; i < testSize; i++) {
        // initialize buffer
        tempBuffer = bufferAllocator.allocate(1);
        bufferAllocator.construct(tempBuffer);

        // fill buffer with random data
        for (uint32_t j = 0; j < BUFFER_SIZE; j++) {
            tempBuffer->data[j] = std::rand();
        }

        // Push onto queue
        newDataQueue.push(tempBuffer);
    }

    // Create trigger method
    Trigger trigger(&newDataQueue, &newDataQueue, 127);

    // Create pointer to current buffer
    buffer *currentBuffer;

    // Take Timestamp
    auto start = std::chrono::high_resolution_clock::now();

    // Run loop
    while (newDataQueue.pop(currentBuffer)) {
        trigger.checkTriggerRising(currentBuffer);
    }

    // Take Timestamp
    auto end = std::chrono::high_resolution_clock::now();

    auto timeElapsed = end - start;

    uint32_t bytesTriggered = testSize * BUFFER_SIZE;
    double triggeredBps = ((double)bytesTriggered * S_TO_NS
                            / timeElapsed.count());
    double triggeredGBps = (((double)bytesTriggered * S_TO_NS)
                            / (timeElapsed.count()
                            * GIB_TO_GB));

    INFO << "Time Elapsed Triggering: " << timeElapsed.count() << " ns"; 
    INFO << "Triggered B: " << bytesTriggered << " B";
    INFO << "Triggered B/s: " << triggeredBps;
    INFO << "Triggered GiB/s: " << triggeredGBps;
}

/*******************************************************************************
 * testCsv()
 *
 * Runs csv data through the pipeline
 *
 * Arguments:
 *   char* filename - name of source csv file to put into pipeline
 *
 * Return: void
 ******************************************************************************/
//void testCsv(char * filename)
//{
//    boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> newDataQueue{1000};
//    boost::lockfree::queue<EVPacket*, boost::lockfree::fixed_sized<false>> cmdQueue{1000};
//    boost::lockfree::queue<EVPacket*, boost::lockfree::fixed_sized<false>> bridge_rx{1000};
//    loadFromFile(filename, &newDataQueue);
//
//    bridgeThread_1 = new Bridge("testPipe", &bridge_rx, &cmdQueue);
//
//    dspThread1 = new dspPipeline(&newDataQueue);
//
//    // start transfering to js
//    bridgeThread_1->TxStart();
//    bridgeThread_1->RxStart();
//
//	// Wait to recieve all messages back
//    INFO << "Start node application now";
//
//    dspThread1->dspPipelineUnPause();
//
//    std::this_thread::sleep_for(std::chrono::seconds(10));
//
//    INFO << "Test is done. Performing Cleanup";
//
//    delete bridgeThread_1;
//    delete dspThread1;
//
//}

/*******************************************************************************
 * runSocketTest()
 *
 * Creats a bridge, sends a test packet across the bridge and cleans up after
 * recieving a response.
 *
 * Arguments:
 *   None
 * Return:
 *   None
 ******************************************************************************/
void runSocketTest ()
{
    boost::lockfree::queue<EVPacket*, boost::lockfree::fixed_sized<false>> cmdQueue{1000};
    boost::lockfree::queue<EVPacket*, boost::lockfree::fixed_sized<false>> bridge_rx{1000};
    char in[10] = {};

    // Create packet
    EVPacket* testPacket = (EVPacket*)malloc(sizeof(EVPacket));
    testPacket->command = 1;
    testPacket->packetID = 0x0808;
    testPacket->dataSize = 5;
    testPacket->data = (int8_t*)malloc(5);
    testPacket->data[0] = 1;
    testPacket->data[1] = 2;
    testPacket->data[2] = 3;
    testPacket->data[3] = 4;
    testPacket->data[4] = 5;

    // Pass packet to tx queue
    Bridge* bridgeThread_1 = new Bridge("testPipe", &bridge_rx, &cmdQueue);
    bridge_rx.push(testPacket);

    // start transfering
    bridgeThread_1->TxStart();
    bridgeThread_1->RxStart();

    std::cin >> in;

    delete bridgeThread_1;
}

boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> testerDataQueue{1000};

/*******************************************************************************
 * runPCIeTEST()
 *
 * Attempts to connect to the Xilinx FPGA through PCIe, and attempts to write and read 8Mbytes
 *
 * Arguments:
 *   None
 * Return:
 *   None
 ******************************************************************************/
void runPCIeTest() {

    controller* troller = new controller(&testerDataQueue);
    troller->setWindowSize(1000);
    troller->testADCData();
    delete troller;
}