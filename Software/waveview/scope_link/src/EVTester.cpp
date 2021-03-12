#include "EVTester.hpp"
#include "EVMath.hpp"
#include "dataTransferHandler.hpp"
#include "processor.hpp"
#include "trigger.hpp"
#include "postProcessor.hpp"
#include "bridge.hpp"
#include "dspPipeline.hpp"
#include <boost/tokenizer.hpp>

uint32_t testSize = 1000;

Bridge* bridgeThread_1;
dspPipeline* dspThread1;


bool loadFromFile ( char* filename, boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *outputQ)
{
    std::ifstream stream;
    stream.open(filename);

    char delim = '\n';
    std::string tmp;

    INFO << "Loading from file " << filename;

    buffer* tempBuffer;
    tempBuffer = bufferAllocator.allocate(1);
    bufferAllocator.construct(tempBuffer);
    uint32_t tmpBufPos = 0;

    if (!stream.is_open()) {
        ERROR << "Stream is closed. Expects relative path. Run from waveview folder";
        return false;
    }

    while (std::getline(stream, tmp, delim)) {
//        INFO << "Parsing line into buffer";
        // Parse the line into a buffer
        typedef boost::tokenizer<boost::char_separator<char>> tokenizer;
        boost::char_separator<char> sep{","};
        tokenizer tok{tmp, sep};
        for (const auto &t : tok) {

            if (std::stoi(t) > 255) {
                ERROR << "Number greater than 255";
            } else if (std::stoi(t) > INT8_MAX) {
                ERROR << "Number greater than 127 is converted to negative";
            } else if ((int8_t)std::stoi(t) < -128) {
                ERROR << "Number less than -128";
            }

            tempBuffer->data[tmpBufPos] = (int8_t)std::stoi(t);

            tmpBufPos++;
            if (tmpBufPos == BUFFER_SIZE) {
                INFO << "Adding buffer to queue from file";
                // Buffer is now full push it
                outputQ->push(tempBuffer);

                // Create a new one to fill
                tempBuffer = bufferAllocator.allocate(1);
                bufferAllocator.construct(tempBuffer);
                tmpBufPos = 0;
            }
        }
    }
    // Deleted any partially filled buffer
    bufferAllocator.deallocate(tempBuffer, 1);

    return true;
}

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
        trigger.checkTrigger(currentBuffer);
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
void testCsv(char * filename)
{
    boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> newDataQueue{1000};
    loadFromFile(filename, &newDataQueue);

    bridgeThread_1 = new Bridge("testPipe",_gtxQueue,_grxQueue,_gtxLock,_grxLock);

    dspThread1 = new dspPipeline(&newDataQueue);

    // start transfering to js
    bridgeThread_1->TxStart();
    bridgeThread_1->RxStart();

	// Wait to recieve all messages back
    INFO << "Start node application now";

    dspThread1->dspPipelineUnPause();

    std::this_thread::sleep_for(std::chrono::seconds(10));

    INFO << "Test is done. Performing Cleanup";

    delete bridgeThread_1;
    delete dspThread1;

}

/*******************************************************************************
 * runSocketTest()
 *
 * Creats a bridge, sends a test packet across the bridge and cleans up after
 * recieving a response.
 *
 * Arguments:
 *   None
 * Return:
 *   int - 0 on success, error code on failure
 ******************************************************************************/
void runSocketTest ()
{
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
    _gtxQueue.push(testPacket);
    Bridge* bridgeThread_1 = new Bridge("testPipe",_gtxQueue,_grxQueue,_gtxLock,_grxLock);

    // start transfering
    bridgeThread_1->TxStart();
    bridgeThread_1->RxStart();

    std::cin >> in;

    delete bridgeThread_1;
}
