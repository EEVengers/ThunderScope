#include "EVTester.hpp"
#include "EVMath.hpp"
#include "dataTransferHandler.hpp"
#include "processor.hpp"
#include "trigger.hpp"
#include "postProcessor.hpp"
#include "bridge.hpp"
#include <boost/tokenizer.hpp>

uint32_t testSize = 1000;

Trigger* triggerThread;
Processor* processorThread;
postProcessor* postProcessorThread;
Bridge* bridgeThread;


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
        ERROR << "Stream is closed";
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
                INFO << "Error: Number greater than 255";
            } else if (std::stoi(t) > INT8_MAX) {
                INFO << "Error: Number greater than 127 is converted to negative";
            } else if ((int8_t)std::stoi(t) < -128) {
                INFO << "Error: Number less than -128";
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

void testBenchmark()
{
    // Create queue
    boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> newDataQueue{1000};
    boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> triggeredQueue{1000};

    loadFromRand(&newDataQueue);

    // Create trigger method
    int8_t triggerLevel = 10;
    Trigger trigger(&newDataQueue, &triggeredQueue, triggerLevel);

    // Create processor method
    Processor processor(&triggeredQueue, &preProcessorQueue);

    // Measure triggering time
    // collect timestamp
    auto start = std::chrono::high_resolution_clock::now();

    // Start trigger
    trigger.triggerUnpause();

    // wait for triggering to finish
    while (trigger.getTriggerStatus() == false) {
        std::this_thread::sleep_for(std::chrono::microseconds(100));
    }

    // collect timestamp
    auto end = std::chrono::high_resolution_clock::now();
    auto timeTrigger = end - start;

    uint32_t bytesTriggered = testSize * BUFFER_SIZE;
    double triggeredBps = ((double)bytesTriggered * S_TO_NS
                            / timeTrigger.count());
    double triggeredGBps = (((double)bytesTriggered * S_TO_NS)
                            / (timeTrigger.count()
                            * GIB_TO_GB));

    INFO << "Time Elapsed Triggering: " << timeTrigger.count() << " ns";
    INFO << "Triggered B: " << bytesTriggered << " B";
    INFO << "Triggered B/s: " << triggeredBps;
    INFO << "Triggered GiB/s: " << triggeredGBps;
    

    // TODO: write processor benchmarking
    // measure processor
    // collect timestamp
    // Start Processor
    processor.processorUnpause();
    // wait for processing to finish
    // collect timestamp

    // Wait until window if full
    while (processor.getWindowStatus() == false) {
        std::this_thread::sleep_for(std::chrono::microseconds(100));
    }

    INFO << std::endl << "Test is done. Performing Cleanup";
}

/*******************************************************************************
 * initializePipeline()
 *
 * Creates the threads for the pipeline and starts processing
 *
 * Arguments: None
 *
 * Return: void
 ******************************************************************************/
void initializePipeline()
{
    if (inputFile != NULL) {
        INFO << "Input file specified, opening";
        // TODO: Handle failed loading of file
        loadFromFile(inputFile, &newDataQueue);
    } else {
        WARN << "No input file specified, opening test1.csv";
        std::string inputFileName = "scope_link/test/test1.csv";
        inputFile = (char *)malloc(inputFileName.size() + 1);
        memcpy(inputFile, inputFileName.c_str(), inputFileName.size() + 1);
        // TODO: Handle failed loading from file
        loadFromFile(inputFile, &newDataQueue);
        // TODO: Initialize the pcie drivers and pass it the newDataQueue.
        //       Replace this whole else statement with the driver stuff.
    }

    // Create trigger method
    int8_t triggerLevel = 10;
    triggerThread = new Trigger(&newDataQueue, &triggeredQueue, triggerLevel);

    // Create processor method
    processorThread = new Processor(&triggeredQueue, &preProcessorQueue);

    postProcessorThread = new postProcessor(&preProcessorQueue, &postProcessorQueue);

    bridgeThread = new Bridge("testPipe",_gtxQueue,_grxQueue,_gtxLock,_grxLock);

    // Start all methods
    processorThread->processorUnpause();
    triggerThread->triggerUnpause();
    postProcessorThread->postProcessorUnpause();

    bridgeThread->TxStart();
    bridgeThread->RxStart();

    INFO << "Pipeline Initialized";
}

/*******************************************************************************
 * cleanPipeline()
 *
 * Deletes and frees memory created for the pipeline
 *
 * Arguments: None
 *
 * Return: void
 ******************************************************************************/
void cleanPipeline() {
    INFO << "Performing Cleanup";
    if (inputFile != NULL) {
         free(inputFile);
    }

    delete triggerThread;
    delete processorThread;
    delete postProcessorThread;
    delete bridgeThread;

    INFO << "Cleanup Finished";
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
    // TODO: Cleanup. Remove duplicate code here with other functions

    // Create queue
//    boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> newDataQueue{1000};
//    boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> triggeredQueue{1000};

    loadFromFile(filename, &newDataQueue);

    // Create trigger method
    int8_t triggerLevel = 10;
	triggerThread = new Trigger(&newDataQueue, &triggeredQueue, triggerLevel);

    // Create processor method
    processorThread = new Processor(&triggeredQueue, &preProcessorQueue);

    postProcessorThread = new postProcessor(&preProcessorQueue, &postProcessorQueue);

    bridgeThread = new Bridge("testPipe",_gtxQueue,_grxQueue,_gtxLock,_grxLock);

    // Start all methods
    processorThread->processorUnpause();
    triggerThread->triggerUnpause();

    // start transfering
    bridgeThread->TxStart();
    bridgeThread->RxStart();

    std::this_thread::sleep_for(std::chrono::seconds(10));
    postProcessorThread->postProcessorUnpause();

    // Wait until window if full
    while (processorThread->getWindowStatus() == false) {
        std::this_thread::sleep_for(std::chrono::microseconds(100));
    }

	// Wait to recieve all messages back
    std::this_thread::sleep_for(std::chrono::seconds(5));

    INFO << "Test is done. Performing Cleanup";

    delete triggerThread;
    delete processorThread;
    delete postProcessorThread;
    delete bridgeThread;
}
