#ifndef processor_hpp
#define processor_hpp

#include <boost/lockfree/queue.hpp>
#include <atomic>
#include <thread>
#include <assert.h>

#include "common.hpp"
#include "exception.hpp"

class Processor
{
public:
    /* functions */
    Processor(boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *inputQ,
              boost::lockfree::queue<int8_t*, boost::lockfree::fixed_sized<false>> *outputQ);
    ~Processor(void);

    void coreLoop();

    uint32_t getCount();
    uint32_t getCountBytes();
    void setCount(uint32_t);
    void clearCount();

    bool getWindowStatus();

    void flushPersistence();

    void processorStop();
    void processorStart();
    void processorPause();
    void processorUnpause();

    std::chrono::high_resolution_clock::time_point getTimeFilled();
    std::chrono::high_resolution_clock::time_point getTimeWritten();

    void setCh(int8_t newCh);

    void getMax(int8_t chNum, int8_t* value, uint64_t* pos);
    void getMin(int8_t chNum, int8_t* value, uint64_t* pos);

    void reProcess();

    /* variables */
    uint32_t windowCol;
    uint32_t windowRow;
    uint32_t bufferCol;

private:
    /* functions */
    void copyProcess(int8_t * src, int8_t * dst, uint32_t count);

    void updateWinSize(uint32_t newWinSize);
    void updatePerSize(uint32_t newPerSize);
    void updateWinPerSize(uint32_t newWinSize, uint32_t newPerSize);

    bool findNextTrigger(buffer *currentBuffer, uint32_t* p_column);

    /* variables */
    boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *inputQueue;
    boost::lockfree::queue<int8_t*, boost::lockfree::fixed_sized<false>> *outputQueue;

    std::thread processorThread;

    std::chrono::high_resolution_clock::time_point windowFilled;
    std::chrono::high_resolution_clock::time_point windowWritten;

    uint32_t count;
    uint32_t countProcessed;

    int8_t* windowProcessed;

    std::mutex lockThread;

    std::atomic<bool> stopTransfer;
    std::atomic<bool> pauseTransfer;
    std::atomic<bool> windowStored;

    int8_t numCh = 1;
};

#endif
