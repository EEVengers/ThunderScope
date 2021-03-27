#ifndef EVTester_hpp
#define EVTester_hpp

#include "common.hpp"

#define TEST_RUN_TIME 20

void TestSincInterpolation();

void TestDataThroughput();

void testTriggerThroughput();

void testCsv(char * filename);

void runSocketTest();

void runPCIeTest();

#endif /* EVTester_hpp */
