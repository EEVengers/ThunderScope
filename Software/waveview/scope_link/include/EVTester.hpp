#ifndef EVTester_hpp
#define EVTester_hpp

#include "common.hpp"

#define TEST_RUN_TIME 20

void TestSincInterpolation();

void TestDataThroughput();

void testTriggerThroughput();

void testCsv(char * filename);

bool loadFromFile ( char* filename, boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *outputQ);

void runSocketTest();

#endif /* EVTester_hpp */
