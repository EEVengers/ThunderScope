#include "EVTester.hpp"
#include "EVMath.hpp"
#include "digitalProcessor.hpp"
#include "dataTransferHandler.hpp"
#include "processor.hpp"
#include "trigger.hpp"

void TestSincInterpolation() {

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

void TestDataThroughPut() {
    unsigned int bytesProcessed = 0;
    unsigned int bytesRead = 0;
//    int numDigitalProcessors = 5;    

    // Lock free queue of new data comming from FTDI through handler
    boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> newDataQueue{1000};
    boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> triggeredQueue{1000};

    // Create all threads
    DataTransferHandler dataExchanger(&newDataQueue);
    dataExchanger.SetCopyFunc(DataTransferFullBuffRead);
    dataExchanger.createThread();
    std::cout << "Finished Creating dataExchanger" << std::endl;

    Trigger trigger(&newDataQueue, &triggeredQueue, 128);
    trigger.createThread();
    std::cout << "Finished Creating trigger" << std::endl;

//    Processor postProcessor(&newDataQueue);
    Processor postProcessor(&triggeredQueue);
    postProcessor.createThread();
    std::cout << "Finished Creating postProcessor" << std::endl;

    std::cout << "Starting Execution" << std::endl;

    //start a timer 
    auto start = std::chrono::high_resolution_clock::now();

    //start the transfer
    dataExchanger.transferUnpause();

    //run transfer
//    std::this_thread::sleep_for(std::chrono::seconds(TEST_RUN_TIME));
    // Continue processing until all are triggered
    while (!postProcessor.getWindowStatus()) {
        std::this_thread::sleep_for(std::chrono::microseconds(100));
    }
    
    dataExchanger.stopHandler();

    auto endTransfer = std::chrono::high_resolution_clock::now();
    auto end = std::chrono::high_resolution_clock::now();
    auto endTrigger = std::chrono::high_resolution_clock::now();

    auto timeElapsedTrigger = endTrigger - start;
    auto timeElapsedTransfer = endTransfer - start;
    auto timeElapsed = end - start;

    // Cleanup transfer handler thread
    dataExchanger.destroyThread();
    trigger.destroyThread();
    postProcessor.destroyThread();

    bytesRead = dataExchanger.getCountBytes();
    bytesProcessed = postProcessor.getCountBytes();
    uint32_t bytesTriggered = trigger.getCountBytes();

    double readBps = ((double)bytesRead * S_TO_NS / timeElapsedTransfer.count());
    double readGBps = (((double)bytesRead * S_TO_NS) / (timeElapsedTransfer.count() * GIB_TO_GB));
    double triggeredBps = ((double)bytesTriggered * S_TO_NS / timeElapsedTrigger.count());
    double triggeredGBps = (((double)bytesTriggered * S_TO_NS) / (timeElapsedTrigger.count() * GIB_TO_GB));
    double processedBps = ((double)bytesProcessed / (timeElapsed.count()) * S_TO_NS);
    double processedGBps = ((double)bytesProcessed / timeElapsed.count()) * ((double)S_TO_NS / GIB_TO_GB);

    std::cout << "Handler Count: " << dataExchanger.getCount() << std::endl;
    std::cout << "Trigger Count: " << trigger.getCount() << std::endl;
    std::cout << "Processor Count: " << postProcessor.getCount() << std::endl;

    std::cout << std::endl;

    std::cout << "Time Elapsed Transfering: " << timeElapsedTransfer.count() << " ns" << std::endl;  
    std::cout << "Read B: " << bytesRead << " B" << std::endl;
    std::cout << "Read B/s: " << readBps << std::endl;
    std::cout << "Read GiB/s: " << readGBps << std::endl;

    std::cout << std::endl;

    std::cout << "Time Elapsed: " << timeElapsed.count() << " ns" << std::endl;  
    std::cout << "Triggered B: " << bytesTriggered << " B" << std::endl;
    std::cout << "Triggered B/s: " << triggeredBps << std::endl;
    std::cout << "Triggered GiB/s: " << triggeredGBps << std::endl;

    std::cout << std::endl;

    std::cout << "Processed B: " << bytesProcessed << std::endl;
    std::cout << "Processed B/s: " << processedBps << std::endl;
    std::cout << "Processed GiB/s: " << processedGBps << std::endl;
}
