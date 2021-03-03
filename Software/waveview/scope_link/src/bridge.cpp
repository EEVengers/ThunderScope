#include "../include/bridge.hpp"

// Queues for Rx and Tx between C++ and Js
std::queue<EVPacket*> _gtxQueue;
std::queue<EVPacket*> _grxQueue;

// Mutexs for the queues
std::mutex _gtxLock;
std::mutex _grxLock;

void TestSend(HANDLE pipe, int i) {
  char buff[50] = "HELLO: ";
  char num[30] = {};
  strcat_s(buff,50,itoa(i,num,10));
  strcat_s(buff,50,"\n");
  unsigned long bytes_written = 0;
  WriteFile(pipe,buff,25,&bytes_written,NULL);
  //printf("Wrote %d bytes\n",bytes_written);
}

Bridge::Bridge(const char* pipeName, 
            std::queue<EVPacket*>& txQueue,
            std::queue<EVPacket*>& rxQueue,
            std::mutex& txLock,
            std::mutex& rxLock) :
    _txQueue(txQueue),
    _rxQueue(rxQueue),
    _txLock(txLock),
    _rxLock(rxLock)
{
  tx_run = false;
  rx_run = false;
  #ifdef WIN32
  tx_hPipe = INVALID_HANDLE_VALUE; 
  rx_hPipe = INVALID_HANDLE_VALUE;
  #else
  tx_sock = -1;
  rx_sock = -1;
  client_tx_sock = -1;
  #endif
  //set up TX Pipe/socket path
  strcat_s((char*)tx_connection_string,100,base_path);
  strcat_s((char*)tx_connection_string,100,pipeName);
  strcat_s((char*)tx_connection_string,100,"TX");
  //set up RX Pipe/socket path
  strcat_s((char*)rx_connection_string,100,base_path);
  strcat_s((char*)rx_connection_string,100,pipeName);
  strcat_s((char*)rx_connection_string,100,"RX");
}

void Bridge::TxJob() {
  int counter = 0;

  //wait for a client (the electron app) to connect
  #ifdef WIN32
  if(tx_hPipe == INVALID_HANDLE_VALUE)
    return;
  ConnectNamedPipe(tx_hPipe, NULL);
  printf("tx_pipe: client connected\n");
  #else
  if(tx_sock == -1)
    return;
  //listen an accept a client (the electron app)
  if(listen(tx_sock,1)) {
    perror("tx_sock::listen(): ");
    return;
  }

  //accept the first client to connect
  client_tx_sock = accept(tx_sock,NULL,NULL);
  if(client_tx_sock < 0) {
    perror("tx_sock::accept(): ");
    return;
  }
  #endif 


  while(tx_run) {
    //look into queue if there is anything to send
    //std::cout << "waiting for tx_pipe connection..." << std::endl;
    if(counter < 5)
      TestSend(tx_hPipe,counter++);
    //std::cout << "tx_pipe connection found and processed...." << std::endl;
#ifdef WIN32

#endif
    _txLock.lock();
    if(_txQueue.empty()) {
      _txLock.unlock();
      //if nothing sleep for 500us

    } else {
      //else, send it
      _txLock.unlock();
    }
  }
}

void Bridge::RxJob() {

  #ifdef WIN32
  if(rx_hPipe == INVALID_HANDLE_VALUE)
    return;
  ConnectNamedPipe(rx_hPipe, NULL);
  printf("rx_pipe: client connected\n");
  #else
  if(rx_sock == -1)
    return;
  //listen an accept a client (the electron app)
  if(listen(rx_sock,1)) {
    perror("rx_sock::listen(): ");
    return;
  }

  //accept the first client to connect, no need to save it's fd since we will never
  //write to it
  int rc = accept(tx_sock,NULL,NULL);
  if(rc < 0) {
    perror("rx_sock::accept(): ");
    return;
  }
  #endif

  while(rx_run) {
    //reading block until something is sent
#ifdef WIN32
    DWORD packet_size;
    ReadFile(rx_hPipe, rxBuff, 4095, &packet_size, NULL);
    if(packet_size != 0) {
      std::cout << rxBuff << std::endl;
    }
#endif
    //process whatever is sent (for now just print it)
    _rxLock.lock();
    //process whatever it is
    _rxLock.unlock();
  }
}

Bridge::~Bridge() {
  RxStop();
  TxStop();
}

int Bridge::TxStart() {
  if(true == tx_run) {
    TxStop();
  }

  int err = 0; 
  if(err = InitTxBridge())
    return err;
  std::cout << "Init'd Tx Bridge\n";

  tx_run = true;
  tx_worker = std::thread(&Bridge::TxJob, this);
  std::cout << "Started Tx Worker\n";
  return 0;
}

