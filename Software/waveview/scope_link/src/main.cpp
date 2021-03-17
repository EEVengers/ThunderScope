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
//            INFO << "Running Test";
//            if (argc > 2) {
//                INFO << "Opening specified file";
//                inputFile = args[2];
//                testCsv(inputFile);
//            } else {
//                INFO << "No filename provided";
//                char filename[] = "../scope_link/test/test1.csv";
//                inputFile = filename;
//                testCsv(filename);
//            }
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

boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> dataQueue_1{1000};

controller* controllerThread = NULL;

bool parseCli (std::string line)
{
    if (line.rfind("test", 0) == 0) {
        INFO << "Test";

    } else if ("template" == line.substr(0, line.find(' '))) {
        INFO << "Template";

//        // Useful for accepting arguments from a command
//        std::string nextArgument = line.substr(line.find(' ', line.find(' ') + 1),
//                                                   line.find(' ') + 1);

        // Get the reset of the line after the first argument
        std::string nextLine = line.substr(line.find(' ') + 1, line.length());
        parseCli(nextLine);

    } else if (line == "getch") {
        if (controllerThread != NULL ) {
            INFO << "Number of channels: " << (int)controllerThread->getCh();
        }

    } else if ("setch" == line.substr(0, line.find(' '))) {
        INFO << "setting channel mode";

        // Useful for accepting arguments from a command
        std::string nextArgument = line.substr(line.find(' ') + 1, line.length());
        if (nextArgument != "setch") {
            if (nextArgument == "1") {
                controllerThread->setCh(1);
            } else if (nextArgument == "2") {
                controllerThread->setCh(2);
            } else if (nextArgument == "4") {
                controllerThread->setCh(4);
            } else {
                ERROR << "Not a channel mode";
            }
        }

    } else if (line == "gettrig") {
        if (controllerThread != NULL ) {
            INFO << "Trigger channel: " << (int)controllerThread->getTriggerCh();
        }

    } else if ("settrig" == line.substr(0, line.find(' '))) {
        INFO << "setting trigger channel";

        // Useful for accepting arguments from a command
        std::string nextArgument = line.substr(line.find(' ') + 1, line.length());
        if (nextArgument != "settrig") {
            if (nextArgument == "1") {
                controllerThread->setTriggerCh(1);
            } else if (nextArgument == "2") {
                controllerThread->setTriggerCh(2);
            } else if (nextArgument == "3") {
                controllerThread->setTriggerCh(3);
            } else if (nextArgument == "4") {
                controllerThread->setTriggerCh(4);
            } else {
                ERROR << "Not a trigger channel";
            }
        }

    } else if ("setwin" == line.substr(0, line.find(' '))) {
        if (controllerThread != NULL ) {
            INFO << "setting window size";

            // Useful for accepting arguments from a command
            std::string nextArgument = line.substr(line.find(' ') + 1, line.length());
            if (nextArgument != "setwin") {
                int32_t newWindowSize = stoi(nextArgument);
                controllerThread->setWindowSize(newWindowSize);
                INFO << "new window size: " << newWindowSize;
            }
        } else {
            ERROR << "No controller";
        }

    } else if (line == "getwin") {
        if (controllerThread != NULL ) {
            INFO << "Window Size: " << (int)controllerThread->getWindowSize();
        }

    } else if (line == "controller") {
        if (controllerThread == NULL ) {
            controllerThread = new controller(&dataQueue_1);
        }

    } else if (line == "pause") {
        if (controllerThread != NULL ) {
            controllerThread->controllerPause();
        }

    } else if (line == "unpause") {
        if (controllerThread != NULL ) {
            controllerThread->controllerUnPause();
        }

    } else if (line == "flush") {
        if (controllerThread != NULL ) {
            controllerThread->controllerFlush();
        }

    } else if (line == "getedgetype") {
        if (controllerThread != NULL ) {
            if (controllerThread->getEdgeType() == true) {
                INFO << "Rising edge triggering";
            } else {
                INFO << "Falling edge triggering";
            }
        }

    } else if (line == "setRising") {
        if (controllerThread != NULL ) {
            controllerThread->setRising();
        }

    } else if (line == "setFalling") {
        if (controllerThread != NULL ) {
            controllerThread->setFalling();
        }

    } else if ("datafile" == line.substr(0, line.find(' '))) {
        INFO << "Adding data from file to the pipeline";

        std::string nextArgument = line.substr(line.find(' ') + 1, line.length());
        if (nextArgument != "data") {

            nextArgument = "./scope_link/test/" + nextArgument;
            char* filename = (char*)malloc(nextArgument.size() + 1);
            std::strcpy(filename, nextArgument.c_str());
            inputFile = filename;
            loadFromFile(filename, &dataQueue_1);
            free(filename);
        } else {
            ERROR << "must provide file";
        }

    } else if ("data" == line.substr(0, line.find(' '))) {
        INFO << "Adding data to the pipeline";

        char filename[] = "./scope_link/test/test1.csv";
        inputFile = filename;
        loadFromFile(filename, &dataQueue_1);

    } else if (line == "delete" || line == "exit") {
        if (controllerThread != NULL ) {
            delete controllerThread;
            controllerThread = NULL;
        }

        if (line == "exit") {
            return false;
        }
    } else {
        ERROR << "Invalid Command";
        ERROR << "Commands are:";
        ERROR << "controller";
        ERROR << "unpause";
        ERROR << "data";
        ERROR << "datafile <csv file in waveview/scope_link/test/>";
        ERROR << "setch <# of channels: 1, 2 or 4>";
        ERROR << "settrig <channel to trig on: 1, 2, 3 or 4>";
        ERROR << "flush";
        ERROR << "exit";
    }
    return true;
}

void runCli() {

    bool parseThings = true;
    while(parseThings) {
        INFO << "Input a command\n>";
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
