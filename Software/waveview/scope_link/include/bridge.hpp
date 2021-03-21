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
#include <atomic>
#include "common.hpp"

#ifdef WIN32 //for windows use named pipes
#include <windows.h>
#include <tchar.h>
#include <strsafe.h>
#else //for unix systems use unix sockets
#include <sys/socket.h>
#include <netinet/in.h>
#include <sys/un.h>
#include <unistd.h>
#endif

#define BRIDGE_BUFFER_SIZE 4096
#define END_PACKET_COMMAND 0xEF
#define END_PACKET_PACKETID 0xAB
#define END_PACKET_DATA_SIZE 0x00

inline void FreePacket(EVPacket* packet);

void PrintPacket(EVPacket* packet);

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

    // Queue to JS
    boost::lockfree::queue<EVPacket*, boost::lockfree::fixed_sized<false>> *txQueue;

    // Queue from JS
    boost::lockfree::queue<EVPacket*, boost::lockfree::fixed_sized<false>> *rxOutputQueue;

    std::atomic<bool> rx_run;
    std::atomic<bool> tx_run;
    void TxJob();
    void RxJob();

    int makeConnection( int targetSocket );

public:

    Bridge(const char* pipeName,
           boost::lockfree::queue<EVPacket*, boost::lockfree::fixed_sized<false>> *txQueue,
           boost::lockfree::queue<EVPacket*, boost::lockfree::fixed_sized<false>> *outputQ
           );
    ~Bridge();

    int TxStart();
    int RxStart();
    int TxStop();
    int RxStop();

    int InitTxBridge();
    int InitRxBridge();

    void push(EVPacket* newPacket);

protected:

};

#endif
