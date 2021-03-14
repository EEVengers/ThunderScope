#include "bridge.hpp"
#include "logger.hpp"
#include <fcntl.h>
#include <cerrno>

// Queues for Rx and Tx between C++ and Js
std::queue<EVPacket*> _gtxQueue;
std::queue<EVPacket*> _grxQueue;

/*******************************************************************************
 * FreePacket()
 *
 * Frees the packet and all data it points to.
 *
 * Arguments:
 *   EVPacket* packet - pointer to the packet.
 * Return:
 *   None
 ******************************************************************************/
inline void FreePacket(EVPacket* packet) {
    free(packet->data);
    free(packet);
}

/*******************************************************************************
 * PrintPacket()
 *
 * Prints the contents of a packet.
 *
 * Arguments:
 *   EVPacket* packet - pointer to the packet.
 * Return:
 *   None
 ******************************************************************************/
void PrintPacket(EVPacket* packet) {
    printf("PacketID_HEX: %X, Command: %d, DataSize: %d, Data: ",
           packet->packetID, packet->command,packet->dataSize);
    for(unsigned i = 0; i < packet->dataSize; i++) {
        printf("%X ",packet->data[i]);
    }
    printf("\n");
}

/*******************************************************************************
 * Bridge()
 *
 * Constructor for the bridge.
 *
 * Arguments:
 *   const char* pipeName
 *   std::queue<EVPacket*>& txQueue
 *   std::queue<EVPacket*>& rxQueue
 * Return:
 *   None
 ******************************************************************************/
Bridge::Bridge(const char* pipeName, 
               std::queue<EVPacket*>& txQueue,
               std::queue<EVPacket*>& rxQueue,
               boost::lockfree::queue<EVPacket*, boost::lockfree::fixed_sized<false>> *outputQ
               ) :
_txQueue(txQueue),
_rxQueue(rxQueue)
{
    // command packets from js
    rxOutputQueue = outputQ;

    tx_run.store(false);
    rx_run.store(false);
#ifdef WIN32
    tx_hPipe = INVALID_HANDLE_VALUE;
    rx_hPipe = INVALID_HANDLE_VALUE;
#else
    tx_sock = -1;
    rx_sock = -1;
    client_tx_sock = -1;
#endif

    // TODO: If sprintf is available on windows, it would be nice to get rid
    // of the extra code
#ifdef WIN32 //It seems that strcat_s is a windows thing. huh
    //set up TX Pipe/socket path
    strcat_s((char*)tx_connection_string,100,base_path);
    strcat_s((char*)tx_connection_string,100,pipeName);
    strcat_s((char*)tx_connection_string,100,"TX");
    //set up RX Pipe/socket path
    strcat_s((char*)rx_connection_string,100,base_path);
    strcat_s((char*)rx_connection_string,100,pipeName);
    strcat_s((char*)rx_connection_string,100,"RX");
#else
    //set up TX Pipe/socket path
    sprintf((char*)tx_connection_string,"%s%sTX",base_path,pipeName);
    //set up RX Pipe/socket path
    sprintf((char*)rx_connection_string,"%s%sRX",base_path,pipeName);
#endif
}

/*******************************************************************************
 * ~Bridge()
 *
 * Destructor for the bridge class.
 *
 * Arguments:
 *   None
 * Return:
 *   None
 ******************************************************************************/
Bridge::~Bridge() {
    INFO << "Destroying bridge";
    if (rx_run.load() == true) {
        RxStop();
    }
    if (tx_run.load() == true) {
        TxStop();
    }
    INFO << "Bridge destroyed";
}

/*******************************************************************************
 * makeConnection()
 *
 * Establish a connection with the front end
 * Only for POSIX sockets
 *
 * Arguments:
 *   int targetFD - file descriptor of the socket
 *   int targetSocket - socket
 * Return:
 *   None
 ******************************************************************************/
