
#ifdef CMAKE
#include "NapiHook.hpp"
#include "EVTester.hpp"
#include "EVMath.hpp"
#include "digitalProcessor.hpp"
#include "dataTransferHandler.hpp"
#include "string.h"

EVSharedCache* dataCache;
unsigned char* bigArray;

//Init Code
int scope_link::InitScopeLink() {
    
    //create a transfer thread and 3 risingEdgeTrigger DataProccessing Threads
    //DataTransferHandler* dataExchanger;
 
    //dataExchanger = new DataTransferHandler();
    //dataExchanger->SetCopyFunc(DataTransferFullBuffRead);
    //dataCache = dataExchanger->threadSharedCache;
 
    //start the transfer thread
    //dataExchanger->StartFTDITransferThread();
    
    //used to test the throughput of the NAPI link
    bigArray = (unsigned char*)malloc(sizeof(unsigned char) * TEST_ARRAY_SIZE);
    for(int i = 0 ; i < TEST_ARRAY_SIZE; i++) {
        bigArray[i] = i % 127;
    }
    
    return 1;
}

//WRAPER
Napi::Number scope_link::InitScopeLinkWrapper(const Napi::CallbackInfo& info) {
    Napi::Env env = info.Env();

    return Napi::Number::New(env,scope_link::InitScopeLink());
}


int scope_link::HandleCommand(unsigned char* data, size_t size) {
    scope_link::NapiPacket packet;
    
    packet.command = data[0];
    packet.packetID = ((uint32_t*)(data + 1))[0];
    packet.data = (unsigned char*)malloc(sizeof(unsigned char) * (size - 5));
    packet.dataSize = size - 5;
    
    memcpy(packet.data,data + 5,packet.dataSize);
    
    printf("Packet Recieved: PacketID: %X, Command: %d, dataSize: %zu\n", packet.packetID, packet.command, packet.dataSize);
    for(int i = 0; i < packet.dataSize; i++) {
        std::cout << "Packet data[" << i << "]: " << packet.data[i] << std::endl;
    }
    
    return 100;
}

//WRAPPER
Napi::Number scope_link::SendCommand(const Napi::CallbackInfo& info) {
    
    Napi::Buffer<unsigned char> buffer = info[0].As<Napi::Buffer<unsigned char>>();
    unsigned char* data = (unsigned char*)malloc(sizeof(unsigned char) * buffer.Length());
    memcpy(data,buffer.Data(),buffer.Length());
    
    return Napi::Number::New(info.Env(),scope_link::HandleCommand(data,buffer.Length()));
}

unsigned char* scope_link::GetData(size_t* packetSize) {
    unsigned char* packetBuff;
    scope_link::NapiPacket packet;
    
    //TODO here would go the code that checks that packet processing machine for any packets to send
    //to javascript. This is to be implmented in talks with Alex and Daniel
    //use a hard coded packet for now
    packet.command = 1;
    packet.packetID = 20;
    packet.data = (unsigned char*)malloc(sizeof(unsigned char) * 20);
    for(int i = 0; i < 20; i++) {
        packet.data[i] = i;
    }
    packet.dataSize = 20;
    
    //fill the packetbuff
    //allocate memory for the uint8_t command and uint32_t packetID
    packetBuff = (unsigned char*)malloc(5 + sizeof(unsigned char) * packet.dataSize);
    
    //copy the first six bytes in, command, packetID and dataSize
    memcpy(packetBuff,&packet,6);
    //copy in the packet data
    memcpy(packetBuff + 6,packet.data,packet.dataSize);
    
    *packetSize = packet.dataSize + 6;
    return packetBuff;
}

Napi::ArrayBuffer scope_link::GetDataWrapper(const Napi::CallbackInfo& info) {
    Napi::Env env = info.Env();
    //packet size is the number of bytes the packet is
    size_t packetSize;

    unsigned char* data = scope_link::GetData(&packetSize);
    
    Napi::ArrayBuffer array =  Napi::ArrayBuffer::New(env,(void*)data,packetSize,
                                  [](Napi::Env env,void* buff){ std::cout << "Callback Called" << std::endl;});
    
    return array;
}

//Test Throughput Code
unsigned char* scope_link::TestThroughPut() {
    unsigned char* data = (unsigned char*)malloc(sizeof(unsigned char) * TEST_ARRAY_SIZE);
    
    memcpy(data,bigArray,TEST_ARRAY_SIZE);
    
    return data;
}
//WRAPER
Napi::ArrayBuffer scope_link::TestThroughPutWrapper(const Napi::CallbackInfo& info) {
    Napi::Env env = info.Env();
    
    unsigned char* data = scope_link::TestThroughPut();
    
    Napi::ArrayBuffer array =  Napi::ArrayBuffer::New(env,(void*)data,TEST_ARRAY_SIZE,[](Napi::Env env,void* buff){ std::cout << "Callback Called" << std::endl;});
    uint8_t* buff = (uint8_t*)array.Data();

    return array;
}

//GetTimeUs
unsigned long scope_link::GetTimeUs() {
    unsigned long us = std::chrono::duration_cast<std::chrono::microseconds>(std::chrono::steady_clock::
                      now().time_since_epoch()).count();
    return us;
}
//WRAPPER
Napi::Number scope_link::GetTimeUsWrapper(const Napi::CallbackInfo& info) {
    Napi::Env env = info.Env();
    
    return Napi::Number::New(env,scope_link::GetTimeUs());
}

Napi::Object scope_link::NapiExport(Napi::Env env, Napi::Object exports) {

    exports.Set("InitScopeLink",Napi::Function::New(env,scope_link::InitScopeLinkWrapper));
    exports.Set("SendCommand",Napi::Function::New(env,scope_link::SendCommand));
    exports.Set("GetData",Napi::Function::New(env,scope_link::GetDataWrapper));
    exports.Set("GetTimeUs",Napi::Function::New(env,scope_link::GetTimeUsWrapper));
    exports.Set("TestThroughPut",Napi::Function::New(env,scope_link::TestThroughPutWrapper));

    return exports;
}

#endif

