//
//  EVLibrary.h
//  Scope
//
//  Created by Daniel Vasile on 2019-07-30.
//  Copyright © 2019 EEVengers. All rights reserved.
//

#ifndef EVLibrary_h
#define EVLibrary_h

#include <thread>
#include <chrono>
#include <iostream>
#include "ftd3xx.h"
#include <assert.h>

#define FTDI_DATA_BUFFER_SIZE (2 * 1024 * 4) //8 smallest read size is 8KiBytes

#define DIGITAL_PROCESSING_BUFFER_NUM (3) //Have 3 cycling buffers
#define DIGITAL_PROCESSING_BUFFER_SIZE (4 * FTDI_DATA_BUFFER_SIZE) //4 Mb chunks to be transfered to the DataProcessing Thread/Object

//Flags
#define DATATRANSFERTHREAD_FLAG_PRINT_TO_FILE (1 << 1)
#define DATATRANSFERTHREAD_FLAG_TREAT_CHANNELS_AS_ONE (1 << 2)

#define FTDI_FLAG_READ_CHIP_TO_COMPUTER (0x82)

//global enums
enum EVErrorCodes
{
    EVErrorCodeInvalidValue,
    EVErrorCodeMallocFailed,
    EVErrorCodeServiceAlreadyRunning
};

//global classes
class EVException: public std::exception
{
    
public:
    const char* what;
    
    EVException(int errorCode, const char* subSystem);
};

class EVLogger
{
public:
    static std::mutex lock;
    static void debug(const char* message);
    static void error(const char* message);
    static void critical(const char* message);
    static void warning(const char* message);
};

class EVSharedCache
{
    
public:
    
    EVSharedCache(unsigned int cacheSize, unsigned int numCaches);
    ~EVSharedCache();
    
    void SetWriteCache(const unsigned char* buff);
    void PartialSetWriteCache(const unsigned char* buff, unsigned int& idx, unsigned int size);
    int CopyReadCache(unsigned char* buff, unsigned int size);
    
private:
    std::mutex lock;
    unsigned char** caches;
    unsigned int cacheSize;
    unsigned int numCaches;
    
    unsigned short writeCache;
    unsigned short readCache;
};

class EVEvent
{
public:
  
    EVEvent();
    
private:
    
protected:
};

//global variables
extern volatile bool programClosing;
extern EVLogger logger;

#endif /* EVLibrary_h */
