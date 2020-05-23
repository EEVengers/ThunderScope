#ifndef SCOPE_SERIAL_H    // To make sure you don't declare the function more than once by including the header multiple times.
#define SCOPE_SERIAL_H

class scope_serial
{
  private:
    int serial_port;
  public:
    scope_serial();
    ~scope_serial();
    int open_port(char* path);
    int send_command(unsigned char* command, int len);
};

#endif
