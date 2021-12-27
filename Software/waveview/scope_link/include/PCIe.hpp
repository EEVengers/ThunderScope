#ifndef PCIe_HPP
#define PCIe_HPP

#include <assert.h>
#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <thread>

#ifdef __WIN32__
#include <strsafe.h>
#include <Windows.h>
#include <SetupAPI.h>
#include <INITGUID.H>
#include <WinIoCtl.h>

#include "xdma_public.h"
#endif

#ifdef __linux__
#define HANDLE int
#define INVALID_HANDLE_VALUE -1
#endif

#include "common.hpp"

#ifdef __WIN32__
#pragma comment(lib, "setupapi.lib")
#endif

#define USER_DEVICE_PATH "user"
#define C2H_0_DEVICE_PATH "c2h_0"

#define DATAMOVER_REG_OUT                   0x00000 // bit 0: !halt, bit 1: !reset
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
    init_board,
    adc_enable_ramp_test,
    dataMover_enable,
    dataMover_disable,
    enable_channel,
    disable_channel,
    ac_couple,
    dc_couple,
    voltage_divison_set,
    voltage_offset_set,
    bandwidth_set,
    test_write,
    test_adc_data
};

struct VoltageDivSetParam {
    int ch_num;
    int voltage_div;
};

struct VoltageOffsetParam {
    int ch_num;
    double voltage;
};

struct BandwidthSetParam {
    int ch_num;
    int bw;
};

struct BoardState {
    //general front end en
    bool        board_en;
    //adc values
    bool        adc_en;
    uint8_t     num_ch_on;
    bool        ch_is_on[4];
    uint8_t     adc_chnum_clkdiv [4];
    uint8_t     adc_in_sel_12[4];
    uint8_t     adc_in_sel_34[4];
    //pga's 
    uint8_t     pga[4][4];
    //dac
    uint8_t     dac[4][5];
    //clock values
    bool        clk_en;
    //Board Register Values
    uint32_t    board_reg_out; // A 32 bit value, bit 0:3: attenuation, bit 4:7: dc_cpl, bit 8: acq_en, bit 9: clk_oe, bit 10: fe_en, 21bits unused
    uint32_t    datamover_reg_out; // bit 0: !halt, bit 1: !reset, bit 4:6: channel 
};

class PCIeLink {

public:
    bool connected;
    PCIeLink(boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *outputQueue);

    int Connect();
    void InitBoard();
    
    void Read(uint8_t* buff);
    void Write(ScopeCommand command, void* val);

    void Pause();
    void UnPause();
    void Stop();

    void ClockTick1();
    void ClockTick2();
    void PrintTimeDelta();
    double GetTimeDelta();

    ~PCIeLink();

private:

    char user_device[20] = USER_DEVICE_PATH; //write/read registers
    char c2h_0_device[20] = C2H_0_DEVICE_PATH; //read memory
    HANDLE user_handle = INVALID_HANDLE_VALUE;
    char user_connection_string[261] = "";
    HANDLE c2h_0_handle = INVALID_HANDLE_VALUE;
    char c2h_0_connection_string[261] = "";
    uint64_t freq; //used for perforamnce testing
    int64_t last_chunk_read;

    //current state
    BoardState currentBoardState;

    std::atomic<bool> _run;
    std::atomic<bool> _pause;
    std::thread PCIeReadThread;

    //output queue in which read data from the FPGA is shoved into
    boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *outputQueue;

    //used for speed testing
    uint64_t tick1;
    uint64_t tick2;

    void _Read(HANDLE hPCIE, long long address, uint8_t* buff, int bytesToRead);
    void _Write(HANDLE hPCIE, long long address, uint8_t* buff, int bytesToWrite);
    void _Write32(HANDLE hPCIE, long long address, uint32_t val);
    void _FIFO_WRITE(HANDLE hPCIE, uint8_t* data, uint8_t bytesToWrite);
    void _Job();


    //scope control stuff
    int _ch_on(int ch_num);
    int _ch_off(int ch_num);
    int _dc_cpl(int ch_num);
    int _ac_cpl(int ch_num);
    int _vdiv_set(int ch_num, int vdiv);
    int _voffset_set(int ch_num, double voffset);
    int _bw_set(int ch_num, int bw);
    int _adc_ch_cfg();
    void _adc_power_down();
    void _adc_active();

protected:

};

#endif
