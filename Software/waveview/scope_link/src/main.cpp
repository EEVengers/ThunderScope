//
//  main.cpp
//  Scope
//
//  Created by Daniel Vasile on 2019-07-26.
//  Copyright © 2019 EEVengers. All rights reserved.
//

#include "EVLibrary.hpp"
#include "EVMath.hpp"
#include "EVSuperSpeedFIFOBridge.hpp"
#include "dataTransferHandler.hpp"
#include "digitalProcessor.hpp"
#include "EVTester.hpp"

#define FIFO_SUPER_SPEED_BRIDGE_NAME "FTDI SuperSpeed-FIFO Bridge"
void run()
{
    while(!programClosing){
        std::this_thread::sleep_for(std::chrono::seconds(1));
        logger.Debug("Main:Run() - 1 second has passed");
    }
}

int parseCommandLineArgs(int argc, char** args) {
    int flags = 0;

    if(argc > 1) {
        if(std::string(args[1]) == "--TestSinc" || std::string(args[1]) == "-s") {
            logger.Debug("Main:parseCommandLineArgs() - Testing Sinc Interpolation");
            TestSincInterpolation();
//            } else if(std::string(args[i]) == "--TestDataThroughput" || std::string(args[i]) == "-p") {
//                logger.Debug("Main:parseCommandLineArgs() - Testing Data Throughput");
//                TestDataThroughPut();
        } else if(std::string(args[1]) == "--testTrigger" || std::string(args[1]) == "-t") {
            logger.Debug("Main:parseCommandLineArgs() - Testing Trigger Throughput");
            testTriggerThroughput();
        } else if(std::string(args[1]) == "--t1") {
            logger.Debug("Running Test 1");
            if (argc > 2) {
                test1(args[2]);
            } else {
                char filename[] = "test1.csv";
                test1(filename);
            }
        } else {
            logger.Debug("Main:parseCommandLineArgs() - Invalid arguments. Use --TestSinc or --TestDataThroughPut");
        }
    } else {
        logger.Debug("Main:parseCommandLineArgs() - no arguments provided. Use --TestSinc or --TestDataThroughPut");
    }

    return flags;
}

int main(int argc, char** args)
{
    parseCommandLineArgs(argc, args);
    return 0;
}
