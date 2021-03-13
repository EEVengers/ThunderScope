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
        while (stopController.load() == false &&
               controllerQueue_rx.pop(currentPacket)) {
            INFO << "Controller processing a packet";

            // execute the packet command
            switch (currentPacket->command) {
                case 1:
                    INFO << "Packet command 1";
                    break;
                case 2:
                    INFO << "Packet command 2";
                    break;
                default:
                    ERROR << "Unknown packet command";
                    break;
            }

        }

        std::this_thread::sleep_for(std::chrono::milliseconds(100));
    }
}