#ifndef WIN32
int Bridge::makeConnection(int targetSocket ) {
    int targetFD = 0;

    if(targetSocket == -1) {
        ERROR << "Socket already initialized";
        return -1;
    }

    //listen and accept a client (the electron app)
    int rc = listen(targetSocket, 10);
    if (rc != 0) {
        perror("socket listen(): ");
        return -1;
    }

    INFO << "targetSocket: listening for clients, waiting to aceept....";
    // accept the first client to connect
    // No need to save it's fd since we will never write to it
    struct sockaddr_un address;
    socklen_t addresslen = sizeof(sockaddr_un);

    // TODO: accept is a blocking call. can't exit thread if stuck here
    targetFD = accept(targetSocket, (struct sockaddr*)&address, &addresslen);
    if (targetFD >= 0) {
        // Make socket non-blocking
        int flags = fcntl(targetFD ,F_GETFL,0);
        assert(flags != -1);
        fcntl(targetFD, F_SETFL, flags | O_NONBLOCK);

        INFO << "targetSocket: client connected";
    } else {
        // Failed to accept socket
        perror("socket accept(): ");
    }
    return targetFD;
}
#endif

/*******************************************************************************
 * TxJob()
 *
 * Waits for the client to connect and transmits packets in the tx queue.
 *
 * Arguments:
 *   None
 * Return:
 *   None
 ******************************************************************************/
void Bridge::TxJob() {
#ifdef WIN32
    if(tx_hPipe == INVALID_HANDLE_VALUE) {
        return;
    }
    ConnectNamedPipe(tx_hPipe, NULL);
    INFO << "tx_pipe: client connected";
#else
    client_tx_sock = makeConnection(tx_sock);
    if (client_tx_sock < 0) {
        ERROR << "rx job failed to make connection";
        return;
    }
#endif

    while(tx_run.load() == true) {
        //look into queue if there is anything to send
        txLock.lock();

        if(_txQueue.empty()) {
            txLock.unlock();
            //if nothing sleep for 500us
            std::this_thread::sleep_for(std::chrono::microseconds(500));

        } else {
            // send the packet

            // get pointer to packet
            EVPacket* txPacket = _txQueue.front();
            _txQueue.pop();

            // unlock the queue
            txLock.unlock();

            // Copy packet into tx_buff
            uint16_t* txBuffCast = (uint16_t*)tx_buff;
            int packet_size = 6 + txPacket->dataSize;
            txBuffCast[0] = txPacket->command;
            txBuffCast[1] = txPacket->packetID;
            txBuffCast[2] = txPacket->dataSize;
            memcpy(tx_buff+6,txPacket->data,txPacket->dataSize);

#ifdef WIN32
            // send the packet over a named pipe
            unsigned long bytes_written;
            WriteFile(tx_hPipe,tx_buff,packet_size,&bytes_written,NULL);
#else
            // send the packet over a socket
            PrintPacket(txPacket);
            send(client_tx_sock,tx_buff,packet_size,0);
#endif
            //free the packet
            free(txPacket);
        }
    }
}

/*******************************************************************************
 * RxJob()
 *
 * recieves packets and processes them.
 *
 * Arguments:
 *   None
 * Return:
 *   None
 ******************************************************************************/
