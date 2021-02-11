#include "NapiHook.hpp"
#include "EVTester.hpp"
#include "EVMath.hpp"
#include "processor.hpp"
#include "dataTransferHandler.hpp"
#include "string.h"
#include "logger.hpp"

// Queues for Rx and Tx between C++ and Js
std::queue<NapiPacket*> _txQueue;
std::queue<NapiPacket*> _rxQueue;

// Mutexs for the queues
std::shared_mutex _txLock;
std::shared_mutex _rxLock;

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

// TODO: Why is packetSize passed in here?
// TODO: This function has no real error checking
unsigned char* GetData(size_t* packetSize) {
    unsigned char* packetBuff;
    NapiPacket* packet;

    // TODO here would go the code that checks that packet processing machine for any packets to
    // send to javascript. This is to be implmented in talks with Alex and Daniel
    _txLock.lock();
    if(_txQueue.empty()) {
        packet = &_emptyPacket;
    } else {
        packet = _txQueue.front();
        _txQueue.pop();
    }
    _txLock.unlock();

    // fill the packetbuff
    // allocate memory for the uint8_t command and uint32_t packetID
    packetBuff = (unsigned char*)malloc(6 + sizeof(unsigned char) * packet->dataSize);

    // copy the first six bytes in, command, packetID and dataSize
    memcpy(packetBuff, packet, 6);
    // copy in the packet data
    // TODO: When the packet is empty, packet->data points to a ramdom memory address.
    //       The only thing that saves it from seg fault is datasize = 0.
    memcpy(packetBuff + 6, packet->data, packet->dataSize);

    *packetSize = packet->dataSize + 6;// sets the size of the payload in the packet
    free(packet); // frees that packet that was waiting in the queue to be transmitted
    return packetBuff;
}

Napi::ArrayBuffer GetDataWrapper(const Napi::CallbackInfo& info) {
    Napi::Env env = info.Env();
    // packet size is the number of bytes the packet is
    size_t packetSize;

    unsigned char* data = GetData(&packetSize);

    Napi::ArrayBuffer array =  Napi::ArrayBuffer::New(env,(void*)data,packetSize,
                                  [](Napi::Env env,void* buff){});

    free(data);

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

void PacketProcesser::job() {
    while(run) {
        // get a packet
        bool gotPacket = false;;
        while(!gotPacket && run) {
            _rxLock.lock();
            if(_rxQueue.empty()) {
                std::this_thread::sleep_for(std::chrono::milliseconds(1));
                _rxLock.unlock();
                std::this_thread::sleep_for(std::chrono::milliseconds(9));
            } else {
                _rxPacket = _rxQueue.front();
                _rxQueue.pop();
                gotPacket = true;
                _rxLock.unlock();
            }
        }

        // check that we got a packet, not that the thread was told to stop
        if(!run) {
            break;
        }

        // Debug Printout
        INFO << "Packet Recieved: PacketID: %X, Command: %d, dataSize: %d\n"
             << _rxPacket->packetID
             << _rxPacket->command
             << _rxPacket->dataSize;

        // create the txPacket
        _txPacket = (NapiPacket*)malloc(sizeof(NapiPacket));
        _txPacket->command = _rxPacket->command;
        _txPacket->packetID = _rxPacket->packetID;

        /*
         * Run the packet's request
         * The repsonsibility for each command that is called and excuted is to return the
         * packet data as a malloc'd pointer so that it can be sent to JS then freed
         *
         * Signature of runable commands should follow : 
         *      uint16_t FUNCTION(unsigned char* rxData, unsigned char** txData) :
         *      return: the size of txData
         *      rxData: the unsigned char that holds data sent by JS
         *      txData: a pointer to the data array that will be sent to JS (the called
         *              function must malloc the underlying data)
         */
        switch(static_cast<NapiCommands>(_rxPacket->command)) {
            case GetChannelData:
            {
                uint8_t* txData = (uint8_t*)malloc(sizeof(uint8_t) * 255);
                for(uint8_t i = 0; i <= 254; i++) {
                    if(i % 2 == 0) {
                        txData[i] = i / 2;
                    } else {
                        txData[i] = static_cast<uint8_t>((static_cast<uint32_t>(i) * 2) % 200);
                    }
                }
                _txPacket->data = txData;
                _txPacket->dataSize = static_cast<uint16_t>(255);

                // ***** IF YOU GET error C2360 ---> Put your code in brackets, for some reason
                // VC++ refuses to let you declare a variable in only 1 case unless its in a
                // different scope, hence the brackets   
            }
            break;
            case GetChannelMeasurements:
            break;
            case ConfigureScope:
            break;
            default:
                ERROR << "Unknown Command: " << _rxPacket->command; 
            break;
        }
        // put the txPacket into the queue
        _txLock.lock();
        _txQueue.push(_txPacket);
        _txLock.unlock();
    }
}

void PacketProcesser::start() {
    // stop the current worker if it is already running
    if(_worker.joinable()) {
        run = false;
        _worker.join();
    }

    run = true;
    _worker = std::thread(&PacketProcesser::job, this);
}

void PacketProcesser::stop() {
    run = false;
    if(_worker.joinable()) {
        _worker.join();
    }
}

PacketProcesser::PacketProcesser(std::queue<NapiPacket*>& txQueue,
                                 std::queue<NapiPacket*>& rxQueue,
                                 std::shared_mutex& txLock,
                                 std::shared_mutex& rxLock) : 
    _txQueue(txQueue),
    _rxQueue(rxQueue),
    _txLock(txLock),
    _rxLock(rxLock)
{
    run = false;
}

PacketProcesser::~PacketProcesser() {
    if(_worker.joinable())
        _worker.join();
}
