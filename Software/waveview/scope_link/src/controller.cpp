#include "controller.hpp"
#include "logger.hpp"

controller::controller()
{
    stopController.store(false);

    // create new thread
    controllerThread = std::thread(&controller::controllerLoop, this);

    bridgeThread = new Bridge("testPipe",_gtxQueue,_grxQueue, &controllerQueue_rx);
    bridgeThread->TxStart();
    bridgeThread->RxStart();

    INFO << "Controller Created";
}

controller::~controller()
{
    stopController.store(true);
    controllerThread.join();

    INFO << "Controller Destroyed";
}

void controller::controllerLoop()
{
    EVPacket* currentPacket;
    while (stopController.load() == false) {
//        INFO << "Controller Alive";
        while (stopController.load() == false &&
               controllerQueue_rx.pop(currentPacket)) {
            INFO << "Controller processing a packet";
        }

        std::this_thread::sleep_for(std::chrono::milliseconds(100));
    }
}
