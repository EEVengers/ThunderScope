

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
#include "common.hpp"

#pragma comment(lib, "setupapi.lib")

#define USER_DEVICE_PATH "user"
#define C2H_0_DEVICE_PATH "c2h_0"

#define DATAMOVER_REG_OUT                   0x00000 // bit 0: halt, bit 1: reset
#define DATAMOVER_TRANSFER_COUNTER          0x00008 // A 32 bit value, low 16 is transfer counter, bit 31 error bit
#define BOARD_REG_OUT                       0x10000 // A 32 bit value, bit 0:3: attenuation, bit 4:7: dc_cpl, bit 8: acq_en, bit 9: clk_oe, bit 10: fe_en, 21bits unused
#define BOARD_REG_IN                        0x10008 // unused for now
#define SERIAL_FIFO_DATA_WRITE_REG          0x20010
#define SERIAL_FIFO_IER_ADDRESS             0x20004
#define SERIAL_FIFO_TDR_ADDRESS             0x2002C
#define SERIAL_FIFO_TDFV_ADDRESS            0x2000C // read 0x1FC when the transmission is done
#define SERIAL_FIFO_TLR_ADDRESS             0x20014 // (in bytes) This byte tells the thing to transfer
#define SERIAL_FIFO_ISR_ADDRESS             0x20000 
#define SPI_FRONT_END_CHANNEL_1             0xF8
#define SPI_FRONT_END_CHANNEL_2             0xF9
#define SPI_FRONT_END_CHANNEL_3             0xFA
#define SPI_FRONT_END_CHANNEL_4             0xFB
#define SPI_BYTE_ADC                        0xFC
#define I2C_BYTE_PLL                        0xFF

#define CLOCK_GEN_I2C_ADDRESS_WRITE         0b10110000 //The address + write bit for the Clock generator
#define CLOCK_GEN_I2C_ADDRESS_READ          0b10110001 //IF WE COULD

enum ScopeCommand {
    board_enable,
    adc_enable,
    adc_rest,
    adc_power_down,
    adc_active,
    adc_cgain_cfg,
    adc_btc_mode,
    adc_chnum_clkdiv_init,
    clk_enable,
    dataMover_enable,
    dataMover_halt,
    dataMover_disable,
    test_write
};

class PCIeLink {

public:
    bool connected;
    PCIeLink();
    PCIeLink(boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *outputQueue);

    int Connect();
    
    void Read(uint8_t* buff);
    void Write(ScopeCommand command, void* val);

    void ClockTick1();
    void ClockTick2();
    void PrintTimeDelta();
    double GetTimeDelta();

    ~PCIeLink();

private:

    char user_device[20] = USER_DEVICE_PATH; //write/read registers
    char c2h_0_device[20] = C2H_0_DEVICE_PATH; //read memory
    uint8_t dataMoverReg[1] = {0x00};
    HANDLE user_handle;
    char user_connection_string[261] = "";
    HANDLE c2h_0_handle;
    char c2h_0_connection_string[261] = "";
    LARGE_INTEGER freq; //used for perforamnce testing
    int64_t last_chunk_read;

    //output queue in which read data from the FPGA is shoved into
    boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *outputQueue;

    //used for speed testing
    LARGE_INTEGER tick1;
    LARGE_INTEGER tick2;

    void _Read(HANDLE hPCIE, long long address, uint8_t* buff, int bytesToRead);
    void _Write(HANDLE hPCIE, long long address, uint8_t* buff, int bytesToWrite);
    void _FIFO_WRITE(HANDLE hPCIE, uint8_t* data, uint8_t bytesToWrite);
    void _Job();

protected:

};

#endif