#ifndef no_napi

#ifndef packetProcessor_hpp
#define packetProcessor_hpp
 
#include "napi.h"
#include <iostream>
#include <queue>
#include <mutex>
#include <thread>

#include "NapiHook.hpp"

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
#endif
