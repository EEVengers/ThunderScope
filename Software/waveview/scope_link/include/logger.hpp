//
//  logger.hpp
//
//  Created by Alex Vandenberg on 2020-10-11.
//  Copyright © 2019 EEVengers. All rights reserved.
//

#ifndef logger_h
#define logger_h

#include <mutex>
#include <iostream>
#include <fstream>

/* ERROR AND DEBUG LOGGING */

class EVLogger
{
public:
    static std::mutex lock;
    static void Debug(const char* message);
    static void Error(const char* message);
    static void Critical(const char* message);
    static void Warning(const char* message);
    static void WriteToCSV(char* filename, unsigned char* buff, int buffSize, int numCols, char** colNames);
};

extern EVLogger logger;

#endif // logger_h
