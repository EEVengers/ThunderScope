#include "trigger.hpp"

Trigger::Trigger(boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *inputQ,
                 boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *outputQ,
                 int8_t level)
{
    if (inputQ == NULL) {
        ERROR << "trigger inputQ is null";
    } else {
        inputQueue = inputQ;
    }

    if (outputQ == NULL) {
        ERROR << "trigger outputQ is null";
    } else {
        outputQueue = outputQ;
    }

    triggerLevel = level;
    clearCount();

    stopTrigger.store(false); 
    pauseTrigger.store(true); 
    triggerMet.store(false);

    // start thread paused
    pauseTrigger.store(true);
    stopTrigger.store(false);

    // create new thread
    triggerThread = std::thread(&Trigger::coreLoop, this);

    INFO << "Created Trigger Thread";
}

Trigger::~Trigger(void)
{
    DEBUG << "Trigger Destructor Called";

    // Stop the transer and join thread
    stopTrigger.store(true);
    pauseTrigger.store(true);
    triggerThread.join();

    DEBUG << "Destroyed Trigger Thread";
}

#ifdef DBG
uint32_t temp = 0;
#endif

void Trigger::checkTriggerFalling(buffer* currentBuffer)
{
    DEBUG << "Checking a Trigger with #ch: " << (int)numCh << " triggering on ch: " << (int)triggerCh;
    // Compute the trigger
    for (int i = 0; i < (BUFFER_SIZE/64)/numCh; i++) {
        currentBuffer->trigger[i] = 
                     ((uint64_t)((currentBuffer->data[(i * 64 +  0) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 +  0 + 1) * numCh + triggerCh] <= triggerLevel)) << 63) |
                     ((uint64_t)((currentBuffer->data[(i * 64 +  1) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 +  1 + 1) * numCh + triggerCh] <= triggerLevel)) << 62) |
                     ((uint64_t)((currentBuffer->data[(i * 64 +  2) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 +  2 + 1) * numCh + triggerCh] <= triggerLevel)) << 61) |
                     ((uint64_t)((currentBuffer->data[(i * 64 +  3) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 +  3 + 1) * numCh + triggerCh] <= triggerLevel)) << 60) |
                     ((uint64_t)((currentBuffer->data[(i * 64 +  4) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 +  4 + 1) * numCh + triggerCh] <= triggerLevel)) << 59) |
                     ((uint64_t)((currentBuffer->data[(i * 64 +  5) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 +  5 + 1) * numCh + triggerCh] <= triggerLevel)) << 58) |
                     ((uint64_t)((currentBuffer->data[(i * 64 +  6) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 +  6 + 1) * numCh + triggerCh] <= triggerLevel)) << 57) |
                     ((uint64_t)((currentBuffer->data[(i * 64 +  7) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 +  7 + 1) * numCh + triggerCh] <= triggerLevel)) << 56) |
                     ((uint64_t)((currentBuffer->data[(i * 64 +  8) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 +  8 + 1) * numCh + triggerCh] <= triggerLevel)) << 55) |
                     ((uint64_t)((currentBuffer->data[(i * 64 +  9) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 +  9 + 1) * numCh + triggerCh] <= triggerLevel)) << 54) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 10) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 10 + 1) * numCh + triggerCh] <= triggerLevel)) << 53) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 11) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 11 + 1) * numCh + triggerCh] <= triggerLevel)) << 52) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 12) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 12 + 1) * numCh + triggerCh] <= triggerLevel)) << 51) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 13) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 13 + 1) * numCh + triggerCh] <= triggerLevel)) << 50) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 14) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 14 + 1) * numCh + triggerCh] <= triggerLevel)) << 49) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 15) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 15 + 1) * numCh + triggerCh] <= triggerLevel)) << 48) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 16) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 16 + 1) * numCh + triggerCh] <= triggerLevel)) << 47) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 17) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 17 + 1) * numCh + triggerCh] <= triggerLevel)) << 46) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 18) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 18 + 1) * numCh + triggerCh] <= triggerLevel)) << 45) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 19) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 19 + 1) * numCh + triggerCh] <= triggerLevel)) << 44) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 20) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 20 + 1) * numCh + triggerCh] <= triggerLevel)) << 43) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 21) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 21 + 1) * numCh + triggerCh] <= triggerLevel)) << 42) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 22) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 22 + 1) * numCh + triggerCh] <= triggerLevel)) << 41) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 23) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 23 + 1) * numCh + triggerCh] <= triggerLevel)) << 40) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 24) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 24 + 1) * numCh + triggerCh] <= triggerLevel)) << 39) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 25) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 25 + 1) * numCh + triggerCh] <= triggerLevel)) << 38) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 26) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 26 + 1) * numCh + triggerCh] <= triggerLevel)) << 37) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 27) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 27 + 1) * numCh + triggerCh] <= triggerLevel)) << 36) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 28) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 28 + 1) * numCh + triggerCh] <= triggerLevel)) << 35) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 29) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 29 + 1) * numCh + triggerCh] <= triggerLevel)) << 34) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 30) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 30 + 1) * numCh + triggerCh] <= triggerLevel)) << 33) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 31) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 31 + 1) * numCh + triggerCh] <= triggerLevel)) << 32) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 32) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 32 + 1) * numCh + triggerCh] <= triggerLevel)) << 31) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 33) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 33 + 1) * numCh + triggerCh] <= triggerLevel)) << 30) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 34) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 34 + 1) * numCh + triggerCh] <= triggerLevel)) << 29) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 35) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 35 + 1) * numCh + triggerCh] <= triggerLevel)) << 28) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 36) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 36 + 1) * numCh + triggerCh] <= triggerLevel)) << 27) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 37) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 37 + 1) * numCh + triggerCh] <= triggerLevel)) << 26) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 38) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 38 + 1) * numCh + triggerCh] <= triggerLevel)) << 25) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 39) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 39 + 1) * numCh + triggerCh] <= triggerLevel)) << 24) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 40) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 40 + 1) * numCh + triggerCh] <= triggerLevel)) << 23) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 41) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 41 + 1) * numCh + triggerCh] <= triggerLevel)) << 22) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 42) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 42 + 1) * numCh + triggerCh] <= triggerLevel)) << 21) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 43) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 43 + 1) * numCh + triggerCh] <= triggerLevel)) << 20) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 44) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 44 + 1) * numCh + triggerCh] <= triggerLevel)) << 19) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 45) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 45 + 1) * numCh + triggerCh] <= triggerLevel)) << 18) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 46) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 46 + 1) * numCh + triggerCh] <= triggerLevel)) << 17) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 47) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 47 + 1) * numCh + triggerCh] <= triggerLevel)) << 16) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 48) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 48 + 1) * numCh + triggerCh] <= triggerLevel)) << 15) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 49) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 49 + 1) * numCh + triggerCh] <= triggerLevel)) << 14) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 50) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 50 + 1) * numCh + triggerCh] <= triggerLevel)) << 13) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 51) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 51 + 1) * numCh + triggerCh] <= triggerLevel)) << 12) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 52) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 52 + 1) * numCh + triggerCh] <= triggerLevel)) << 11) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 53) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 53 + 1) * numCh + triggerCh] <= triggerLevel)) << 10) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 54) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 54 + 1) * numCh + triggerCh] <= triggerLevel)) << 9) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 55) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 55 + 1) * numCh + triggerCh] <= triggerLevel)) << 8) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 56) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 56 + 1) * numCh + triggerCh] <= triggerLevel)) << 7) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 57) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 57 + 1) * numCh + triggerCh] <= triggerLevel)) << 6) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 58) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 58 + 1) * numCh + triggerCh] <= triggerLevel)) << 5) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 59) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 59 + 1) * numCh + triggerCh] <= triggerLevel)) << 4) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 60) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 60 + 1) * numCh + triggerCh] <= triggerLevel)) << 3) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 61) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 61 + 1) * numCh + triggerCh] <= triggerLevel)) << 2) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 62) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 62 + 1) * numCh + triggerCh] <= triggerLevel)) << 1) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 63) * numCh + triggerCh] > triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 63 + 1) * numCh + triggerCh] <= triggerLevel)) << 0);

