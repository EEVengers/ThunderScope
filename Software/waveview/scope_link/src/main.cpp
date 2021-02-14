//
//  main.cpp
//
//  Created by Daniel Vasile on 2019-07-26.
//  Copyright © 2019 EEVengers. All rights reserved.
//

#include "EVTester.hpp"
#include "logger.hpp"

void parseCommandLineArgs(int argc, char** args) {
    if(argc > 1) {
        if(std::string(args[1]) == "--TestSinc" || std::string(args[1]) == "-s") {
            INFO << "Main:parseCommandLineArgs() - Testing Sinc Interpolation";
            TestSincInterpolation();
        } else if(std::string(args[1]) == "--TestDataThroughput" || std::string(args[1]) == "-p") {
            INFO << "Main:parseCommandLineArgs() - Testing Data Throughput";
            TestDataThroughput();
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

    return;
}

int main(int argc, char** args)
{
    INFO << "Program Started";

    parseCommandLineArgs(argc, args);
    return 0;
}