void Bridge::RxJob() {
#ifdef WIN32
    if(rx_hPipe == INVALID_HANDLE_VALUE) {
        return;
    }
    ConnectNamedPipe(rx_hPipe, NULL);
    INFO << "rx_pipe: client connected";
#else
    client_rx_sock = makeConnection(rx_sock);
    if (client_rx_sock < 0) {
        ERROR << "rx job failed to make connection";
        return;
    }
#endif

    // Read from client
    while(rx_run.load() == true) {
        //reading block until something is sent
#ifdef WIN32
        DWORD packet_size;
        int val;
        unsigned long bytes_read;
        //get the header
        val = ReadFile(rx_hPipe, rxBuff, 6, &bytes_read, NULL);
        if(val == 0) {
            //error
            int err = GetLastError();
            if(err == 234) { //err 234 is there is more data, not an error
                //do nothing
            } else if(err == 109) { //err 109 there were not enough bytes in the pipline
                std::this_thread::sleep_for(std::chrono::microseconds(500));
                continue; //error packet move onto next one
            } else {
                ERROR << "rx_pipe header_read: Error: " << GetLastError();
                break;
            }
        }

        //check to see if the packet is the END_CONNECTION packet
        uint16_t* endPacketCheck = (uint16_t*)rxBuff;
        if (endPacketCheck[0] == END_PACKET_COMMAND
                && endPacketCheck[1] == END_PACKET_PACKETID
                && endPacketCheck[2] == END_PACKET_DATA_SIZE) {

            INFO << "END PACKET Recieved, Jumping Out Of RX Job";
            rx_run.store(false);
            continue;
        }

        //read the rest of the packet
        uint16_t dataSize = ((uint16_t*)(rxBuff))[2];
        if(dataSize < BRIDGE_BUFFER_SIZE - 6) {
            val = ReadFile(rx_hPipe, rxBuff + 6, dataSize, &bytes_read, NULL);
        } else {
            continue;
        }
        if(val == 0){
            //error
            int err = GetLastError();
            if (err == 234) {
                // more data exists. Wait for it
                std::this_thread::sleep_for(std::chrono::microseconds(500));
            } else if (err == 109) {
                // not enough bytes in pipeline
                // Skip error packet
                std::this_thread::sleep_for(std::chrono::microseconds(500));
                continue;
            } else {
                INFO << "rx_pipe data_read: Error: " << GetLastError();
                break;
            }
        }
        packet_size = 6 + dataSize;

#else
        ssize_t packet_size;
        packet_size = recv(client_rx_sock,rxBuff,BRIDGE_BUFFER_SIZE,0);
        if(packet_size > 0) {
            INFO << "rx_sock: Packet Size: " << (int)packet_size << " Message:" << rxBuff;
        } else if (packet_size == -1) {
            switch (errno) {
                case EWOULDBLOCK:
                    // No data on socket. sleep
                    std::this_thread::sleep_for(std::chrono::microseconds(500));
                    continue;
                default:
                    perror("recv returned error: ");
            }
            continue;
        } else {
            INFO << "No messages and peer disconnected";
            // TODO: Allow clients to connect and disconnect
            // Kill the server
            rx_run.store(false);
        }
#endif
        //process whatever is sent (for now just print it)
        
        // TODO: you can just cast it as the struct and access things that way
        uint16_t* rxBuff16 = (uint16_t*) rxBuff;
        uint8_t* rxBuffData = (uint8_t*) (rxBuff + 6);
        //reconstruct packet struct
        EVPacket* rxPacket = (EVPacket*)malloc(sizeof(EVPacket));
        //get the header
        rxPacket->command = rxBuff16[0];
        rxPacket->packetID = rxBuff16[1];
        rxPacket->dataSize = rxBuff16[2];

        //check that the dataSize is valid (less than or equal to BUFF_SIZE - 6)
        // TODO: Might be good idea to set data on all command packets to NULL
        //       and check against it. It would save a lot of malloc.
        if(rxPacket->dataSize <= BRIDGE_BUFFER_SIZE - 6) {
            rxPacket->data = (int8_t*)malloc(rxPacket->dataSize);
            memcpy(rxPacket->data,rxBuffData,rxPacket->dataSize);
        } else {
            // TODO: this is a transmission error for now, until we get multiple
            // packet payloads enabled
            rxPacket->dataSize = 1;
            rxPacket->data = (int8_t*)malloc(1);
        }

        if(rxPacket->command == 0x1F) {
            EVPacket* tempPacket = (EVPacket*) malloc(sizeof(EVPacket));
            tempPacket->data = (int8_t*) malloc(1024);
            tempPacket->dataSize = 1024;
            tempPacket->packetID = 0x11;
            for(int i = 0; i < 1024; i++) {
                tempPacket->data[i] = i % 24;
            }
            txLock.lock();
            _txQueue.push(tempPacket);
            txLock.unlock();
        }

        // Push packet to the controller so it has access to the other threads
        rxOutputQueue->push(rxPacket);
    }
}

/*******************************************************************************
 * TxStart()
 *
 * Initializes the tx bridge and starts the tx worker thread.
 *
 * Arguments:
 *   None
 * Return:
 *   int - 0 on success, err on failure
 ******************************************************************************/
int Bridge::TxStart() {
    if (tx_run.load() == true) {
        ERROR << "tx_run already set for some reason";
        TxStop();
    }

    int err = InitTxBridge();
    if (err) {
        return err;
    }
    INFO << "Initialized Tx Bridge";

    tx_run.store(true);
    tx_worker = std::thread(&Bridge::TxJob, this);
    INFO << "Started Tx Worker";
    return 0;
}

/*******************************************************************************
 * RxStart()
 *
 * Initializes the rx bridge and starts the rx worker thread.
 *
 * Arguments:
 *   None
 * Return:
 *   int - 0 on success, err on failure
 ******************************************************************************/
int Bridge::RxStart() {
    if (rx_run.load() == true) {
        RxStop();
    }

    int err = InitRxBridge();
    if (err) {
        return err;
    }
    INFO << "Init'd Rx Bridge";

    rx_run.store(true);
    rx_worker = std::thread(&Bridge::RxJob, this);
    INFO << "Started Rx Worker";
    return 0;
}

