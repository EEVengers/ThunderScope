#ifndef NapiHook_hpp
#define NapiHook_hpp
 
#include "napi.h"
#include <iostream>
#include <queue>
#include <mutex>
#include <thread>

#define TEST_ARRAY_SIZE (1<<23)

enum NapiCommands {
    GetChannelData,
    GetChannelMeasurements,
    ConfigureScope
};

// Externs
extern int _num_of_packet_processer;

// PACKET STRUCTURE
//   _______________________________________________________________________________________________________
//  |               |               |               |                                                       |
//  |    Command    |   PacketID    |   dataSize    |       Packet Data                                     |
//  |     16bits    |    16bits     |    16bits     |     However Many Bits as                              |
//  |     2Bytes    |    2Bytes     |    2Bytes     |     Defined by dataSize                               |
//  |               |               |               |                                                       |
//  |_______________|_______________|_______________|_______________________________________________________|
struct NapiPacket {
    // The command that is to be executed
    // This does not change from recieve to transmit
    uint16_t command;
    // The ID of the command and packet. Used to ensure that the proper data ends up where it needs to be.
    // Since multiple commands can be submitted in parallel and execution order is no guaranteed to be.
    // The same as submission order.
    // This does not change from recieve to transmit.
    uint16_t packetID;
    // The length of data
    uint16_t dataSize;
    // The relevant payload of the packet.
    // The contents of the payload will can change when c++ sends the data back to the javascript
    // ******IMPORTANT******
    // When recieving a packet from javascript, always memcpy it's data into a malloc'd buffer in c++
    // The pointer memory should stay internal to c++ at all times.
    // when sending a packet to javascript that needs the data, memcpy the
    // entire NapiPacket and let the NAPI callback take care of memory allocation
    uint8_t* data;
};

// Init Code
int InitScopeLink();
// WRAPER
Napi::Number InitScopeLinkWrapper(const Napi::CallbackInfo& info);

// Handle NAPI Command: This function will decode an NAPI command and queue it up for execution
int HandleCommand(unsigned char* data, size_t size);
// WRAPPER
Napi::Number SendCommand(const Napi::CallbackInfo& info);

// GetData:
unsigned char* GetData(size_t* packetSize);
// WRAPER
Napi::ArrayBuffer GetDataWrapper(const Napi::CallbackInfo& info);

// Stop Code
//void Stop();
// WRAPPER
//void StopWrapper(const Napi::CallbackInfo& info);

// Test Throughput Code
unsigned char* TestThroughPut();
//WRAPER
Napi::ArrayBuffer TestThroughPutWrapper(const Napi::CallbackInfo& info);

// GetTimeNs
unsigned long GetTimeUs();
// WRAPPER
Napi::Number GetTimeUsWrapper(const Napi::CallbackInfo& info);

// EXPORT
Napi::Object NapiExport(Napi::Env env, Napi::Object exports);

// Class that will do all the requests
class PacketProcesser {
private:

    // Queue References
    std::queue<NapiPacket*>& _txQueue;
    std::queue<NapiPacket*>& _rxQueue;

    // since each processer shares the same tx and rx queue, this mutex is used to assure only 1 uses it at a time
    std::mutex& _txLock;
    std::mutex& _rxLock;

    std::thread _worker;
    bool run;
    NapiPacket* _rxPacket;
    NapiPacket* _txPacket;

    // This is the looping function that the thread runs when start() is called
    void job();

public:

    // each thread will be given the rx queue and the tx queue. Once started
    // they will take packets from the rxQueue (once aviable).
    // process them, then put the return packet into the txQueue
    PacketProcesser(std::queue<NapiPacket*>& txQueue,
                    std::queue<NapiPacket*>& rxQueue,
                    std::mutex& txLock,
                    std::mutex& rxLock);

    void start();

    void stop();

    ~PacketProcesser();
};

#endif
