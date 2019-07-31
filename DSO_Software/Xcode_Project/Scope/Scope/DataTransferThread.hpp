//
//  DataTransferThread.hpp
//  Scope
//
//  Created by Daniel Vasile on 2019-07-30.
//  Copyright © 2019 EEVengers. All rights reserved.
//

#ifndef DataTransferThread_hpp
#define DataTransferThread_hpp

#include "EVLibrary.h"

/*
 *
 * @params
 * FT_HANDLE SuperSpeedFIFODridgeHandle - A Handle to the Super Speed FIFO Bridge that is opened using InitFTDISuperSpeedChip()
 * UCHAR **buffers - A 2D array that contains NUM_BUFFERS buffers of size BUFFER_SIZE
 * @return
 * Nothing
 */
void SuperSpeedFIFOBridgeHandler(FT_HANDLE SuperSpeedFIFOBridgeHandle, UCHAR **buffers);

#endif /* DataTransferThread_hpp */
