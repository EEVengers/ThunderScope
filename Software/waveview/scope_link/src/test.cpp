#include <unistd.h> 
#include <stdio.h>

#ifdef WIN32
#include <WinSock2.h>
#include <winsock.h>
#else
#include <sys/socket.h>
#include <netinet/in.h>
#include <sys/un.h> 
#endif

#include <stdlib.h> 
#include <string.h> 
#include <cerrno>
#include <string.h>

#define BUFF_SIZE 1024

//define the socket struct cause the include file seems to be MIA
#ifdef WIN32
#define UNIX_PATH_MAX 108
typedef struct sockaddr_un
{
     ADDRESS_FAMILY sun_family;     /* AF_UNIX */
     char sun_path[UNIX_PATH_MAX];  /* pathname */
} SOCKADDR_UN, *PSOCKADDR_UN;
#endif

#ifdef WIN32
int make_named_socket (const char *filename) {
  
  SOCKET sock = INVALID_SOCKET;
  WSADATA wsaData;

  int iResult = 0;// used to return function results

  // The socket address to be passed to bind
  sockaddr_un service;

  //----------------------
  // Initialize Winsock
  iResult = WSAStartup(MAKEWORD(2, 2), &wsaData);
  if (iResult != NO_ERROR) {
      wprintf(L"Error at WSAStartup()\n");
      return 1;
  }

  if (LOBYTE(wsaData.wVersion) != 2 || HIBYTE(wsaData.wVersion) != 2) {
    /* Tell the user that we could not find a usable */
    /* WinSock DLL.                                  */
    printf("Could not find a usable version of Winsock.dll\n");
    WSACleanup();
    return 1;
  }
  else
    printf("The Winsock 2.2 dll was found okay\n");

  //----------------------
  // Create a SOCKET for listening for 
  // incoming connection requests
  sock = socket(AF_UNIX, SOCK_STREAM, 0);
  if (sock == INVALID_SOCKET) {
      wprintf(L"socket function failed with error: %u\n", WSAGetLastError());
      WSACleanup();
      return 1;
  }
  //----------------------
  // The sockaddr_in structure specifies the address family,
  service.sun_family = AF_UNIX;
  for(int i = 0; i < 11; i++) {
    service.sun_path[i] = filename[i];
  }
  service.sun_path[11] = '\0';
  printf("FILEPATH: %s, COPIED FILEPATH: %s\n",filename,service.sun_path);
  //----------------------
  // Bind the socket.
  iResult = bind(sock, (SOCKADDR *) &service, sizeof (service));
  if (iResult == SOCKET_ERROR) {
      wprintf(L"bind failed with error %u\n", WSAGetLastError());
      closesocket(sock);
      WSACleanup();
      return 1;
  }
  else
      wprintf(L"bind returned success\n");

  return sock;
}

#else

int make_named_socket (const char *filename)
{
  struct sockaddr_un name;
  int sock;
  size_t size;

  /* Create the socket. */
  sock = socket (AF_UNIX, SOCK_STREAM, 0);

  printf("Socket Created With FP: %d\n",sock);

  if (sock < 0)
  {
    perror ("socket");
    exit (EXIT_FAILURE);
  }

  /* Bind a name to the socket. */
  name.sun_family = AF_UNIX;
  strncpy (name.sun_path, filename, sizeof (name.sun_path));
  name.sun_path[sizeof (name.sun_path) - 1] = '\0';

  /* The size of the address is
     the offset of the start of the filename,
     plus its length (not including the terminating null byte).
     Alternatively you can just do:
     size = SUN_LEN (&name);
  */
  //size = (offsetof (struct sockaddr_un, sun_path)
  //        + strlen (name.sun_path));
  size = SUN_LEN (&name);

  if (bind (sock, (struct sockaddr *) &name, size) < 0)
    {
      printf("Error code: %d\n",errno);
      perror ("bind");
      exit (EXIT_FAILURE);
    }

  return sock;
}

#endif

#ifdef WIN32

