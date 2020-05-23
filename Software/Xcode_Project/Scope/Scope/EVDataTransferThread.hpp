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

enum CopyFuncs
{
    digitalProcessorFunc
};

/*
 Container class that encapsulates all data transfers that occur in this program.
 FTDIChip -> DataHandler
 DataHandler -> DigitalProcessingHandler
 DigitalProcessingHandler -> Electron app
 */
class DataTransferHandler
{
    public:
    
    DataTransferHandler();
    
    void StartFTDITransferThread();
    void SetFTDITransferCopyFunction();
    void SetCopyFunc(CopyFuncs Func);
    
    EVSharedCache* processingThreadSharedCache;
    
    ~DataTransferHandler();
        
    private:
    
    static void FTDITransferThread(DataTransferHandler* handler);
    
    FT_HANDLE superSpeedFIFOBridgeHandle;
    
    void (*CopyFunc)(unsigned char* buff, unsigned int& idx, unsigned int size, void* obj);
    
    unsigned char* dataBuffer;
    
    bool closeFTDIDataTransferThread;
    bool closeDigitalProcessingTransferThread;
    bool closeElectronTransferThread;
    std::thread superSpeedFTDITransferThread;
    std::thread digitalProcessingTransferThread;
    std::thread electronTransferThread;
    
        
    protected:
    std::mutex lock;
    
};

#endif /* EVDataTransferThread_hpp */