/*******************************************************************************
 * InitTxBridge()
 *
 * Creates a named pipe for the tx bridge.
 *
 * Arguments:
 *   None
 * Return:
 *   int - 0 on success, error code on failure
 ******************************************************************************/
int Bridge::InitTxBridge() {
#ifdef WIN32
    if(tx_hPipe != INVALID_HANDLE_VALUE) {
        return 2;
    }
    tx_hPipe = CreateNamedPipe(tx_connection_string,
                               PIPE_ACCESS_DUPLEX | FILE_FLAG_FIRST_PIPE_INSTANCE,
                               // FILE_FLAG_FIRST_PIPE_INSTANCE is not needed
                               // but forces CreateNamedPipe(..) to fail if the
                               // pipe already exists...
                               PIPE_TYPE_MESSAGE | PIPE_READMODE_MESSAGE | PIPE_WAIT | PIPE_REJECT_REMOTE_CLIENTS,
                               1,
                               4096 * 16,
                               4096 * 16,
                               NMPWAIT_USE_DEFAULT_WAIT,
                               NULL);

    if(tx_hPipe == INVALID_HANDLE_VALUE) {
        ERROR << "Failed To Create Tx Pipe at: " << tx_connection_string;
        return 1;
    }
    
    INFO << "Created Tx Pipe at: " << tx_connection_string;
    return 0;

#else
    struct sockaddr_un name;

    //create the socket
    tx_sock = socket(AF_UNIX, SOCK_STREAM, 0);
    if(tx_sock < 0) {
        perror("tx_sock::socket(): ");
        return 1;
    }
    //unlink the socket just in case the previous shutdown was not proper
    unlink(tx_connection_string);
    //set up the address/file location struct
    name.sun_family = AF_UNIX;
    int str_len = 0;
    while(tx_connection_string[str_len]) {
        name.sun_path[str_len] = tx_connection_string[str_len];
        str_len++;
    }
    name.sun_path[str_len] = 0;
    //bind the socket
    size_t size = SUN_LEN(&name);
    if(bind (tx_sock, (struct sockaddr *) &name, size) < 0) {
        perror("tx_sock::bind(): ");
        return 2;
    }

    INFO << "tx_sock created and bound on " << name.sun_path;
    return 0;
#endif
}

/*******************************************************************************
 * InitRxBridge()
 *
 * Creates a named pipe for the rx bridge.
 *
 * Arguments:
 *   None
 * Return:
 *   int - 0 on success, error code on failure
 ******************************************************************************/
int Bridge::InitRxBridge() {
#ifdef WIN32
    if(rx_hPipe != INVALID_HANDLE_VALUE) {
        return 2;
    }
    rx_hPipe = CreateNamedPipe(rx_connection_string,
                               PIPE_ACCESS_DUPLEX | FILE_FLAG_FIRST_PIPE_INSTANCE,
                               // FILE_FLAG_FIRST_PIPE_INSTANCE is not needed
                               // but forces CreateNamedPipe(..) to fail if the
                               // pipe already exists...
                               PIPE_TYPE_MESSAGE | PIPE_READMODE_MESSAGE |
                               PIPE_WAIT | PIPE_REJECT_REMOTE_CLIENTS,
                               1,
                               4096 * 16,
                               4096 * 16,
                               NMPWAIT_USE_DEFAULT_WAIT,
                               NULL);

    if(rx_hPipe == INVALID_HANDLE_VALUE) {
        ERROR << "Failed To Create Rx Pipe at: " << rx_connection_string;
        return 1;
    }

    INFO << "Created Rx Pipe at: " << rx_connection_string;
    return 0;
#else
    struct sockaddr_un name;

    //create the socket
    rx_sock = socket(AF_UNIX, SOCK_STREAM, 0);
    if(rx_sock < 0) {
        perror("rx_sock::socket(): ");
        return 1;
    }
    //unlink the socket just in case the previous shutdown was not proper
    unlink(rx_connection_string);
    //set up the address/file location struct
    name.sun_family = AF_UNIX;
    int str_len = 0;
    while(rx_connection_string[str_len]) {
        name.sun_path[str_len] = rx_connection_string[str_len];
        str_len++;
    }
    name.sun_path[str_len] = 0;
    //bind the socket
    size_t size = SUN_LEN(&name);
    if(bind (rx_sock, (struct sockaddr *) &name, size) < 0) {
        perror("rx_sock::bind(): ");
        return 2;
    }

    INFO << "rx_sock created and bound on " << name.sun_path;
    return 0;
#endif
}