int Bridge::RxStart() {
  if(true == rx_run) {
    RxStop();
  }

  int err = 0; 
  if(err = InitRxBridge())
    return err;
  std::cout << "Init'd Rx Bridge\n";

  rx_run = true;
  rx_worker = std::thread(&Bridge::RxJob, this);
  std::cout << "Started Rx Worker\n";
  return 0;
}

#ifdef WIN32

int Bridge::TxStop() {
  tx_run = false;
  if(tx_worker.joinable()) {
    tx_worker.join();
  }

  if(INVALID_HANDLE_VALUE != tx_hPipe) {
    CloseHandle(tx_hPipe);
    tx_hPipe = INVALID_HANDLE_VALUE;
  }

  return 0;
}

int Bridge::RxStop() {
  rx_run = false;
  if(rx_worker.joinable()) {
    rx_worker.join();
  }

  if(INVALID_HANDLE_VALUE != rx_hPipe) {
    CloseHandle(rx_hPipe);
    rx_hPipe = INVALID_HANDLE_VALUE;
  }

  return 0;
}

int Bridge::InitTxBridge() {
  if(tx_hPipe != INVALID_HANDLE_VALUE)
    return 2;
  tx_hPipe = CreateNamedPipe(tx_connection_string,
                            PIPE_ACCESS_DUPLEX | FILE_FLAG_FIRST_PIPE_INSTANCE,
                            PIPE_TYPE_MESSAGE | PIPE_READMODE_MESSAGE | PIPE_WAIT | PIPE_REJECT_REMOTE_CLIENTS,   // FILE_FLAG_FIRST_PIPE_INSTANCE is not needed but forces CreateNamedPipe(..) to fail if the pipe already exists...
                            1,
                            4096 * 16,
                            4096 * 16,
                            NMPWAIT_USE_DEFAULT_WAIT,
                            NULL);

  if(tx_hPipe == INVALID_HANDLE_VALUE) {
    std::cout << "Failed To Create Tx Pipe at: " << tx_connection_string << std::endl;
    return 1;
  }

  std::cout << "Created Tx Pipe at: " << tx_connection_string <<std::endl;
  return 0;
}

int Bridge::InitRxBridge() {
  if(rx_hPipe != INVALID_HANDLE_VALUE)
    return 2;
  rx_hPipe = CreateNamedPipe(rx_connection_string,
                            PIPE_ACCESS_DUPLEX | FILE_FLAG_FIRST_PIPE_INSTANCE,
                            PIPE_TYPE_MESSAGE | PIPE_READMODE_MESSAGE | PIPE_WAIT | PIPE_REJECT_REMOTE_CLIENTS,   // FILE_FLAG_FIRST_PIPE_INSTANCE is not needed but forces CreateNamedPipe(..) to fail if the pipe already exists...
                            1,
                            4096 * 16,
                            4096 * 16,
                            NMPWAIT_USE_DEFAULT_WAIT,
                            NULL);

  if(rx_hPipe == INVALID_HANDLE_VALUE) {
    std::cout << "Failed To Create Rx Pipe at: " << rx_connection_string << std::endl;
    return 1;
  }

  std::cout << "Created Rx Pipe at: " << rx_connection_string <<std::endl;
  return 0;
}

#else

int Bridge::TxStop() {
  tx_run = false;
  if(tx_worker.joinable()) {
    tx_worker.join();
  }

  if(-1 != tx_sock) {
    close(tx_sock);
    tx_sock = -1;
    client_tx_sock = -1;
    unlink(tx_connection_string);
  }

  return 0;
}

int Bridge::RxStop() {
  rx_run = false;
  if(rx_worker.joinable()) {
    rx_worker.join();
  }

  if(-1 != rx_sock) {
    close(rx_sock);
    rx_sock = -1;
    unlink(rx_connection_string);
  }

  return 0;
}

int Bridge::InitTxBridge() {
  struct sockaddr_un name;
  
  //create the socket
  tx_sock = socket(AF_UNIX, SOCK_DGRAM, 0);
  if(tx_sock < 0) {
    perror("tx_sock::socket(): ");
    return 1;
  }

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

  return 0;
}

int Bridge::InitRxBridge() {
  struct sockaddr_un name;
  
  //create the socket
  rx_sock = socket(AF_UNIX, SOCK_DGRAM, 0);
  if(rx_sock < 0) {
    perror("rx_sock::socket(): ");
    return 1;
  }

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

  return 0;
}

#endif



int main(int argc, char const *argv[]) 
{
  char in[10] = {};
  Bridge* testBridge = new Bridge("testPipe",_gtxQueue,_grxQueue,_gtxLock,_grxLock);

  testBridge->TxStart();
  testBridge->RxStart();
  
  std::cin >> in;

  delete testBridge;
  return 0;
}

























