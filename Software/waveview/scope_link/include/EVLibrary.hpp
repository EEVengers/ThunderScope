//
//  EVLibrary.hpp
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
#include <fstream>
#include "ftd3xx.h"
#include <assert.h>
#include <math.h>
#include <mutex>
#include <cstring>

#include "logger.hpp"

//FTDI Define

// Buffer size in bytes
#define BUFFER_1K   1024
#define BUFFER_2K   2048
#define BUFFER_4K   4096
#define BUFFER_8K   8192
#define BUFFER_16K  16384
#define BUFFER_32K  32768
#define BUFFER_64K  65536
#define BUFFER_128K 131072
#define BUFFER_256K 262144

#define BUFFER_SIZE BUFFER_8K

//#define FT601_CHIP_DESC "EVScope USB Transfer Chip"
#define FT601_CHIP_DESC "FTDI SuperSpeed-FIFO Bridge"

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


class EVException: public std::exception
{
    std::string m_msg;

public:
    virtual const char * what() const throw();

    EVException(int errorCode, const char* subSystem);
};


/* ERROR AND DEBUG LOGGING */

/* SIGNALS AND SIGNAL HANDLING */

class EVCacheCopySignal
{
public:

    void Trigger();
    void Subscribe();

private:

protected:
};

/* END OF SIGNAL AND SIGNAL HANDLING */

/* CACHING */

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

    EVCacheCopySignal copySignal;
};

/* END OF CACHING */

/* EVMath Structs and Enums */

struct DataPoint {

    float time;
    float value;

};

/* END OF EVMATH STRUCTS AND ENUMS*/

//global variables
extern volatile bool programClosing;

#endif /* EVLibrary_h */