#ifdef DBG
        if (temp < 32) {
            DEBUG << "Trigger index: " << i << " value: " << std::hex << currentBuffer->trigger[i];
            temp++;
        }
#endif
    }
}

void Trigger::checkTriggerRising(buffer* currentBuffer)
{
    DEBUG << "Checking a Trigger with #ch: " << (int)numCh << " triggering on ch: " << (int)triggerCh;
    // Compute the trigger
    for (int i = 0; i < (BUFFER_SIZE/64)/numCh; i++) {
        currentBuffer->trigger[i] = 
                     ((uint64_t)((currentBuffer->data[(i * 64 + 0) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 +  0 + 1) * numCh + triggerCh] >= triggerLevel)) << 63) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 1) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 +  1 + 1) * numCh + triggerCh] >= triggerLevel)) << 62) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 2) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 +  2 + 1) * numCh + triggerCh] >= triggerLevel)) << 61) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 3) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 +  3 + 1) * numCh + triggerCh] >= triggerLevel)) << 60) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 4) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 +  4 + 1) * numCh + triggerCh] >= triggerLevel)) << 59) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 5) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 +  5 + 1) * numCh + triggerCh] >= triggerLevel)) << 58) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 6) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 +  6 + 1) * numCh + triggerCh] >= triggerLevel)) << 57) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 7) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 +  7 + 1) * numCh + triggerCh] >= triggerLevel)) << 56) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 8) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 +  8 + 1) * numCh + triggerCh] >= triggerLevel)) << 55) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 9) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 +  9 + 1) * numCh + triggerCh] >= triggerLevel)) << 54) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 10) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 10 + 1) * numCh + triggerCh] >= triggerLevel)) << 53) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 11) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 11 + 1) * numCh + triggerCh] >= triggerLevel)) << 52) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 12) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 12 + 1) * numCh + triggerCh] >= triggerLevel)) << 51) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 13) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 13 + 1) * numCh + triggerCh] >= triggerLevel)) << 50) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 14) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 14 + 1) * numCh + triggerCh] >= triggerLevel)) << 49) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 15) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 15 + 1) * numCh + triggerCh] >= triggerLevel)) << 48) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 16) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 16 + 1) * numCh + triggerCh] >= triggerLevel)) << 47) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 17) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 17 + 1) * numCh + triggerCh] >= triggerLevel)) << 46) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 18) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 18 + 1) * numCh + triggerCh] >= triggerLevel)) << 45) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 19) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 19 + 1) * numCh + triggerCh] >= triggerLevel)) << 44) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 20) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 20 + 1) * numCh + triggerCh] >= triggerLevel)) << 43) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 21) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 21 + 1) * numCh + triggerCh] >= triggerLevel)) << 42) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 22) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 22 + 1) * numCh + triggerCh] >= triggerLevel)) << 41) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 23) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 23 + 1) * numCh + triggerCh] >= triggerLevel)) << 40) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 24) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 24 + 1) * numCh + triggerCh] >= triggerLevel)) << 39) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 25) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 25 + 1) * numCh + triggerCh] >= triggerLevel)) << 38) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 26) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 26 + 1) * numCh + triggerCh] >= triggerLevel)) << 37) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 27) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 27 + 1) * numCh + triggerCh] >= triggerLevel)) << 36) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 28) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 28 + 1) * numCh + triggerCh] >= triggerLevel)) << 35) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 29) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 29 + 1) * numCh + triggerCh] >= triggerLevel)) << 34) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 30) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 30 + 1) * numCh + triggerCh] >= triggerLevel)) << 33) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 31) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 31 + 1) * numCh + triggerCh] >= triggerLevel)) << 32) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 32) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 32 + 1) * numCh + triggerCh] >= triggerLevel)) << 31) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 33) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 33 + 1) * numCh + triggerCh] >= triggerLevel)) << 30) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 34) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 34 + 1) * numCh + triggerCh] >= triggerLevel)) << 29) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 35) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 35 + 1) * numCh + triggerCh] >= triggerLevel)) << 28) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 36) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 36 + 1) * numCh + triggerCh] >= triggerLevel)) << 27) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 37) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 37 + 1) * numCh + triggerCh] >= triggerLevel)) << 26) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 38) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 38 + 1) * numCh + triggerCh] >= triggerLevel)) << 25) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 39) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 39 + 1) * numCh + triggerCh] >= triggerLevel)) << 24) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 40) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 40 + 1) * numCh + triggerCh] >= triggerLevel)) << 23) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 41) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 41 + 1) * numCh + triggerCh] >= triggerLevel)) << 22) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 42) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 42 + 1) * numCh + triggerCh] >= triggerLevel)) << 21) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 43) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 43 + 1) * numCh + triggerCh] >= triggerLevel)) << 20) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 44) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 44 + 1) * numCh + triggerCh] >= triggerLevel)) << 19) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 45) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 45 + 1) * numCh + triggerCh] >= triggerLevel)) << 18) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 46) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 46 + 1) * numCh + triggerCh] >= triggerLevel)) << 17) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 47) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 47 + 1) * numCh + triggerCh] >= triggerLevel)) << 16) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 48) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 48 + 1) * numCh + triggerCh] >= triggerLevel)) << 15) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 49) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 49 + 1) * numCh + triggerCh] >= triggerLevel)) << 14) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 50) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 50 + 1) * numCh + triggerCh] >= triggerLevel)) << 13) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 51) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 51 + 1) * numCh + triggerCh] >= triggerLevel)) << 12) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 52) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 52 + 1) * numCh + triggerCh] >= triggerLevel)) << 11) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 53) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 53 + 1) * numCh + triggerCh] >= triggerLevel)) << 10) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 54) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 54 + 1) * numCh + triggerCh] >= triggerLevel)) << 9) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 55) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 55 + 1) * numCh + triggerCh] >= triggerLevel)) << 8) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 56) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 56 + 1) * numCh + triggerCh] >= triggerLevel)) << 7) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 57) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 57 + 1) * numCh + triggerCh] >= triggerLevel)) << 6) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 58) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 58 + 1) * numCh + triggerCh] >= triggerLevel)) << 5) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 59) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 59 + 1) * numCh + triggerCh] >= triggerLevel)) << 4) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 60) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 60 + 1) * numCh + triggerCh] >= triggerLevel)) << 3) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 61) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 61 + 1) * numCh + triggerCh] >= triggerLevel)) << 2) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 62) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 62 + 1) * numCh + triggerCh] >= triggerLevel)) << 1) |
                     ((uint64_t)((currentBuffer->data[(i * 64 + 63) * numCh + triggerCh] < triggerLevel) &&
                       (currentBuffer->data[(i * 64 + 63 + 1) * numCh + triggerCh] >= triggerLevel)) << 0);

