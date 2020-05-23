//
//  EVSuperSpeedFIFIOBridge.cpp
//  Scope
//
//  Created by Daniel Vasile on 2019-07-30.
//  Copyright © 2019 EEVengers. All rights reserved.
//

#include "EVSuperSpeedFIFIOBridge.hpp"

/*
 * Used To Get A Handle To The FTDI SuperSpeed FIFO Bridge
 * @params
 * FT_HANDLE *device_handle - A pointer to a variable which will hold the inialized handle to the FIFO SuperSpeed Bridge
 */
void InitFTDISuperSpeedChip(FT_HANDLE *deviceHandle) {
    
    FT_DEVICE_LIST_INFO_NODE deviceInfoList[1];
    DWORD numDevices;
    DWORD error;
    
    //check the driver for a super speed FIFO buffer, if it exists, open it and set its configuration.
    if(FT_OK != (error = FT_CreateDeviceInfoList(&numDevices))) {
        throw EVException(error,"EVSuperSpeedFIFOBRidge:InitFTDISuperSpeedChip:FT_CreateDeviceList()");
    }
    
    if( numDevices == 0 ) {
        error = EVErrorCodeInvalidValue;
        throw EVException(error,"EVSuperSpeedFIFOBRidge:InitFTDISuperSpeedChip");
    }
    
    if(FT_OK != (error = FT_GetDeviceInfoList(deviceInfoList, &numDevices))) {
        throw EVException(error,"EVSuperSpeedFIFOBRidge:InitFTDISuperSpeedChip:FT_GetDeviceInfoList()");
    }
    
    if(FT_OK != (error = FT_Create( (PVOID)(deviceInfoList[0].Description), (DWORD)FT_OPEN_BY_DESCRIPTION, deviceHandle))){
        throw EVException(error,"EVSuperSpeedFIFOBRidge:InitFTDISuperSpeedChip:FT_Create");
    }
    
    //Set Channel Config to fifo600_mode and 100Mhz clk with appropiate flags
    FT_60XCONFIGURATION oldConfig, newConfig;
    if(FT_OK != (error = FT_GetChipConfiguration(*deviceHandle, &oldConfig))) {
        throw EVException(error,"EVSuperSpeedFIFOBRidge:InitFTDISuperSpeedChip:FT_GetChipConfiguration");
    }
    memcpy(&newConfig, &oldConfig, sizeof(FT_60XCONFIGURATION));
    newConfig.FIFOClock = CONFIGURATION_FIFO_CLK_100;
    newConfig.FIFOMode = CONFIGURATION_FIFO_MODE_245;
    newConfig.OptionalFeatureSupport |= CONFIGURATION_OPTIONAL_FEATURE_ENABLENOTIFICATIONMESSAGE_INCHALL | CONFIGURATION_OPTIONAL_FEATURE_DISABLECANCELSESSIONUNDERRUN | CONFIGURATION_OPTIONAL_FEATURE_DISABLEUNDERRUN_INCHALL;
    newConfig.ChannelConfig = CONFIGURATION_CHANNEL_CONFIG_1_INPIPE;
    if(FT_OK != (error = FT_SetChipConfiguration(*deviceHandle, &newConfig))) {
        throw new EVException(error,"EVSuperSpeedFIFOBRidge:InitFTDISuperSpeedChip:FT_SetChipConfiguration");
    }
    FT_Close(*deviceHandle);
    
    //Wait For The SuperSpeed FIFO Bridge To Power Cycle
    std::this_thread::sleep_for(std::chrono::seconds(1));
    
    //reopen device since configuration causes a reset
    *deviceHandle = 0;
    deviceInfoList[0] = {0};
    if(FT_OK != (error = FT_CreateDeviceInfoList(&numDevices))) {
        throw new EVException(error,"EVSuperSpeedFIFOBRidge:InitFTDISuperSpeedChip:FT_CreateDeviceInfoList");
    }
    
    if( numDevices == 0 ) {
        error = EVErrorCodeInvalidValue;
        throw new EVException(error,"EVSuperSpeedFIFOBRidge:InitFTDISuperSpeedChip");
    }
    
    if(FT_OK != (error = FT_GetDeviceInfoList(deviceInfoList, &numDevices))) {
        throw new EVException(error,"EVSuperSpeedFIFOBRidge:InitFTDISuperSpeedChip:FT_GetDeviceInfoList");
    }
    
    if(FT_OK != (error = FT_Create( (PVOID)deviceInfoList[0].SerialNumber, (DWORD)FT_OPEN_BY_SERIAL_NUMBER, deviceHandle))){
        throw new EVException(error,"EVSuperSpeedFIFOBRidge:InitFTDISuperSpeedChip:FT_Create");
    }
    
}
