#ifndef NapiHook_hpp
#define NapiHook_hpp
 
#include "napi.h"
#include <iostream>
#include <queue>
#include <shared_mutex>
#include <thread>

#define TEST_ARRAY_SIZE (1<<23)

enum NapiCommands {
    GetChannelData,
    GetChannelMeasurements,
    ConfigureScope
};

namespace scope_link
{
    // defines except variables so they can be changed
    int _num_of_packet_processer = 10;

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

    //empty packet declatration
    uint8_t* emptyData;
    NapiPacket _emptyPacket = { 0, 0, 0, emptyData };

    //Class that will do all the requests
    class PacketProcesser {
        private:

        //since each processer shares the smae tx and rx queue, this mutex is used to assure only 1 uses it at a time
        std::shared_mutex& _rxLock;
        std::shared_mutex& _txLock;
        
        //Queue References
        std::queue<scope_link::NapiPacket*>& _txQueue;
        std::queue<scope_link::NapiPacket*>& _rxQueue;

        std::thread _worker;
        bool run;
        scope_link::NapiPacket* _rxPacket;
        scope_link::NapiPacket* _txPacket;

        //This is the looping function that the thread runs when start() is called
        static void job(PacketProcesser* obj) {
            while(obj->run) {
                //get a packet
                bool gotPacket = false;;
                while(!gotPacket && obj->run) {
                    obj->_rxLock.lock();
                    if(obj->_rxQueue.empty()) {
                        std::this_thread::sleep_for(std::chrono::milliseconds(1));
                        obj->_rxLock.unlock();
                        std::this_thread::sleep_for(std::chrono::milliseconds(9));
                    } else {
                        obj->_rxPacket = obj->_rxQueue.front();
                        obj->_rxQueue.pop();
                        gotPacket = true;
                        obj->_rxLock.unlock();
                    }
                }
                //check that we got a packet, not that the thread was told to stop
                if(!obj->run)
                    break;

                //Debug Printout
                printf("Packet Recieved: PacketID: %X, Command: %d, dataSize: %d\n", obj->_rxPacket->packetID, obj->_rxPacket->command, obj->_rxPacket->dataSize);

                //create the txPacket
                obj->_txPacket = (scope_link::NapiPacket*)malloc(sizeof(scope_link::NapiPacket));
                obj->_txPacket->command = obj->_rxPacket->command;
                obj->_txPacket->packetID = obj->_rxPacket ->packetID;
                //run the packet's request
                //*** The repsonsibility for each command that is called and excuted is to return the packet data as a malloc'd pointer so that it can be sent to JS then freed ****
                //*** Signature of runable commands should follow : uint16_t FUNCTION(unsigned char* rxData, unsigned char** txData) :  \
                                                                    return: the size of txData                                          \
                                                                    rxData: the unsigned char that holds data sent by JS                \
                                                                    txData: a pointer to the data array that will be sent to JS (the called function must malloc the underlying data)
                switch(static_cast<NapiCommands>(obj->_rxPacket->command)) {
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
                        obj->_txPacket->data = txData;
                        obj->_txPacket->dataSize = static_cast<uint16_t>(255);
                    }//***** IF YOU GET error C2360 ---> Put your code in brackets, for some reason VC++ refuses to let you declare a variable in only 1 case unless its in a different scope, hence the brackets   
                    break;
                    case GetChannelMeasurements:
                    break;
                    case ConfigureScope:
                    break;
                    default:
                        std::cout << "Unknown Command: " << obj->_rxPacket->command << std::endl; 
                    break;
                }
                //put the txPacket into the queue
                obj->_txLock.lock();
                obj->_txQueue.push(obj->_txPacket);
                obj->_txLock.unlock();
            }
        }

        public:

        //each thread will be given the rx queue and the tx queue. Once started they will take packets from the rxQueue (once aviable)
        //process them, then put the return packet into the txQueue
        PacketProcesser(std::queue<scope_link::NapiPacket*>& txQueue, std::queue<scope_link::NapiPacket*>& rxQueue, std::shared_mutex& txLock, std::shared_mutex& rxLock) : 
            _txQueue(txQueue),
            _rxQueue(rxQueue),
            _txLock(txLock),
            _rxLock(rxLock)
        {
        }

        void start() {
            //stop the current worker if it is already running
            if(_worker.joinable()) {
                run = false;
                _worker.join();
            }

            run = true;
            _worker = std::thread(scope_link::PacketProcesser::job,this);
        }
        void stop() {
            run = false;
            if(_worker.joinable()) {
                _worker.join();
            }
        }

        ~PacketProcesser() {
            if(_worker.joinable())
                _worker.join();
        }
    };
}
  
#endif
