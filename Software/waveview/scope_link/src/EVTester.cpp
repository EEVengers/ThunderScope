#include "EVTester.hpp"
#include "EVMath.hpp"
#include "dataTransferHandler.hpp"
#include "processor.hpp"
#include "trigger.hpp"
#include <boost/tokenizer.hpp>

uint32_t testSize = 1000;

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

    while (std::getline(stream, tmp, delim)) {
        // Parse the line into a buffer
        typedef boost::tokenizer<boost::char_separator<char>> tokenizer;
        boost::char_separator<char> sep{","};
        tokenizer tok{tmp, sep};
        for (const auto &t : tok) {

#ifdef DBG
            if (std::stoi(t) > 255) {
                INFO << "Error: Number greater than 255";
            } else if (std::stoi(t) > INT8_MAX) {
                INFO << "Error: Number greater than 127 is converted to negative";
            } else if ((int8_t)std::stoi(t) < -128) {
                INFO << "Error: Number less than -128";
            }
#endif

            tempBuffer->data[tmpBufPos] = (int8_t)std::stoi(t);

            tmpBufPos++;
            if (tmpBufPos == BUFFER_SIZE) {
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
    trigger.createThread();

    // Create processor method
    Processor processor(&triggeredQueue);
    processor.createThread();

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
    trigger.destroyThread();
    processor.destroyThread();
}

Trigger* triggerThread;
Processor* processorThread;

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
    // Create queue
    boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> newDataQueue{1000};
    boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> triggeredQueue{1000};

    if (inputFile != NULL) {
        loadFromFile(inputFile, &newDataQueue);
    } else {
		std::string inputFileName = "test1.csv";
        inputFile = (char *)malloc(inputFileName.size() + 1);
		memcpy(inputFile, inputFileName.c_str(), inputFileName.size() + 1);
        // TODO: Initialize the pcie drivers and pass it the newDataQueue.
		//       Replace this whole else statement with the driver stuff.
    }

    // Create trigger method
    int8_t triggerLevel = 10;
	triggerThread = new Trigger(&newDataQueue, &triggeredQueue, triggerLevel);
	triggerThread->createThread();

    // Create processor method
    processorThread = new Processor(&triggeredQueue);
	processorThread->createThread();

    // Start all methods
    processorThread->processorUnpause();
    triggerThread->triggerUnpause();
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

    triggerThread->destroyThread();
    processorThread->destroyThread();
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
    boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> newDataQueue{1000};
    boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> triggeredQueue{1000};

    loadFromFile(filename, &newDataQueue);

    // Create trigger method
    int8_t triggerLevel = 10;
    Trigger trigger(&newDataQueue, &triggeredQueue, triggerLevel);
    trigger.createThread();

    // Create processor method
    Processor processor(&triggeredQueue);
    processor.createThread();

    // Start all methods
    processor.processorUnpause();
    trigger.triggerUnpause();

    // Wait until window if full
    while (processor.getWindowStatus() == false) {
        std::this_thread::sleep_for(std::chrono::microseconds(100));
    }

    INFO << "Test is done. Performing Cleanup";
    trigger.destroyThread();
    processor.destroyThread();
}

void TestDataThroughput()
{
    unsigned int bytesRead = 0;

    // Lock free queue of new data comming from FTDI through handler
    boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> newDataQueue{1000};
    boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> triggeredQueue{1000};

    // ****************** Transfering **********************
    INFO << "Beining Transfer Test";

    // create transfer thread
    DataTransferHandler dataExchanger(&newDataQueue);
    dataExchanger.SetCopyFunc(DataTransferFullBuffRead);
    dataExchanger.createThread();
    INFO << "Finished Creating dataExchanger";

    // run and queue transfer
    auto startTransfer = std::chrono::high_resolution_clock::now();
    dataExchanger.transferUnpause();

    std::this_thread::sleep_for(std::chrono::seconds(TEST_RUN_TIME));

    // stop transfer
    dataExchanger.stopHandler();
    auto endTransfer = std::chrono::high_resolution_clock::now();

    auto timeElapsedTransfer = endTransfer - startTransfer;

    bytesRead = dataExchanger.bytesRead;
    double readBps = ((double)bytesRead * S_TO_NS / timeElapsedTransfer.count());
    double readGBps = (((double)bytesRead * S_TO_NS) / (timeElapsedTransfer.count() * GIB_TO_GB));
    INFO << "Finished transfering";

    // log the output
    INFO << "Transfer Count: " << dataExchanger.getCount();
    INFO << "Time Elapsed Transfering: " << timeElapsedTransfer.count() << " ns";
    INFO << "Read B: " << bytesRead << " B";
    INFO << "Read B/s: " << readBps;
    INFO << "Read GiB/s: " << readGBps;

    // ****************** Triggering **********************
    INFO << std::endl << "Beggining Triggering Test";

    // create trigger thread
    Trigger trigger(&newDataQueue, &triggeredQueue, 127);
    trigger.createThread();
    INFO << "Finished Creating trigger";

    // run trigger and queue
//    auto startTrigger = std::chrono::high_resolution_clock::now();

//    while (!trigger.getWindowStatus()) {
//        std::this_thread::sleep_for(std::chrono::microseconds(100));
//    }

//    auto endTrigger = trigger.getTimeTriggerd();
//    
//    auto timeElapsedTrigger = endTrigger - startTrigger;
//
//    uint32_t bytesTriggered = trigger.getCountBytes();
//    double triggeredBps = ((double)bytesTriggered * S_TO_NS
//                            / timeElapsedTrigger.count());
//    double triggeredGBps = (((double)bytesTriggered * S_TO_NS)
//                            / (timeElapsedTrigger.count()
//                            * GIB_TO_GB));
//
//    INFO << "Trigger Count: " << trigger.getCount();
//    INFO << "Time Elapsed Triggering: " << timeElapsedTrigger.count() << " ns";
//    INFO << "Triggered B: " << bytesTriggered << " B";
//    INFO << "Triggered B/s: " << triggeredBps;
//    INFO << "Triggered GiB/s: " << triggeredGBps;

    // ******************* Post Processing **********************
    INFO << "Beggining Post Processing Test";

//    Processor postProcessor(&newDataQueue);
    Processor postProcessor(&triggeredQueue);
    postProcessor.createThread();
    INFO << "Finished Creating postProcessor";

    auto startProcessor = std::chrono::high_resolution_clock::now();

    auto endProcessor = postProcessor.getTimeFilled();

    auto timeElapsedProcessed = endProcessor - startProcessor;

    uint32_t bytesProcessed = postProcessor.getCountBytes();
    double processedBps = ((double)bytesProcessed
                            / (timeElapsedProcessed.count()) * S_TO_NS);
    double processedGBps = ((double)bytesProcessed
                            / timeElapsedProcessed.count())
                            * ((double)S_TO_NS / GIB_TO_GB);

    INFO << "Processor Count: " << postProcessor.getCount();
    INFO << "Processed B: " << bytesProcessed;
    INFO << "Processed B/s: " << processedBps;
    INFO << "Processed GiB/s: " << processedGBps;

    // Cleanup thread
    dataExchanger.destroyThread();
    trigger.destroyThread();
    postProcessor.destroyThread();
}
