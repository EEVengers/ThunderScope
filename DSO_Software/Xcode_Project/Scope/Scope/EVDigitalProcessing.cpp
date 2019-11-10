//
//  EVDigitalProcessing.cpp
//  Scope
//
//  Created by Daniel Vasile on 2019-08-06.
//  Copyright © 2019 EEVengers. All rights reserved.
//

#include "EVDigitalProcessing.hpp"
#include <fstream>

DigitalProcessor::DigitalProcessor()
{
    cache = new EVSharedCache(DIGITAL_PROCESSING_BUFFER_SIZE,DIGITAL_PROCESSING_BUFFER_NUM);
}

void DigitalProcessor::Test()
{
    unsigned char* buff = (unsigned char*)malloc(sizeof(unsigned char) * DIGITAL_PROCESSING_BUFFER_SIZE);
    unsigned char* totalBuff = (unsigned char*)malloc(sizeof(unsigned char) * DIGITAL_PROCESSING_BUFFER_SIZE * 8);
    unsigned int size = 0;
    for(int i = 0; i < 8; i++) {
        //wait until there is new data
        while(cache->CopyReadCache(buff, DIGITAL_PROCESSING_BUFFER_SIZE))
        {
            std::this_thread::sleep_for(std::chrono::microseconds(100));
        };
        memcpy(totalBuff + size,buff,DIGITAL_PROCESSING_BUFFER_SIZE);
        size += DIGITAL_PROCESSING_BUFFER_SIZE;
    }
    //write to file
    WriteToCSV(totalBuff, size, "Board Data.csv");
    free(buff);
}

void DigitalProcessor::WriteToCSV(const unsigned char* buff, const unsigned int size, const char* filename) {
    std::fstream fs;
    fs.open(filename, std::fstream::in | std::fstream::app);
    //print each byte data in its own coloumn, 4 coloumns per row
    for(unsigned int i = 0; i < size - 3; i += 4) {
        fs << i << "," << (int)buff[i] << "," << (int)buff[i + 1]
        << "," << (int)buff[i + 2] << "," << (int)buff[i + 3] << std::endl;
    }
    fs << std::endl;
    fs.close();
}

DigitalProcessor::~DigitalProcessor() {
    if(cache != nullptr) {
        delete cache;
    }
}
