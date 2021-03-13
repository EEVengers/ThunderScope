//
//  main.cpp
//
//  Created by Daniel Vasile on 2019-07-26.
//  Copyright © 2019 EEVengers. All rights reserved.
//

#include "EVTester.hpp"
#include "dspPipeline.hpp"
#include "logger.hpp"
#include "controller.hpp"

// for runSocketTest
#include "bridge.hpp"

void parseCommandLineArgs(int argc, char** args) {
    if(argc > 1) {
        if(std::string(args[1]) == "--TestSinc" || std::string(args[1]) == "-s") {
            INFO << "Main:parseCommandLineArgs() - Testing Sinc Interpolation";
            TestSincInterpolation();
        } else if(std::string(args[1]) == "--testTrigger") {
            INFO << "Main:parseCommandLineArgs() - Testing Trigger Throughput";
            testTriggerThroughput();
        } else if(std::string(args[1]) == "-t" || std::string(args[1]) == "--test") {
            INFO << "Running Test";
            if (argc > 2) {
                INFO << "Opening specified file";
                inputFile = args[2];
                testCsv(inputFile);
            } else {
                INFO << "No filename provided";
                char filename[] = "../scope_link/test/test1.csv";
                inputFile = filename;
                testCsv(filename);
            }
        } else if(std::string(args[1]) == "--socket") {
            // Run socket test
            INFO << "Running socket test";

            runSocketTest();
        } else {
            ERROR << "Invalid arguments. Use -t <filename.csv> or --TestSinc or --TestDataThroughput";
        }
    } else {
        ERROR << "Invalid arguments. Use -t <filename.csv> or --TestSinc or --TestDataThroughput";
    }

    return;
}

void WebServerTest() {

}

    boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> dataQueue_1{1000};
//    boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> dataQueue_2{1000};
//    boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> dataQueue_3{1000};
//    boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> dataQueue_4{1000};

    boost::lockfree::queue<EVPacket*, boost::lockfree::fixed_sized<false>> cmdQueue{1000};
    boost::lockfree::queue<EVPacket*, boost::lockfree::fixed_sized<false>> mainBridge_rx{1000};

    Bridge* bridgeThread = NULL;
    dspPipeline* dspThread_1 = NULL;
//    dspPipeline* dspThread_2;
//    dspPipeline* dspThread_3;
//    dspPipeline* dspThread_4;
    controller* controllerThread = NULL;

bool parseCli (std::string line)
{
    if (line.rfind("test", 0) == 0) {
        INFO << "Test";

    } else if ("template" == line.substr(0, line.find(' '))) {
        INFO << "Template";

        // Useful for accepting arguments from a command
        std::string nextArgument = line.substr(line.find(' ', line.find(' ') + 1),
                                                   line.find(' ') + 1);

        // Get the reset of the line after the first argument
        std::string nextLine = line.substr(line.find(' ') + 1, line.length());
        parseCli(nextLine);

    } else if (line == "create") {
        if (bridgeThread == NULL) {
            INFO << "Creating Bridge";
            bridgeThread = new Bridge("testPipe", &mainBridge_rx, &cmdQueue);
        } else {
            WARN << "Bridge already exists";
        }

        if (dspThread_1 == NULL) {
            INFO << "Creating Pipeline";
            dspThread_1 = new dspPipeline(&dataQueue_1);
        } else {
            WARN << "Channel 1 already exists";
        }

    } else if (line == "controller") {
        controllerThread = new controller();

    } else if (line == "connect") {
        if (bridgeThread == NULL) {
            WARN << "bridge does not exist to connect with";
        } else {
            INFO << "connecting to js";
            bridgeThread->TxStart();
            bridgeThread->RxStart();
        }

    } else if (line == "pause") {
        if (dspThread_1 == NULL) {
            WARN << "dsp does not exist to pause";
        } else {
            INFO << "Pausing Pipeline";
            dspThread_1->dspPipelinePause();
        }

    } else if (line == "unpause") {
        if (dspThread_1 == NULL) {
            WARN << "dsp does not exist to unpause";
        } else {
            INFO << "Unpausing Pipeline";
            dspThread_1->dspPipelineUnPause();
        }

    } else if (line == "flush") {
        if (dspThread_1 == NULL) {
            WARN << "dsp does not exist to flush";
        } else {
            INFO << "Flushing Pipeline";
            dspThread_1->dspPipelineFlush();
        }

    } else if (line == "data") {
        INFO << "Adding data to the pipeline";
        char filename[] = "./scope_link/test/test1.csv";
        inputFile = filename;
        loadFromFile(filename, &dataQueue_1);

    } else if (line == "delete" || line == "exit") {
        INFO << "Deleting Pipeline and bridge";
        if (dspThread_1 == NULL) {
            WARN << "Pipeline doesn't exist to delete";
        } else {
            INFO << "Deleting Pipeline";
            delete dspThread_1;
            dspThread_1 = NULL;
        }

        if (bridgeThread == NULL ) {
            WARN << "bridge doesn't exist to delete";
        } else {
            INFO << "Deleting bridge";
            delete bridgeThread;
            bridgeThread = NULL;
        }
//            delete dspThread_2;
//            delete dspThread_3;
//            delete dspThread_4;

        if (line == "exit") {
            return false;
        }
    } else {
        ERROR << "Invalid Command"
              << " Commands are:"
              << " create"
              << ", unpause"
              << ", data"
              << ", delete"
              << ", exit";
    }
    return true;
}

void runCli() {

    bool parseThings = true;
    while(parseThings) {
        INFO << "Input a command";
        printf("> ");
        std::string line;
        std::getline(std::cin, line);

        parseThings = parseCli(line);
    }
}
int main(int argc, char** args)
{
    INFO << "Program Started";

    if (argc > 1) {
        parseCommandLineArgs(argc, args);
    } else {
        INFO << "Running in CLI mode";
        runCli();
    }
    return 0;
}
