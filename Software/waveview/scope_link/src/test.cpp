#include <unistd.h> 
#include <stdio.h> 
#include <sys/socket.h> 
#include <stdlib.h> 
#include <netinet/in.h> 
#include <string.h> 
#include <sys/un.h>
#include <cerrno>
#include <string.h>

#define BUFF_SIZE 1024

int make_named_socket (const char *filename)
{
  struct sockaddr_un name;
  int sock;
  size_t size;

  /* Create the socket. */
  sock = socket (PF_LOCAL, SOCK_STREAM, 0);
  if (sock < 0)
  {
    perror ("socket");
    exit (EXIT_FAILURE);
  }

  /* Bind a name to the socket. */
  name.sun_family = AF_LOCAL;
  strncpy (name.sun_path, filename, sizeof (name.sun_path));
  name.sun_path[sizeof (name.sun_path) - 1] = '\0';

  /* The size of the address is
     the offset of the start of the filename,
     plus its length (not including the terminating null byte).
     Alternatively you can just do:
     size = SUN_LEN (&name);
  */
  size = (offsetof (struct sockaddr_un, sun_path)
          + strlen (name.sun_path));

  if (bind (sock, (struct sockaddr *) &name, size) < 0)
    {
      perror ("bind");
      exit (EXIT_FAILURE);
    }

  return sock;
}

int main(int argc, char const *argv[]) 
{
  char* socket_name = "/usr/local/temp/socket_test"; 
  char buffer[BUFF_SIZE], sendBuff[BUFF_SIZE];
  int rc; 
  int server_fd, client_fd;
  bool done = false;
  
  memcpy(sendBuff,"HELLO WORLD", sizeof("HELLO WORLD"));

  if(argc > 1)
      goto unlink;

  do {
    //open a AF_LOCAL socket using the GNU expample
    server_fd = make_named_socket(socket_name);
  
    //listen on the socket for any clients
    rc = listen(server_fd,1);
    if(rc < 0) {
      perror("listen() failed");
      printf("Error code: %d",errno);
      break;
    }
    printf("Ready for client connect().\n");
  
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
        printf("Client has closed gracefully before all the data was sent");
        done = true;
        break;
      }

      //printf("Recieved Data from client, sending \"HELLO WORLD\" back\n");
      send(client_fd,sendBuff,sizeof(sendBuff),0);
      i++;
    }
    printf("Got %i Packets from the client and send back %i replies",i,i);
    printf("Tranmission Complete....\n");
  
  }while(0);
  
  if(server_fd != -1) {
    close(server_fd);
    printf("Closed server_fd socket\n");
  }

  if(client_fd != -1) {
    close(client_fd);
    printf("Closed client_fd socket\n");
  }
  
unlink:
  printf("Unlinking: %s\n",socket_name);
  unlink(socket_name);

  return 0;
}

























