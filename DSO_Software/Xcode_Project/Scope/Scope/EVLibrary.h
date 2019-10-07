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

#define NUM_FTDI_DATA_BUFFERS (3)
#define FTDI_DATA_BUFFER_SZIE (8 * 1024)

extern volatile bool programClosing;

#endif /* EVLibrary_h */
