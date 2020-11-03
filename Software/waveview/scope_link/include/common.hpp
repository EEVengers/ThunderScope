#ifndef common_hpp
#define common_hpp

#include <boost/pool/pool_alloc.hpp>
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

#define BUFFER_SIZE BUFFER_8K

// Window size in buffers
#define DEFAULT_WINDOW 1

extern uint32_t windowSize;

struct buffer
{
    int8_t data[BUFFER_SIZE];
};

extern boost::pool_allocator<buffer,
    boost::default_user_allocator_new_delete,
    boost::details::pool::default_mutex,
    64, 0> bufferAllocator;

extern boost::pool_allocator<int8_t,
    boost::default_user_allocator_new_delete,
    boost::details::pool::default_mutex,
    DEFAULT_WINDOW * BUFFER_SIZE, 0> windowAllocator;


uint32_t writeToCsv (char* filename, int8_t *data, uint32_t dataLength);
#endif
