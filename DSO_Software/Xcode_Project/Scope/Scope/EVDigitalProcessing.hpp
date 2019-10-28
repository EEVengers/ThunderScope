//
//  EVDigitalProcessing.hpp
//  Scope
//
//  Created by Daniel Vasile on 2019-08-06.
//  Copyright © 2019 EEVengers. All rights reserved.
//

#ifndef EVDigitalProcessing_hpp
#define EVDigitalProcessing_hpp

#include "EVLibrary.h"

class DigitalProcessor
{
public:
    DigitalProcessor();
    
    void Test();
    EVSharedCache* cache;

    ~DigitalProcessor();
    
private:
    
    void WriteToCSV(const unsigned char* buff, const unsigned int size, const char* filename);
    
protected:
    
    
    
};

#endif /* EVDigitalProcessing_hpp */
