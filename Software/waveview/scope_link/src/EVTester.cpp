#include "EVTester.hpp"
#include "EVMath.hpp"
#include "digitalProcessor.hpp"
#include "dataTransferHandler.hpp"

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
    int numDigitalProcessors = 5;    

    //create a transfer thread and 3 risingEdgeTrigger DataProccessing Threads

    DataTransferHandler dataExchanger;
    dataExchanger.SetCopyFunc(DataTransferFullBuffRead);
    std::thread handlerThread = std::thread(&DataTransferHandler::FTDITransferThread, &dataExchanger);

    DigitalProcessor* digitalProcessor[numDigitalProcessors];
    for(int i = 0; i < numDigitalProcessors; i++) {
        digitalProcessor[i] = new DigitalProcessor();
        digitalProcessor[i]->SetSharedCache(dataExchanger.threadSharedCache);
    }

    //start a timer 
    auto start = std::chrono::high_resolution_clock::now();

    //start the DataProcessing Threads
    for(int i = 0; i < numDigitalProcessors; i++) {
        digitalProcessor[i]->StartRisingEdgeTriggerThread();
    }

    //start the transfer thread
    dataExchanger.transferUnpause();

    //run for 1 minute
    std::this_thread::sleep_for(std::chrono::seconds(TEST_RUN_TIME));

    //end process and print out Bytes processed / second

    for(int i = 0; i < numDigitalProcessors; i++) {
        digitalProcessor[i]->StopThread();
    }
    dataExchanger.stopHandler();
    handlerThread.join();
    
    auto end = std::chrono::high_resolution_clock::now();
    auto timeElapsed = end - start;

    bytesRead = dataExchanger.bytesRead;
    for(int i = 0; i < numDigitalProcessors; i++) {
        bytesProcessed += digitalProcessor[i]->bytesProcessed;
        delete digitalProcessor[i];
    }

    double readBps = ((double)bytesRead * S_TO_NS / timeElapsed.count());
    double readGBps = (((double)bytesRead * S_TO_NS) / (timeElapsed.count() * GIB_TO_GB));
    double processedBps = ((double)bytesProcessed / (timeElapsed.count()) * S_TO_NS);
    double processedGBps = ((double)bytesProcessed / timeElapsed.count()) * ((double)S_TO_NS / GIB_TO_GB);

    std::cout << "Time Elapsed: " << timeElapsed.count() << " ns" << std::endl;  
    std::cout << "Read B: " << bytesRead << "B" << std::endl;
    std::cout << "Read B/s: " << readBps << std::endl;
    std::cout << "Read GiB/s: " << readGBps << std::endl;
    std::cout << "Processed B: " << bytesProcessed << std::endl;
    std::cout << "Processed B/s: " << processedBps << std::endl;
    std::cout << "Processed GiB/s: " << processedGBps << std::endl;
}
