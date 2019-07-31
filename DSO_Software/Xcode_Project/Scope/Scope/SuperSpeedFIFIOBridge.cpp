//
//  SuperSpeedFIFIOBridge.cpp
//  Scope
//
//  Created by Daniel Vasile on 2019-07-30.
//  Copyright © 2019 EEVengers. All rights reserved.
//

#include "SuperSpeedFIFIOBridge.hpp"

/*
 * Used To Get A Handle To The FTDI SuperSpeed FIFO Bridge
 * @params
 * FT_HANDLE *device_handle - A pointer to a variable which will hold the inialized handle to the FIFO SuperSpeed Bridge
 * @return
 * 0 on success
 */
int InitFTDISuperSpeedChip(FT_HANDLE *deviceHandle) {
    
    FT_DEVICE_LIST_INFO_NODE deviceInfoList[1];
    DWORD numDevices;
    DWORD error;
    
    //check the driver for a super speed FIFO buffer, if it exists, open it and set its configuration.
    if(FT_OK != (error = FT_CreateDeviceInfoList(&numDevices))) {
        std::cout << "Could Not Create Device Info List, Error: " << error << std::endl;
        return 1;
    }
    
    if( numDevices == 0 ) {
        std::cout << "No FTDI SuperSpeed Devices Have Been Detected" << std::endl;
        return 1;
    }
    
    if(FT_OK != (error = FT_GetDeviceInfoList(deviceInfoList, &numDevices))) {
        std::cout << "Could Not Get Device Info List, Error: " << error << std::endl;
        return 1;
    }
    
    if(FT_OK != (error = FT_Create( (PVOID)deviceInfoList[0].SerialNumber, (DWORD)FT_OPEN_BY_SERIAL_NUMBER, deviceHandle))){
        std::cout << "Could Not Open SuperSpeed FIFO Bridge Handle, Error: " << error << std::endl;
        return 1;
    }
    
    //Set Channel Config to fifo600_mode and 100Mhz clk with appropiate flags
    FT_60XCONFIGURATION oldConfig, newConfig;
    if(FT_OK != (error = FT_GetChipConfiguration(*deviceHandle, &oldConfig))) {
        std::cout << "Could Not Get SuperSpeed FIFO Bridge Configuration, Error Code: " << error << std::endl;
        return 1;
    }
    memcpy(&newConfig, &oldConfig, sizeof(FT_60XCONFIGURATION));
    newConfig.FIFOClock = CONFIGURATION_FIFO_CLK_100;
    newConfig.FIFOMode = CONFIGURATION_FIFO_MODE_245;
    newConfig.OptionalFeatureSupport |= CONFIGURATION_OPTIONAL_FEATURE_ENABLENOTIFICATIONMESSAGE_INCHALL | CONFIGURATION_OPTIONAL_FEATURE_DISABLECANCELSESSIONUNDERRUN | CONFIGURATION_OPTIONAL_FEATURE_DISABLEUNDERRUN_INCHALL;
    newConfig.ChannelConfig = CONFIGURATION_CHANNEL_CONFIG_1_INPIPE;
    if(FT_OK != (error = FT_SetChipConfiguration(*deviceHandle, &newConfig))) {
        std::cout << "Could Not Set SuperSpeed FIFO Bridge Configuration, Error Code: " << error << std::endl;
        return 1;
    }
    FT_Close(*deviceHandle);
    
    //Wait For The SuperSpeed FIFO Bridge To Power Cycle
    std::this_thread::sleep_for(std::chrono::seconds(1));
    
    //reopen device since configuration causes a reset
    *deviceHandle = 0;
    deviceInfoList[0] = {0};
    if(FT_OK != (error = FT_CreateDeviceInfoList(&numDevices))) {
        std::cout << "Could Not Create Device Info List After SuperSpeed FIFO Bridge Configuration, Error: " << error << std::endl;
        return 1;
    }
    
    if( numDevices == 0 ) {
        std::cout << "No FTDI SuperSpeed Devices Have Been Detected After SuperSpeed FIFO Bridge Configuration" << std::endl;
        return 1;
    }
    
    if(FT_OK != (error = FT_GetDeviceInfoList(deviceInfoList, &numDevices))) {
        std::cout << "Could Not Get Device Info List After SuperSpeed FIFO Bridge Configuration, Error: " << error << std::endl;
        return 1;
    }
    
    if(FT_OK != (error = FT_Create( (PVOID)deviceInfoList[0].SerialNumber, (DWORD)FT_OPEN_BY_SERIAL_NUMBER, deviceHandle))){
        std::cout << "Could Not Open SuperSpeed FIFO Bridge Handle After SuperSpeed FIFO Bridge Configuration, Error: " << error << std::endl;
        return 1;
    }
    
    return 0;
}
