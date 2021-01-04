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
#include "exception.hpp"

//FTDI Define

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

/* ERROR AND DEBUG LOGGING */

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
};

/* END OF CACHING */

//global variables
extern volatile bool programClosing;

#endif /* EVLibrary_h */
