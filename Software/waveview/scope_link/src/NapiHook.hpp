#ifndef NapiHook
 
#include <napi.h>
#include <iostream>

#include "EVLibrary.hpp"

#define TEST_ARRAY_SIZE (1<<23)

enum NapiCommands {
    GetChannelData,
    GetChannelMeasurements,
    ConfigureScope
};

namespace scope_link
{
    struct NapiPacket {
        //The command that is to be executed
        //this does not change from recieve to transmit
        uint8_t command;
        //the ID of the command and packet. Used to ensure that the proper data ends up where it needs to be
        //since multiple commands can be submitted in parallel and execution order is no guaranteed to be
        //the same as submission order
        //this does not change from recieve to transmit
        uint32_t packetID;
        //the length of data
        size_t dataSize;
        //The relevant payload of the packet
        //the contents of the payload will can change when c++ sends the data back to the javascript
        //******IMPORTANT******
        //When recieving a packet from javascript, always memcpy it's data into a malloc'd buffer in c++
        //The pointer memory should stay internal to c++ at all times.
        //when sending a packet to javascript that needs the data, memcpy the entire NapiPacket and let the NAPI callback take care of memory allocation
        unsigned char* data;
    };

    //Init Code
    int InitScopeLink();
    //WRAPER
    Napi::Number InitScopeLinkWrapper(const Napi::CallbackInfo& info);

    //Handle NAPI Command: This function will decode an NAPI command and queue it up for execution
    int HandleCommand(unsigned char* data, size_t size);
    //WRAPPER
    Napi::Number SendCommand(const Napi::CallbackInfo& info);

    //GetData:
    unsigned char* GetData(size_t* packetSize);
    //WRAPER
    Napi::ArrayBuffer GetDataWrapper(const Napi::CallbackInfo& info);

    //Stop Code
    //void Stop();
    //WRAPPER
    //void StopWrapper(const Napi::CallbackInfo& info);

    //Test Throughput Code
    unsigned char* TestThroughPut();
    //WRAPER
    Napi::ArrayBuffer TestThroughPutWrapper(const Napi::CallbackInfo& info);

    //GetTimeNs
    unsigned long GetTimeUs();
    //WRAPPER
    Napi::Number GetTimeUsWrapper(const Napi::CallbackInfo& info);

    //EXPORT
    Napi::Object NapiExport(Napi::Env env, Napi::Object exports);
    NODE_API_MODULE(addon,NapiExport);
}
  
#endif