#ifdef DBG
        if (temp < 32) {
            DEBUG << "Trigger index: " << i << " value: " << std::hex << currentBuffer->trigger[i];
            temp++;
        }
#endif
    }
}

void Trigger::coreLoop()
{
    buffer *currentBuffer = NULL;
    buffer *nextBuffer = NULL;

    // Get the first buffer into currentBuffer
    if (inputQueue == NULL) {
        ERROR << "Input Queue null in trigger core loop";
    } else {
        while (inputQueue->pop(currentBuffer) == false && stopTrigger.load() == false) {
//            DEBUG << "Waiting for first data element";
            std::this_thread::sleep_for(std::chrono::microseconds(100));
        };
        DEBUG << "Core Loop Entered";

        // Outer loop
        while (stopTrigger.load() == false) {

            // Inner Loop
            while (pauseTrigger.load() == false) {
                // Attempt to pop from the pueue

                if (inputQueue->pop(nextBuffer)) {
                    count++;

                    DEBUG << "trigger next buffer";

                    // copy first value from next buffer to current buffer
                    currentBuffer->data[BUFFER_SIZE] = nextBuffer->data[0];
                    currentBuffer->data[BUFFER_SIZE + 1] = nextBuffer->data[1];
                    currentBuffer->data[BUFFER_SIZE + 2] = nextBuffer->data[2];
                    currentBuffer->data[BUFFER_SIZE + 3] = nextBuffer->data[3];

                    // generate triggers on new data
                    if (risingEdge == true) {
                        checkTriggerRising(currentBuffer);
                    } else {
                        checkTriggerFalling(currentBuffer);
                    }

                    // push triggers and buffer onto post processor thread
                    outputQueue->push(currentBuffer);

                    // swap next to current
                    currentBuffer = nextBuffer;

                } else {

                    // TODO: clean this up for when not running tests
                    triggerMet.store(true);
                    // Queue empty, Sleep for a bit
                    std::this_thread::sleep_for(std::chrono::microseconds(100));
                }
            }
        }
    }
}

