#ifndef SCOPE_CONTROL_H    // To make sure you don't declare the function more than once by including the header multiple times.
#define SCOPE_CONTROL_H

#include "scope_serial.h"

class scope_control
{
  private:
    scope_serial *ser;
    const unsigned char io_dir_init [6] = {0xFF,0x44,0x8C,0x00,0x00,0x00};
    const unsigned char io_out_init [6] = {0xFF,0x44,0x84,0x00,0x00,0x00};
    unsigned char io_out [6];
    //DAC Addressing not implemented yet, only one FE w/ addr 0x18 exists
    const unsigned char dac_init [4][4] = {{0xFF,0x18,0x07,0x03},
                                           {0xFF,0x18,0x07,0x03},
                                           {0xFF,0x18,0x07,0x03},
                                           {0xFF,0x18,0x07,0x03}};            
    unsigned char dac [4][4];

    const unsigned char pga_init [4][4] = {{0xFB,0x00,0x04,0x0A},
                                           {0xFA,0x00,0x04,0x0A},
                                           {0xF9,0x00,0x04,0x0A},
                                           {0xF8,0x00,0x04,0x0A}};
    unsigned char pga [4][4];

    const unsigned char adc_reset [4] = {0xFD,0x00,0x00,0x01};
    const unsigned char adc_power_down [4] = {0xFD,0x0F,0x02,0x00};
    const unsigned char adc_active [4] = {0xFD,0x0F,0x00,0x00};
    const unsigned char adc_cgain_cfg [4] = {0xFD,0x33,0x00,0x00}; //db mode, fine gain off
    const unsigned char adc_cgain4 [4] = {0xFD,0x2A,0x55,0x55}; //9db gain in 4ch mode
    const unsigned char adc_cgain12 [4] = {0xFD,0x2B,0x05,0x55}; //9db gain in 1&2ch mode 
    //5db gain due to ADC HiZ input (not 100ohm diff)

    const unsigned char adc_chnum_clkdiv_init [4] = {0xFD,0x31,0x00,0x01};
    const unsigned char adc_in_sel_12_init [4] = {0xFD,0x3A,0x10,0x10};
    const unsigned char adc_in_sel_34_init [4] = {0xFD,0x3B,0x10,0x10};

    unsigned char adc_chnum_clkdiv [4];
    unsigned char adc_in_sel_12 [4];
    unsigned char adc_in_sel_34 [4];
    
  public:
    scope_control();
    ~scope_control();
    int configure_serial(char* path);
    int boot ();
    int load_default ();
    int ch_on(int ch_num);
    int ch_off(int ch_num);
    int dc_cpl(int ch_num);
    int ac_cpl(int ch_num);
    int vdiv_set(int ch_num, int vdiv);
    int voffset_set(int ch_num, double voffset);
    int bw_set(int ch_num, int bw);
};

#endif
