#include "NapiHook.hpp"
#include "EVTester.hpp"
#include "EVMath.hpp"
#include "processor.hpp"
#include "dataTransferHandler.hpp"
#include "string.h"
#include "logger.hpp"
#include "packetProcessor.hpp"

// Queues for Rx and Tx between C++ and Js
std::queue<NapiPacket*> _txQueue;
std::queue<NapiPacket*> _rxQueue;

// Mutexs for the queues
std::mutex _txLock;
std::mutex _rxLock;

// array of packet processers that will execute the requests from JS
PacketProcesser** _processers;

int _num_of_packet_processer = 10;

// test variables
EVSharedCache* dataCache;
unsigned char* bigArray;

// Init Code
int InitScopeLink() {

    // These are never deallocated?
    _processers = (PacketProcesser**)malloc(sizeof(PacketProcesser*)
                  * _num_of_packet_processer);

    for(int i = 0; i < _num_of_packet_processer; i++) {
        _processers[i] = new PacketProcesser(_txQueue, _rxQueue, _txLock, _rxLock);
        _processers[i]->start();
    }

    // used to test the throughput of the NAPI link
    bigArray = (unsigned char*)malloc(sizeof(unsigned char) * TEST_ARRAY_SIZE);
    for(int i = 0 ; i < TEST_ARRAY_SIZE; i++) {
        bigArray[i] = i % 127;
    }

    return 1;
}

// WRAPER
Napi::Number InitScopeLinkWrapper(const Napi::CallbackInfo& info) {
    Napi::Env env = info.Env();

    return Napi::Number::New(env,InitScopeLink());
}


int HandleCommand(unsigned char* data, size_t size) {
    NapiPacket* packet = (NapiPacket*)malloc(sizeof(NapiPacket));

    packet->command = data[0];
    packet->packetID = ((uint32_t*)(data + 1))[0];
    packet->data = (unsigned char*)malloc(sizeof(unsigned char) * (size - 5));
    packet->dataSize = size - 5;
    memcpy(packet->data,data + 5,packet->dataSize);

    return 100;
}

// WRAPPER
// Bad name i know, but this is a command that JS has sent, ie JS Send Command -> C++
Napi::Number SendCommand(const Napi::CallbackInfo& info) {

    Napi::Buffer<uint8_t> buffer = info[0].As<Napi::Buffer<uint8_t>>();
    uint8_t* data = (unsigned char*)malloc(sizeof(uint8_t) * buffer.Length());
    memcpy(data,buffer.Data(),buffer.Length());

    // push the packet into the queue
    _rxLock.lock();
    _rxQueue.push((NapiPacket*)data);
    _rxLock.unlock();

    return Napi::Number::New(info.Env(),((NapiPacket*)(data))->packetID);
}

unsigned char* GetData(size_t* packetSize) {
    // TODO here would go the code that checks that packet processing machine for any packets to
    // send to javascript. This is to be implmented in talks with Alex and Daniel

    _txLock.lock();
    if(_txQueue.empty()) {
        _txLock.unlock();

        *packetSize = 6;
        NapiPacket* tempPacket = (NapiPacket*) malloc(sizeof(NapiPacket));

        tempPacket->command = 0;
        tempPacket->packetID = 0;
        tempPacket->dataSize = 0;
        tempPacket->data = NULL;

        return (unsigned char*)tempPacket;
    } else {
        NapiPacket* packet = _txQueue.front();
        _txQueue.pop();

        _txLock.unlock();

        // fill the packetbuff
        // allocate memory for the uint8_t command and uint32_t packetID
        unsigned char* packetBuff = (unsigned char*)malloc(6 + sizeof(unsigned char) * packet->dataSize);

        // copy the first six bytes in, command, packetID and dataSize
        memcpy(packetBuff, packet, 6);

        // copy in the packet data
        memcpy(packetBuff + 6, packet->data, packet->dataSize);

        *packetSize = packet->dataSize + 6;// sets the size of the payload in the packet
        free(packet); // frees that packet that was waiting in the queue to be transmitted
        return packetBuff;
    }
}

void cleanupHook (Napi::Env env, void* arg) {
    // TODO: Make a proper destructor for the data
    //       This would include freeing the header, and deallocating the
    //       persistance data seperately.
    INFO << "Freed some data " << arg;
    free(arg);
}

Napi::ArrayBuffer GetDataWrapper(const Napi::CallbackInfo& info) {
    Napi::Env env = info.Env();
    // packet size is the number of bytes the packet is
    size_t packetSize;

    unsigned char* data = GetData(&packetSize);

    // Data is freed by the callback cleanupHook
    Napi::ArrayBuffer array =  Napi::ArrayBuffer::New(env,
                                                      (void*)data,
                                                      packetSize,
                                                      cleanupHook);

    return array;
}

// Test Throughput Code
unsigned char* TestThroughPut() {
    unsigned char* data = (unsigned char*)malloc(sizeof(unsigned char) * TEST_ARRAY_SIZE);

    memcpy(data,bigArray,TEST_ARRAY_SIZE);

    return data;
}

// WRAPER
Napi::ArrayBuffer TestThroughPutWrapper(const Napi::CallbackInfo& info) {
    Napi::Env env = info.Env();

    unsigned char* data = TestThroughPut();

    Napi::ArrayBuffer array = Napi::ArrayBuffer::New(env,
                                                     (void*)data,
                                                     TEST_ARRAY_SIZE,
                                                     [](Napi::Env env,void* buff)
                                                         {
                                                         INFO << "Callback Called";
                                                         }
                                                    );

    return array;
}

// GetTimeUs
unsigned long GetTimeUs() {
    unsigned long us = std::chrono::duration_cast<std::chrono::microseconds>(std::chrono::steady_clock::
                      now().time_since_epoch()).count();
    return us;
}

// WRAPPER
Napi::Number GetTimeUsWrapper(const Napi::CallbackInfo& info) {
    Napi::Env env = info.Env();

    return Napi::Number::New(env,GetTimeUs());
}

Napi::Object NapiExport(Napi::Env env, Napi::Object exports) {

    exports.Set("InitScopeLink",Napi::Function::New(env,InitScopeLinkWrapper));
    exports.Set("SendCommand",Napi::Function::New(env,SendCommand));
    exports.Set("GetData",Napi::Function::New(env,GetDataWrapper));
    exports.Set("GetTimeUs",Napi::Function::New(env,GetTimeUsWrapper));
    exports.Set("TestThroughPut",Napi::Function::New(env,TestThroughPutWrapper));

    return exports;
}

// Register Module
NODE_API_MODULE(addon,NapiExport);
