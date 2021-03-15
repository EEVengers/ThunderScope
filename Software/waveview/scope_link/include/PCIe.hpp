

#ifndef PCIe_HPP
#define PCIe_HPP

#include <assert.h>
#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <strsafe.h>

#include <Windows.h>
#include <SetupAPI.h>
#include <INITGUID.H>
#include <WinIoCtl.h>

#include "xdma_public.h"

#pragma comment(lib, "setupapi.lib")

#define USER_DEVICE_PATH "user"
#define C2H_0_DEVICE_PATH "c2h_0"

#define DATAMOVER_REG_OUT                   0x0000 // bit 0: halt, bit 1: reset
#define DATAMOVER_TRANSFER_COUNTER          0x0008 // A 32 bit value, low 16 is transfer counter, bit 31 error bit
#define BOARD_REG_OUT                       0x1000 // A 32 bit value, bit 0:3: attenuation, bit 4:7: dc_cpl, bit 8: acq_en, bit 9: fe_en, 22bits unused
#define BOARD_REG_IN                        0x1008 // unused for now
#define SERIAL_FIFO_DATA_WRITE_REG          0x2010
#define SERIAL_FIFO_DATA_LENGTH             0x2014 // (in bytes) This byte tells the thing to transfer
#define SERIAL_FIFO_DATA_DONE_BYTE_ADDRESS  0x200C // read 0x1FC when the when empty
#define SPI_FRONT_END_CHANNEL_1             0xF8
#define SPI_FRONT_END_CHANNEL_2             0xF9
#define SPI_FRONT_END_CHANNEL_3             0xFA
#define SPI_FRONT_END_CHANNEL_4             0xFB
#define SPI_BYTE_ADC                        0xFC
#define I2C_BYTE_PLL                        0xFF

#define CLOCK_GEN_I2C_ADDRESS_WRITE         0b10110000 //The address + write bit for the Clock generator
#define CLOCK_GEN_I2C_ADDRESS_READ          0b10110001 //IF WE COULD

enum ScopeCommand {
    adc_enable,
    adc_rest,
    adc_power_down,
    adc_active,
    adc_cgain_cfg,
    adc_btc_mode,
    adc_chnum_clkdiv_init,
    adc_in_sel_12_init,
    adc_in_sel_34_init,
    clk_enable,
    pll_r_counter,
    pll_control,
    pll_n_counter,
    test_write
};

class PCIeLink {

public:
    bool connected;
    PCIeLink();

    int Connect();
    
    void Read(uint8_t* buff, int bytesToRead);
    void Write(ScopeCommand command, void* val);

    ~PCIeLink();

private:

    char user_device[20] = USER_DEVICE_PATH; //write/read registers
    char c2h_0_device[20] = C2H_0_DEVICE_PATH; //read memory
    HANDLE user_handle;
    char user_connection_string[261] = "";
    HANDLE c2h_0_handle;
    char c2h_0_connection_string[261] = "";
    LARGE_INTEGER freq; //used for perforamnce testing

    const unsigned char io_dir_init [6] = {0xFF,0x44,0x8C,0x00,0x00,0x00};
    const unsigned char io_out_init [6] = {0xFF,0x44,0x84,0x00,0x00,0x00};
    unsigned char io_out [6];
    //DAC Addressing not implemented yet, only one FE w/ addr 0x18 exists
    const unsigned char dac_init [4][4] = {{0xFF,0x18,0x07,0x00},
                                           {0xFF,0x18,0x07,0x00},
                                           {0xFF,0x18,0x07,0x00},
                                           {0xFF,0x18,0x07,0x00}};
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
    const unsigned char adc_btc_mode [4] = {0xFD,0x46,0x00,0x04}; // enables twos complement mode

    const unsigned char adc_chnum_clkdiv_init [4] = {0xFD,0x31,0x00,0x01};
    const unsigned char adc_in_sel_12_init [4] = {0xFD,0x3A,0x10,0x10};
    const unsigned char adc_in_sel_34_init [4] = {0xFD,0x3B,0x10,0x10};

    unsigned char adc_chnum_clkdiv [4];
    unsigned char adc_in_sel_12 [4];
    unsigned char adc_in_sel_34 [4];

    const unsigned char pll_r_counter[4] = {0xFC,0x34,0x00,0x09};
    const unsigned char pll_control[4] = {0xFC,0x0F,0xF9,0xA0};
    const unsigned char pll_n_counter[4] = {0xFC,0x00,0x0F,0x16};

    void _Read(HANDLE hPCIE, long long address, uint8_t* buff, int bytesToRead);
    void _Write(HANDLE hPCIE, long long address, uint8_t* buff, int bytesToWrite);

protected:

};

#endif