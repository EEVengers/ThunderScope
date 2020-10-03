//
//  EVSuperSpeedFIFIOBridge.cpp
//  Scope
//
//  Created by Daniel Vasile on 2019-07-30.
//  Copyright © 2019 EEVengers. All rights reserved.
//

#include "EVSuperSpeedFIFOBridge.hpp"

/*
 * Used To Get A Handle To The FTDI SuperSpeed FIFO Bridge
 * @params
 * FT_HANDLE *device_handle - A pointer to a variable which will hold the inialized handle to the FIFO SuperSpeed Bridge
 */
void InitFTDISuperSpeedChip(FT_HANDLE *deviceHandle) {

    DWORD numDevices;
    DWORD error;
    DWORD driverVersion;
    DWORD libraryVersion;
    unsigned long chipIdx = -1;

    //Get library version
    FT_GetLibraryVersion(&libraryVersion);
    EVLogger::Debug( (std::string("Library Version is: ") + std::to_string(libraryVersion)).c_str() );

    //check the driver for a super speed FIFO buffer, if it exists, open it and set its configuration.
    if(FT_OK != (error = FT_CreateDeviceInfoList(&numDevices))) {
        throw EVException(error,"EVSuperSpeedFIFOBRidge:InitFTDISuperSpeedChip:FT_CreateDeviceList()",nullptr);
    }

    if( numDevices == 0 ) {
        error = EVErrorCodeInvalidValue;
        throw EVException(error,"EVSuperSpeedFIFOBRidge:InitFTDISuperSpeedChip",nullptr);
    }

    FT_DEVICE_LIST_INFO_NODE deviceInfoList[numDevices];

    if(FT_OK != (error = FT_GetDeviceInfoList(deviceInfoList, &numDevices))) {
        throw EVException(error,"EVSuperSpeedFIFOBRidge:InitFTDISuperSpeedChip:FT_GetDeviceInfoList()",nullptr);
    }

    //Find the index of the EVScope USB Transfer Chip
    for(int i = 0; i < numDevices; i++) {
        if(std::string(deviceInfoList[i].Description) == std::string(FT601_CHIP_DESC)) {
            chipIdx = i;
        }
    }
    //if no scope USB transfer chip was found
    if(chipIdx == -1) {
        throw EVException(error,"EVSuperSpeedFIFOBridge:InitFTDISuperSpeedChip:Find_Chip_Idx",nullptr);
    }
    
    if(FT_OK != (error = FT_Create( (PVOID)chipIdx, (DWORD)FT_OPEN_BY_INDEX, deviceHandle))){
        throw EVException(error,"EVSuperSpeedFIFOBRidge:InitFTDISuperSpeedChip:FT_Create",nullptr);
    }

    //Get Drvier Version for the FTDI chip
    FT_GetDriverVersion(*deviceHandle,&driverVersion);
    EVLogger::Debug( (std::string("Driver Version for FT601 is: ") + std::to_string(driverVersion)).c_str() );

    //Set Channel Config to fifo600_mode and 100Mhz clk with appropiate flags
    FT_60XCONFIGURATION oldConfig, newConfig;
    if(FT_OK != (error = FT_GetChipConfiguration(*deviceHandle, &oldConfig))) {
        throw EVException(error,"EVSuperSpeedFIFOBRidge:InitFTDISuperSpeedChip:FT_GetChipConfiguration",nullptr);
    }
    memcpy(&newConfig, &oldConfig, sizeof(FT_60XCONFIGURATION));
    newConfig.FIFOClock = CONFIGURATION_FIFO_CLK_100;
    newConfig.FIFOMode = CONFIGURATION_FIFO_MODE_245;
    newConfig.OptionalFeatureSupport |= CONFIGURATION_OPTIONAL_FEATURE_ENABLENOTIFICATIONMESSAGE_INCHALL | CONFIGURATION_OPTIONAL_FEATURE_DISABLECANCELSESSIONUNDERRUN | CONFIGURATION_OPTIONAL_FEATURE_DISABLEUNDERRUN_INCHALL;
    newConfig.ChannelConfig = CONFIGURATION_CHANNEL_CONFIG_1_INPIPE;
    if(FT_OK != (error = FT_SetChipConfiguration(*deviceHandle, &newConfig))) {
        throw new EVException(error,"EVSuperSpeedFIFOBRidge:InitFTDISuperSpeedChip:FT_SetChipConfiguration",nullptr);
    }
    FT_Close(*deviceHandle);

    //Wait For The SuperSpeed FIFO Bridge To Power Cycle
    std::this_thread::sleep_for(std::chrono::seconds(1));

    //reopen device since configuration causes a reset
    *deviceHandle = 0;
    deviceInfoList[0] = {0};
    if(FT_OK != (error = FT_CreateDeviceInfoList(&numDevices))) {
        throw new EVException(error,"EVSuperSpeedFIFOBRidge:InitFTDISuperSpeedChip:FT_CreateDeviceInfoList",nullptr);
    }

    if( numDevices == 0 ) {
        error = EVErrorCodeInvalidValue;
        throw new EVException(error,"EVSuperSpeedFIFOBRidge:InitFTDISuperSpeedChip",nullptr);
    }

    FT_DEVICE_LIST_INFO_NODE _deviceInfoList[numDevices];
    
    if(FT_OK != (error = FT_GetDeviceInfoList(_deviceInfoList, &numDevices))) {
        throw new EVException(error,"EVSuperSpeedFIFOBRidge:InitFTDISuperSpeedChip:FT_GetDeviceInfoList",nullptr);
    }

    chipIdx = -1;
    //Find the index of the EVScope USB Transfer Chip
    for(int i = 0; i < numDevices; i++) {
        if(std::string(_deviceInfoList[i].Description) == std::string(FT601_CHIP_DESC)) {
            chipIdx = i;
        }
    }
    //if no scope USB transfer chip was found
    if(chipIdx == -1) {
        throw EVException(error,"EVSuperSpeedFIFOBridge:InitFTDISuperSpeedChip:Find_Chip_Idx",nullptr);
    }

    if(FT_OK != (error = FT_Create( (PVOID)chipIdx, (DWORD)FT_OPEN_BY_INDEX, deviceHandle))){
        throw EVException(error,"EVSuperSpeedFIFOBRidge:InitFTDISuperSpeedChip:FT_Create",nullptr);
    }
}

//needs to be called before each FT_Create()
void InitTransferParams() {
    for(int i = 0; i < 3; i++) {
        FT_TRANSFER_CONF config[1] = {0};

    }
}