void runClient(const char *filename) {

  SOCKET sock = INVALID_SOCKET;
  WSADATA wsaData;

  int iResult = 0;// used to return function results

  // The socket address to be passed to bind
  sockaddr_un service;

  // Initialize Winsock
  iResult = WSAStartup(MAKEWORD(2, 2), &wsaData);
  if (iResult != NO_ERROR) {
      wprintf(L"Error at WSAStartup()\n");
      return;
  }

  sock = socket(AF_UNIX, SOCK_STREAM, 0);
  if (sock == INVALID_SOCKET) {
      wprintf(L"socket function failed with error: %u\n", WSAGetLastError());
      WSACleanup();
      return;
  }

  service.sun_family = AF_UNIX;
  for(int i = 0; i < 11; i++) {
    service.sun_path[i] = filename[i];
  }
  service.sun_path[11] = '\0';
  printf("Trying to connect to unix socket: %s\n",service.sun_path);

  if(0 != connect(sock, (SOCKADDR *) &service,13)) {
    wprintf(L"Error on connect(): %d\n",WSAGetLastError());
  }

  char buff[BUFF_SIZE];
  memcpy(buff,"HELLO WORLD", sizeof("HELLO WORLD"));

  send(sock, buff, BUFF_SIZE, 0);

  if(sock != -1) {
    closesocket(sock);
  }

  WSACleanup();
}

#else

void runClient() {

}

#endif

int main(int argc, char const *argv[]) 
{
  //unix filesystem socket path
  //char* socket_name = "/usr/local/temp/socket_test";
  //char* socket_name = "/tmp/socket_test";
  //windows filesystem socket path
  char* socket_name = "C:\\tmp\\sock"; 
  char buffer[BUFF_SIZE], sendBuff[BUFF_SIZE];
  int rc; 
  int server_fd, client_fd;
  bool done = false;
  
  memcpy(sendBuff,"HELLO WORLD", sizeof("HELLO WORLD"));

  if(argc > 2) {
    runClient(socket_name);
    return 1;
  }
  if(argc > 1)
    goto cleanup;

  do {
    //open a AF_LOCAL socket using the GNU expample
    server_fd = make_named_socket(socket_name);
  
    //listen on the socket for any clients
    printf("Ready for client connect().\n");

    rc = listen(server_fd,10);
    if(rc != 0) {
      perror("listen() failed\n");
      #ifdef WIN32
      printf("Error code: %d\n",WSAGetLastError());
      #else
      printf("Error code: %d\n",errno,rc);
      #endif

      break;
    }
    printf("Client found, accepting...\n");

    //accept the first client that connected
    
    rc = client_fd = accept(server_fd,NULL,NULL);
    if(rc < 0) {
      perror("accept() failed");
      break;
    }

    printf("Client Accepted, waiting for data...\n");
    int i = 0;

    while(!done) {
      rc = recv(client_fd,buffer,sizeof(buffer),0);
      if( rc < 0 ) {
        perror("rc() failed");
        done = true;
        break;
      }
      if(rc == 0 || rc < sizeof(buffer)) {
        printf("Client has closed gracefully before all the data was sent\n");
        done = true;
        break;
      }

      //printf("Recieved Data from client, sending \"HELLO WORLD\" back\n");
      send(client_fd,sendBuff,sizeof(sendBuff),0);
      i++;
    }
    printf("Got %i Packets from the client and send back %i replies\n",i,i);
    printf("Tranmission Complete....\n");
  
  }while(0);
  
  if(server_fd != -1) {
    #ifdef WIN32
    closesocket(server_fd);
    #else
    close(server_fd);
    #endif
    printf("Closed server_fd socket\n");
  }

  if(client_fd != -1) {
    #ifdef WIN32
    closesocket(client_fd);
    #else
    close(client_fd);
    #endif
    printf("Closed client_fd socket\n");
  }
  
cleanup:
  #ifdef WIN32
  printf("Unlinking: %s\n",socket_name);
  unlink(socket_name);
  #else
  printf("Unlinking: %s\n",socket_name);
  unlink(socket_name);
  #endif 

  #ifdef WIN32
  printf("Freeing program from windows sockets\n");
  WSACleanup();
  #endif

  return 0;
}

