/*******************************************************************************
 * TxStop()
 *
 * Closes the tx bridge and joins the worker thread.
 *
 * Arguments:
 *   None
 * Return:
 *   int - 0 on success
 ******************************************************************************/
int Bridge::TxStop() {
    INFO << "Stopping Tx";

    tx_run.store(false);

#ifdef WIN32 // Ensurses the code does not get stuck trying to accept a client

    HANDLE hfile;
    //open a link to the named pipe
    hfile = CreateFileA((LPCSTR)tx_connection_string,
                        GENERIC_WRITE | GENERIC_READ,
                        FILE_SHARE_READ | FILE_SHARE_WRITE,
                        NULL, OPEN_EXISTING,
                        FILE_ATTRIBUTE_NORMAL, NULL);

    if (INVALID_HANDLE_VALUE != hfile) {
        //dont do anything on a successful connection
    }
    else
    {
        ERROR << "Failed To Open Handle To Named Pipe: "
              << tx_connection_string << " ERROR CODE: "
              << GetLastError() << " HANDLE: " << hfile;
    }

#endif

    if(tx_worker.joinable()) {
        tx_worker.join();
    }

#ifdef WIN32
    if(INVALID_HANDLE_VALUE != tx_hPipe) {
        CloseHandle(tx_hPipe);
        tx_hPipe = INVALID_HANDLE_VALUE;
    }
#else
    if(-1 != tx_sock) {
        close(tx_sock);
        tx_sock = -1;
        client_tx_sock = -1;
        unlink(tx_connection_string);
    }
#endif

    INFO << "Tx stopped";
    return 0;
}

/*******************************************************************************
 * RxStop()
 *
 * Closes the rx bridge and joins the worker thread.
 *
 * Arguments:
 *   None
 * Return:
 *   int - 0 on success
 ******************************************************************************/
int Bridge::RxStop() {
    INFO << "Stopping Rx";

    rx_run.store(false);

#ifdef WIN32
    // because windows has belocking calls, because ofc it does, we need to
    // write an end bit to it so that it unblocks and sees that it should end
    // itself.
    // This also ensures that the code does not get stuck on trying to accept a
    // client.
    
    //open a link to the named pipe
    HANDLE hfile;
    hfile = CreateFileA((LPCSTR)rx_connection_string,
                        GENERIC_WRITE | GENERIC_READ,
                        FILE_SHARE_READ | FILE_SHARE_WRITE,
                        NULL, OPEN_EXISTING,
                        FILE_ATTRIBUTE_NORMAL, NULL);
    
    if (INVALID_HANDLE_VALUE != hfile) {
        //write the close packet
        int16_t endPacket[] = {END_PACKET_COMMAND,
                               END_PACKET_PACKETID,
                               END_PACKET_DATA_SIZE};
        DWORD bytesWritten;
        WriteFile(hfile,(LPCVOID)endPacket,6,&bytesWritten,NULL);
        //close handle
        CloseHandle(hfile);
    }
    else 
    {
        ERROR << "Failed To Open Handle To Named Pipe: "
              << rx_connection_string << " ERROR CODE: "
              << GetLastError() << " HANDLE: " << hfile;
    }

#endif

    if(rx_worker.joinable()) {
        rx_worker.join();
    }

#ifdef WIN32
    if(INVALID_HANDLE_VALUE != rx_hPipe) {
        CloseHandle(rx_hPipe);
        rx_hPipe = INVALID_HANDLE_VALUE;
    }

#else
    if(-1 != rx_sock) {
        close(rx_sock);
        rx_sock = -1;
        unlink(rx_connection_string);
    }

#endif

    INFO << "Rx stopped";
    return 0;
}

/*******************************************************************************
 * push()
 *
 * pushes a packet into the tx queue for transmission to JS.
 *
 * Arguments:
 *   EVPacket* newPacket - pointer to packet to send
 * Return:
 *   None
 ******************************************************************************/
void Bridge::push(EVPacket* newPacket)
{
    std::lock_guard<std::mutex> lck (txLock);

    _txQueue.push(newPacket);
}
