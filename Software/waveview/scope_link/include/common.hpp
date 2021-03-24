#ifndef common_hpp
#define common_hpp

#include <boost/pool/pool_alloc.hpp>
#include <boost/lockfree/queue.hpp>
#include <iostream>
#include <fstream>

#define S_TO_NS 1000000000
#define GIB_TO_GB 1073741824

// Buffer size in bytes
#define BUFFER_1K    1024
#define BUFFER_2K    2048
#define BUFFER_4K    4096
#define BUFFER_8K    8192
#define BUFFER_16K   16384
#define BUFFER_32K   32768
#define BUFFER_64K   65536
#define BUFFER_128K  131072
#define BUFFER_256K  262144
#define BUFFER_512K  524288
#define BUFFER_1024K 1048576
#define BUFFER_8M    (1 << 23)

#ifdef NOHARDWARE
#define BUFFER_SIZE BUFFER_8K
#else
#define BUFFER_SIZE BUFFER_8M
#endif

// Window size in buffers
#define DEFAULT_WINDOW 10

/* Structures */
struct buffer
{
    int8_t data[BUFFER_SIZE + 4];
    uint64_t trigger[BUFFER_SIZE/64];
};

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
    int8_t* data;
};


/* Variables */
extern uint32_t windowSize;
extern uint32_t persistanceSize;

extern char* inputFile;
extern char* outputFile;

extern boost::pool_allocator<buffer,
    boost::default_user_allocator_new_delete,
    boost::details::pool::default_mutex,
    64, 0> bufferAllocator;

extern boost::pool_allocator<int8_t,
    boost::default_user_allocator_new_delete,
    boost::details::pool::default_mutex,
    DEFAULT_WINDOW * BUFFER_SIZE, 0> windowAllocator;

/* Functions */
uint32_t writeToCsv (char* filename, int8_t* data, uint32_t row, uint32_t col, int8_t numCh);

// buffor functor to deallocate all items in a queue
void bufferFunctor(buffer* a);

bool loadFromFile ( char* filename, boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *outputQ);


#endif
