

#include "NapiHook.hpp"
#include "EVTester.hpp"
#include "EVMath.hpp"
#include "digitalProcessor.hpp"
#include "dataTransferHandler.hpp"
#include "string.h"

//Queues for Rx and Tx between C++ and Js
std::queue<scope_link::NapiPacket*> _txQueue;
std::queue<scope_link::NapiPacket*> _rxQueue;
//Mutexs for the queues
std::shared_mutex _txLock;
std::shared_mutex _rxLock;

//array of packet processers that will execute the requests from JS
scope_link::PacketProcesser** _processers;

//test variables
EVSharedCache* dataCache;
unsigned char* bigArray;



//Init Code
int scope_link::InitScopeLink() {
    
    _processers = (scope_link::PacketProcesser**)malloc(sizeof(scope_link::PacketProcesser*) * scope_link::_num_of_packet_processer);
    for(int i = 0; i < scope_link::_num_of_packet_processer; i++) {
        _processers[i] = new scope_link::PacketProcesser(_txQueue,_rxQueue,_txLock,_rxLock);
        _processers[i]->start();
    }

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
    scope_link::NapiPacket* packet = (scope_link::NapiPacket*)malloc(sizeof(scope_link::NapiPacket));
    
    packet->command = data[0];
    packet->packetID = ((uint32_t*)(data + 1))[0];
    packet->data = (unsigned char*)malloc(sizeof(unsigned char) * (size - 5));
    packet->dataSize = size - 5;
    memcpy(packet->data,data + 5,packet->dataSize);
    
    return 100;
}

//WRAPPER
//Bad name i know, but this is a command that JS has sent, ie JS Send Command -> C++
Napi::Number scope_link::SendCommand(const Napi::CallbackInfo& info) {
    
    Napi::Buffer<uint8_t> buffer = info[0].As<Napi::Buffer<uint8_t>>();
    uint8_t* data = (unsigned char*)malloc(sizeof(uint8_t) * buffer.Length());
    memcpy(data,buffer.Data(),buffer.Length());

    //push the packet into the queue
    _rxLock.lock();
    _rxQueue.push((scope_link::NapiPacket*)data);
    _rxLock.unlock();
    
    return Napi::Number::New(info.Env(),((scope_link::NapiPacket*)(data))->packetID);
}

unsigned char* scope_link::GetData(size_t* packetSize) {
    unsigned char* packetBuff;
    scope_link::NapiPacket* packet;
    
    //TODO here would go the code that checks that packet processing machine for any packets to send
    //to javascript. This is to be implmented in talks with Alex and Daniel
    _txLock.lock();
    if(_txQueue.empty()) {
        packet = &scope_link::_emptyPacket;
    } else {
        packet = _txQueue.front();
        _txQueue.pop();
    }
    _txLock.unlock();
    
    //fill the packetbuff
    //allocate memory for the uint8_t command and uint32_t packetID
    packetBuff = (unsigned char*)malloc(6 + sizeof(unsigned char) * packet->dataSize);
    
    //copy the first six bytes in, command, packetID and dataSize
    memcpy(packetBuff,packet,6);
    //copy in the packet data
    memcpy(packetBuff + 6,packet->data,packet->dataSize);
    
    *packetSize = packet->dataSize + 6;//sets the size of the payload in the packet
    free(packet);//frees that packet that was waiting in the queue to be transmitted
    return packetBuff;
}

Napi::ArrayBuffer scope_link::GetDataWrapper(const Napi::CallbackInfo& info) {
    Napi::Env env = info.Env();
    //packet size is the number of bytes the packet is
    size_t packetSize;

    unsigned char* data = scope_link::GetData(&packetSize);
    
    Napi::ArrayBuffer array =  Napi::ArrayBuffer::New(env,(void*)data,packetSize,
                                  [](Napi::Env env,void* buff){});

    free(data);
    
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