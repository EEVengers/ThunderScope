#include "EVTester.hpp"
#include "EVMath.hpp"
#include "digitalProcessor.hpp"
#include "dataTransferHandler.hpp"
#include "processor.hpp"
#include "trigger.hpp"
#include <boost/tokenizer.hpp>

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

bool loadFromFile ( char* filename, boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *outputQ)
{
    std::ifstream stream;
    stream.open(filename);

    char delim = '\n';
    std::string tmp;

    std::cout << "Loading from file " << filename << std::endl;

    buffer* tempBuffer;
    tempBuffer = bufferAllocator.allocate(1);
    bufferAllocator.construct(tempBuffer);
    uint32_t tmpBufPos = 0;

    while (std::getline(stream, tmp, delim)) {
//        std::cout << tmp << std::endl;

        // Parse the line into a buffer
        typedef boost::tokenizer<boost::char_separator<char>> tokenizer;
        boost::char_separator<char> sep{","};
        tokenizer tok{tmp, sep};
        for (const auto &t : tok) {
//            std::cout << t << '\n';

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
    // TODO: Handle unfinished buffer
    // Probably just delete it
    bufferAllocator.deallocate(tempBuffer, 1);

    return true;
}

void testTriggerThroughput()
{
    uint32_t testSize = 1000;
    uint32_t count = 0;

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

    count = trigger.countTriggered;

    // Take Timestamp
    auto end = std::chrono::high_resolution_clock::now();

    auto timeElapsed = end - start;

    uint32_t bytesTriggered = testSize * BUFFER_SIZE;
    double triggeredBps = ((double)bytesTriggered * S_TO_NS
                            / timeElapsed.count());
    double triggeredGBps = (((double)bytesTriggered * S_TO_NS)
                            / (timeElapsed.count()
                            * GIB_TO_GB));

    std::cout << "Triggers found: " << count << std::endl;
    std::cout << "Time Elapsed Triggering: " << timeElapsed.count() << " ns" << std::endl;  
    std::cout << "Triggered B: " << bytesTriggered << " B" << std::endl;
    std::cout << "Triggered B/s: " << triggeredBps << std::endl;
    std::cout << "Triggered GiB/s: " << triggeredGBps << std::endl;
}


void test1()
{

    // Create dummy queue
    boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> newDataQueue{1000};
    boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> triggeredQueue{1000};

    char filename[] = "test1.csv";

    loadFromFile(filename, &newDataQueue);

    // Create trigger method
    int8_t triggerLevel = 10;
    Trigger trigger(&newDataQueue, &triggeredQueue, triggerLevel);
    trigger.createThread();

    // Create processor method
    Processor processor(&triggeredQueue);
    processor.createThread();

    // Start all methods
    trigger.triggerUnpause();
    processor.processorUnpause();

    // Wait until window if full
    while (processor.getWindowStatus() == false) {
        std::this_thread::sleep_for(std::chrono::microseconds(100));
    }
    std::cout << "Test is done" << std::endl;
    trigger.destroyThread();
    processor.destroyThread();
}

void TestDataThroughPut()
{
    unsigned int bytesRead = 0;
//    int numDigitalProcessors = 5;    

    // Lock free queue of new data comming from FTDI through handler
    boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> newDataQueue{1000};
    boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> triggeredQueue{1000};

    // ****************** Transfering **********************
    std::cout << std::endl << "Beggining Transfer Test" << std::endl;

    // create transfer thread
    DataTransferHandler dataExchanger(&newDataQueue);
    dataExchanger.SetCopyFunc(DataTransferFullBuffRead);
    dataExchanger.createThread();
    std::cout << "Finished Creating dataExchanger" << std::endl;

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
    std::cout << "Finished transfering" << std::endl;

    // log the output
    std::cout << "Transfer Count: " << dataExchanger.getCount() << std::endl;
    std::cout << "Time Elapsed Transfering: " << timeElapsedTransfer.count() << " ns" << std::endl;  
    std::cout << "Read B: " << bytesRead << " B" << std::endl;
    std::cout << "Read B/s: " << readBps << std::endl;
    std::cout << "Read GiB/s: " << readGBps << std::endl;

    // ****************** Triggering **********************
    std::cout << std::endl << "Beggining Triggering Test" << std::endl;

    // create trigger thread
    Trigger trigger(&newDataQueue, &triggeredQueue, 127);
    trigger.createThread();
    std::cout << "Finished Creating trigger" << std::endl;

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
//    std::cout << "Trigger Count: " << trigger.getCount() << std::endl;
//    std::cout << "Time Elapsed Triggering: " << timeElapsedTrigger.count() << " ns" << std::endl;  
//    std::cout << "Triggered B: " << bytesTriggered << " B" << std::endl;
//    std::cout << "Triggered B/s: " << triggeredBps << std::endl;
//    std::cout << "Triggered GiB/s: " << triggeredGBps << std::endl;

    // ******************* Post Processing **********************
    std::cout << std::endl << "Beggining Post Processing Test" << std::endl;

//    Processor postProcessor(&newDataQueue);
    Processor postProcessor(&triggeredQueue);
    postProcessor.createThread();
    std::cout << "Finished Creating postProcessor" << std::endl;

    auto startProcessor = std::chrono::high_resolution_clock::now();

    auto endProcessor = postProcessor.getTimeFilled();

    auto timeElapsedProcessed = endProcessor - startProcessor;

    uint32_t bytesProcessed = postProcessor.getCountBytes();
    double processedBps = ((double)bytesProcessed
                            / (timeElapsedProcessed.count()) * S_TO_NS);
    double processedGBps = ((double)bytesProcessed
                            / timeElapsedProcessed.count())
                            * ((double)S_TO_NS / GIB_TO_GB);

    std::cout << "Processor Count: " << postProcessor.getCount() << std::endl;
    std::cout << "Processed B: " << bytesProcessed << std::endl;
    std::cout << "Processed B/s: " << processedBps << std::endl;
    std::cout << "Processed GiB/s: " << processedGBps << std::endl;

    // Cleanup thread
    dataExchanger.destroyThread();
    trigger.destroyThread();
    postProcessor.destroyThread();
}
