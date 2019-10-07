//
//  EVDataTransferThread.hpp
//  Scope
//
//  Created by Daniel Vasile on 2019-07-30.
//  Copyright © 2019 EEVengers. All rights reserved.
//

#ifndef EVDataTransferThread_hpp
#define EVDataTransferThread_hpp

#include "EVLibrary.h"

/*
 *
 * @params
 * FT_HANDLE SuperSpeedFIFODridgeHandle - A Handle to the Super Speed FIFO Bridge that is opened using InitFTDISuperSpeedChip()
 * UCHAR **buffers - A 2D array that contains NUM_BUFFERS buffers of size BUFFER_SIZE
 * @return
 * Nothing
 */
void SuperSpeedFIFOBridgeHandler(FT_HANDLE SuperSpeedFIFOBridgeHandle, UCHAR buffers[NUM_FTDI_DATA_BUFFERS][FTDI_DATA_BUFFER_SZIE]);

#endif /* EVDataTransferThread_hpp */
