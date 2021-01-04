//
//  main.cpp
//
//  Created by Daniel Vasile on 2019-07-26.
//  Copyright © 2019 EEVengers. All rights reserved.
//

#include "EVTester.hpp"
#include "logger.hpp"

#include <thread>

#define FIFO_SUPER_SPEED_BRIDGE_NAME "FTDI SuperSpeed-FIFO Bridge"
void run()
{
    while(!programClosing){
        std::this_thread::sleep_for(std::chrono::seconds(1));
        INFO << "1 second has passed";
    }
}

int parseCommandLineArgs(int argc, char** args) {
    int flags = 0;

    if(argc > 1) {
        if(std::string(args[1]) == "--TestSinc" || std::string(args[1]) == "-s") {
            INFO << "Main:parseCommandLineArgs() - Testing Sinc Interpolation";
            TestSincInterpolation();
        } else if(std::string(args[1]) == "--TestDataThroughput" || std::string(args[1]) == "-p") {
            INFO << "Main:parseCommandLineArgs() - Testing Data Throughput";
            TestDataThroughPut();
        } else if(std::string(args[1]) == "--benchmark" || std::string(args[1]) == "-b") {
            INFO << "Main:parseCommandLineArgs() - Testing Trigger Throughput";
            testBenchmark();
        } else if(std::string(args[1]) == "--testTrigger") {
            INFO << "Main:parseCommandLineArgs() - Testing Trigger Throughput";
            testTriggerThroughput();
        } else if(std::string(args[1]) == "-t" || std::string(args[1]) == "--test") {
            INFO << "Running Test";
            if (argc > 2) {
                testCsv(args[2]);
            } else {
                char filename[] = "test1.csv";
                testCsv(filename);
            }
        } else {
            ERROR << "Invalid arguments. Use -t <filename.csv> or --TestSinc or --TestDataThroughput";
        }
    } else {
        ERROR << "Invalid arguments. Use -t <filename.csv> or --TestSinc or --TestDataThroughput";
    }

    return flags;
}

int main(int argc, char** args)
{
    INFO << "Program Started";

    parseCommandLineArgs(argc, args);
    return 0;
}
