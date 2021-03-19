#ifndef postProcessor_hpp
#define postProcessor_hpp

#include <boost/lockfree/queue.hpp>
#include <atomic>
#include <thread>
#include <assert.h>

#include "common.hpp"

class postProcessor
{
public:
    /* functions */
    postProcessor(boost::lockfree::queue<int8_t*, boost::lockfree::fixed_sized<false>> *inputQ,
                  boost::lockfree::queue<EVPacket*, boost::lockfree::fixed_sized<false>> *outputQ);
    ~postProcessor(void);

    void postProcessorStop();
    void postProcessorStart();
    void postProcessorPause();
    void postProcessorUnpause();

    void setCh (int8_t newCh);

    void setMathCh_1(int8_t newCh);
    void setMathCh_2(int8_t newCh);
    void setMathSign(bool sign);

    /* variables */

private:
    /* functions */
    void updateWindowSize(int32_t newWinSize, int32_t newPerSize);
    void coreLoop();

    /* variables */
    boost::lockfree::queue<int8_t*, boost::lockfree::fixed_sized<false>> *inputQueue;
    boost::lockfree::queue<EVPacket*, boost::lockfree::fixed_sized<false>> *outputQueue;

    std::thread postProcessorThread;

    std::atomic<bool> stopTransfer;
    std::atomic<bool> pauseTransfer;

    int8_t numCh = 1;
    int8_t mathCh_1 = -1;
    int8_t mathCh_2 = -1;
    // true = addition, false = subtraction
    bool mathSign = true;
    bool doMath = false;
};

#endif
