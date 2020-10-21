//
//  logger.cpp
//
//  Created by Alex Vandenberg on 2020-10-11.
//  Copyright © 2019 EEVengers. All rights reserved.
//

#include "logger.hpp"

//---------------EVLogger---------------
std::mutex EVLogger::lock;
EVLogger logger;

void EVLogger::Debug(const char* message)
{
    lock.lock();
    std::cout << message << std::endl;
    lock.unlock();
}

void EVLogger::Error(const char* message)
{
    lock.lock();
    std::cout << message << std::endl;
    lock.unlock();

}

void EVLogger::Warning(const char* message)
{
    lock.lock();
    std::cout << message << std::endl;
    lock.unlock();

}

void EVLogger::Critical(const char* message)
{
    lock.lock();
    std::cout << message << std::endl;
    lock.unlock();
}

void EVLogger::WriteToCSV(char* filename, unsigned char* buff, int buffSize, int numCols, char** colNames)
{
    std::ofstream file;
    file.open("filename");

    if (colNames != NULL) {
        for(int i = 0; i < numCols; i++) {
            file << std::string(colNames[i]) << ",";
        }
    }

    file << "\n";

    for(int i = 0; i < buffSize; i += numCols) {
        for(int q = 0; q < numCols; q++) {
            file << buff[i + q] << ",";
        }
        file << "\n";
    }
}