// Returns the number of active channels
int8_t Trigger::getCh (void)
{
    return numCh;
}

// Sets the number of active channels
void Trigger::setCh (int8_t newCh)
{
    if (newCh == 1 || newCh == 2 || newCh == 4) {
        numCh = newCh;
    } else {
        ERROR << "not a valid number of channels: " << newCh;
    }
}

// Sets the channel to trigger off of
int8_t Trigger::getTriggerCh ()
{
    return triggerCh;
}

// Sets the channel to trigger off of
void Trigger::setTriggerCh (int8_t newTriggerCh)
{
    if (newTriggerCh == 1 || newTriggerCh == 2 || newTriggerCh == 4) {
        triggerCh = newTriggerCh - 1;
    } else {
        ERROR << "Invalid trigger channel: " << newTriggerCh;
    }
}

// Sets to trigger off of rising edges
bool Trigger::getEdgeType()
{
    return risingEdge;
}

// Sets to trigger off of rising edges
void Trigger::setRising()
{
    triggerPause();
    risingEdge = true;
    DEBUG << "Triggering on rising edge";
}

// Sets to trigger off of falling edges
void Trigger::setFalling()
{
    triggerPause();
    risingEdge = false;
    DEBUG << "Triggering on falling edge";
}

bool Trigger::getTriggerStatus()
{
    return triggerMet.load();
}

void Trigger::triggerStop()
{
    stopTrigger.store(true);
    DEBUG << "Stopping Trigger";
}

void Trigger::triggerStart()
{
    stopTrigger.store(false);
    DEBUG << "Starting Trigger";
}

void Trigger::triggerPause()
{
    pauseTrigger.store(true);
    DEBUG << "Pausing Trigger";
}

void Trigger::triggerUnpause()
{
    pauseTrigger.store(false);
    DEBUG << "Unpausing Trigger";
}

uint32_t Trigger::getCount()
{
    return count;
}

uint32_t Trigger::getCountBytes()
{
    return getCount() * BUFFER_SIZE;
}

void Trigger::setCount(uint32_t newCount)
{
    count = newCount;
}

void Trigger::clearCount()
{
    setCount(0);
}

void Trigger::setTriggerLevel(int8_t newLevel )
{
    triggerPause();
    triggerLevel = newLevel;
}

int8_t Trigger::getTriggerLevel()
{
    return triggerLevel;
}
