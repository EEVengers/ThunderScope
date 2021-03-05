
#ifndef BRIDGE_HPP
#define BRIDGE_HPP

#include <stdio.h>
#include <stdlib.h> 
#include <string.h> 
#include <cerrno>
#include <thread>
#include <queue>
#include <mutex>
#include <iostream>
//#include "../include/logger.hpp"

#ifdef WIN32 //for windows use named pipes
#include <windows.h> 
#include <tchar.h>
#include <strsafe.h>
#else //for unix systems use unix sockets
#include <sys/socket.h>
#include <netinet/in.h>
#include <sys/un.h> 
#endif

#define BRIDGE_BUFFER_SIZE 4096

// PACKET STRUCTURE
//   _______________________________________________________________________________________________________
//  |               |               |               |                                                       |
//  |    Command    |   PacketID    |   dataSize    |       Packet Data                                     |
//  |     16bits    |    16bits     |    16bits     |     However Many Bits as                              |
//  |     2Bytes    |    2Bytes     |    2Bytes     |     Defined by dataSize                               |
//  |               |               |               |                                                       |
//  |_______________|_______________|_______________|_______________________________________________________|
struct EVPacket {
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

inline void FreePacket(EVPacket* packet);

void PrintPacket(EVPacket* packet);


// Queues for Rx and Tx between C++ and Js
extern std::queue<EVPacket*> _gtxQueue;
extern std::queue<EVPacket*> _grxQueue;

// Mutexs for the queues
extern std::mutex _gtxLock;
extern std::mutex _grxLock;


class Bridge {
private:
    
    const char tx_connection_string[100] = {};
    const char rx_connection_string[100] = {};
    char tx_buff[BRIDGE_BUFFER_SIZE] = {};
    char rx_buff[BRIDGE_BUFFER_SIZE] = {};
#ifdef WIN32
    HANDLE tx_hPipe;
    HANDLE rx_hPipe;
    const char* base_path = "\\\\.\\pipe\\";
#else
    int tx_sock;
    int rx_sock;
    int client_tx_sock;
    int client_rx_sock;
    const char* base_path = "/tmp/";
#endif
    char txBuff[BRIDGE_BUFFER_SIZE], rxBuff[BRIDGE_BUFFER_SIZE];
    std::thread tx_worker;
    std::thread rx_worker;
    
    std::queue<EVPacket*>& _txQueue;
    std::queue<EVPacket*>& _rxQueue;
    std::mutex& _txLock;
    std::mutex& _rxLock;
    
    volatile bool rx_run;
    volatile bool tx_run;
    void TxJob();
    void RxJob();
    
public:
    
    Bridge(const char* pipeName,
           std::queue<EVPacket*>& txQueue,
           std::queue<EVPacket*>& rxQueue,
           std::mutex& txLock,
           std::mutex& rxLock);
    ~Bridge();
    
    int TxStart();
    int RxStart();
    int TxStop();
    int RxStop();
    
    int InitTxBridge();
    int InitRxBridge();
    
protected:
    
};


#endif
