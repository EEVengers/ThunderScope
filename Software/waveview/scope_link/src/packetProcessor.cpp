#include "NapiHook.hpp"
#include "EVTester.hpp"
#include "EVMath.hpp"
#include "processor.hpp"
#include "dataTransferHandler.hpp"
#include "string.h"
#include "logger.hpp"

#include "packetProcessor.hpp"

void PacketProcesser::job() {
    while(run) {
        // get a packet
        bool gotPacket = false;;
        while(!gotPacket && run) {
            _rxLock.lock();
            if(_rxQueue.empty()) {
                std::this_thread::sleep_for(std::chrono::milliseconds(1));
                _rxLock.unlock();
                std::this_thread::sleep_for(std::chrono::milliseconds(9));
            } else {
                _rxPacket = _rxQueue.front();
                _rxQueue.pop();
                gotPacket = true;
                _rxLock.unlock();
            }
        }

        // check that we got a packet, not that the thread was told to stop
        if(!run) {
            break;
        }

        // Debug Printout
        INFO << "Packet Recieved: PacketID: %X, Command: %d, dataSize: %d\n"
             << _rxPacket->packetID
             << _rxPacket->command
             << _rxPacket->dataSize;

        // create the txPacket
        _txPacket = (NapiPacket*)malloc(sizeof(NapiPacket));
        _txPacket->command = _rxPacket->command;
        _txPacket->packetID = _rxPacket->packetID;

        /*
         * Run the packet's request
         * The repsonsibility for each command that is called and excuted is to return the
         * packet data as a malloc'd pointer so that it can be sent to JS then freed
         *
         * Signature of runable commands should follow : 
         *      uint16_t FUNCTION(unsigned char* rxData, unsigned char** txData) :
         *      return: the size of txData
         *      rxData: the unsigned char that holds data sent by JS
         *      txData: a pointer to the data array that will be sent to JS (the called
         *              function must malloc the underlying data)
         */
        switch(static_cast<NapiCommands>(_rxPacket->command)) {
            case GetChannelData:
            {
                uint8_t* txData = (uint8_t*)malloc(sizeof(uint8_t) * 255);
                for(uint8_t i = 0; i <= 254; i++) {
                    if(i % 2 == 0) {
                        txData[i] = i / 2;
                    } else {
                        txData[i] = static_cast<uint8_t>((static_cast<uint32_t>(i) * 2) % 200);
                    }
                }
                _txPacket->data = txData;
                _txPacket->dataSize = static_cast<uint16_t>(255);

                // ***** IF YOU GET error C2360 ---> Put your code in brackets, for some reason
                // VC++ refuses to let you declare a variable in only 1 case unless its in a
                // different scope, hence the brackets   
            }
            break;
            case GetChannelMeasurements:
            break;
            case ConfigureScope:
            break;
            default:
                ERROR << "Unknown Command: " << _rxPacket->command; 
            break;
        }
        // put the txPacket into the queue
        _txLock.lock();
        _txQueue.push(_txPacket);
        _txLock.unlock();
    }
}

void PacketProcesser::start() {
    // stop the current worker if it is already running
    if(_worker.joinable()) {
        run = false;
        _worker.join();
    }

    run = true;
    _worker = std::thread(&PacketProcesser::job, this);
}

void PacketProcesser::stop() {
    run = false;
    if(_worker.joinable()) {
        _worker.join();
    }
}

PacketProcesser::PacketProcesser(std::queue<NapiPacket*>& txQueue,
                                 std::queue<NapiPacket*>& rxQueue,
                                 std::mutex& txLock,
                                 std::mutex& rxLock) : 
    _txQueue(txQueue),
    _rxQueue(rxQueue),
    _txLock(txLock),
    _rxLock(rxLock)
{
    run = false;
}

PacketProcesser::~PacketProcesser() {
    if(_worker.joinable())
        _worker.join();
}
