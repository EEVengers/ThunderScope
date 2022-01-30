#ifndef THUNDERSCOPEHW_PRIVATE_H
#define THUNDERSCOPEHW_PRIVATE_H

#include "thunderscopehw.h"

#ifdef _WIN32
#include <windows.h>
#define THUNDERSCOPEHW_FILE_HANDLE HANDLE
#define THUNDERSCOPEHW_INVALID_HANDLE_VALUE INVALID_HANDLE_VALUE
#else
#define THUNDERSCOPEHW_FILE_HANDLE int
#define THUNDERSCOPEHW_INVALID_HANDLE_VALUE -1
#endif


#define USER_DEVICE_PATH "user"
#define C2H_0_DEVICE_PATH "c2h_0"

// TODO: Convert to enum
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

#define THUNDERSCOPEHW_CHANNELS               4

#define THUNDERSCOPEHW_RUN(X) do {			\
  enum ThunderScopeHWStatus ret = (thunderscopehw_##X);	\
if (ret != THUNDERSCOPEHW_STATUS_OK) return ret;		\
} while(0)

enum ThunderScopeHWCouplingType {
	THUNDERSCOPEHW_COUPLING_AC = 20000,
	THUNDERSCOPEHW_COUPLING_DC,
};

struct ThunderScopeHWChannel {
	bool on;
	int vdiv;
	int bw;
	double voffset;
	enum ThunderScopeHWCouplingType coupling;
};

struct ThunderScopeHW {
	bool connected;
	bool board_en;   // general front end en
	bool adc_en;     // adc values
	bool pll_en;     // PLL enable
	bool fe_en;      // ??
	bool datamover_en;
	bool fpga_adc_en;
	struct ThunderScopeHWChannel channels[4];

	THUNDERSCOPEHW_FILE_HANDLE user_handle;
	THUNDERSCOPEHW_FILE_HANDLE c2h0_handle;

	// These are counted in 4k pages
	uint64_t buffer_head;
	uint64_t buffer_tail;
	uint64_t ram_size_pages;
};


enum ThunderScopeHWStatus thunderscopehw_initboard(struct ThunderScopeHW* ts);
enum ThunderScopeHWStatus thunderscopehw_fifo_write(struct ThunderScopeHW* ts, uint8_t* data, size_t bytes);
enum ThunderScopeHWStatus thunderscopehw_set_datamover_reg(struct ThunderScopeHW* ts);
enum ThunderScopeHWStatus thunderscopehw_set_pga(struct ThunderScopeHW* ts, int channel);
enum ThunderScopeHWStatus thunderscopehw_set_dac(struct ThunderScopeHW* ts, int channel);
enum ThunderScopeHWStatus thunderscopehw_configure_channels(struct ThunderScopeHW* ts);
enum ThunderScopeHWStatus thunderscopehw_configure_channel(struct ThunderScopeHW* ts, int channel);
uint32_t thunderscopehw_read32(struct ThunderScopeHW*ts, size_t addr);
enum ThunderScopeHWStatus thunderscopehw_write32(struct ThunderScopeHW*ts, size_t addr, uint32_t value);


// ADC functions (HMHMCAD1)
enum ThunderScopeHWAdcRegister {
	// Datasheet names functions inside these registers, not the registers, so the names are made up.
	THUNDERSCOPEHW_ADC_REG_RESET = 0x00,
	THUNDERSCOPEHW_ADC_REG_POWER = 0x0F,
	THUNDERSCOPEHW_ADC_REG_INVERT = 0x24,
	THUNDERSCOPEHW_ADC_REG_QUAD_GAIN  = 0x2A,
	THUNDERSCOPEHW_ADC_REG_DUAL_GAIN  = 0x2B,
	THUNDERSCOPEHW_ADC_REG_CHNUM_CLKDIV = 0x31,
	THUNDERSCOPEHW_ADC_REG_GAIN_CFG = 0x33,
	THUNDERSCOPEHW_ADC_REG_INSEL12 = 0x3A,
	THUNDERSCOPEHW_ADC_REG_INSEL34 = 0x3A,
	THUNDERSCOPEHW_ADC_REG_FS_CNTRL = 0x55,
};
enum ThunderScopeHWStatus thunderscopehw_adc_set_reg(struct ThunderScopeHW* ts, enum ThunderScopeHWAdcRegister reg, uint16_t value);
enum ThunderScopeHWStatus thunderscopehw_adc_power(struct ThunderScopeHW* ts, bool on);
enum ThunderScopeHWStatus thunderscopehw_configure_adc(struct ThunderScopeHW* ts);
enum ThunderScopeHWStatus thunderscopehw_configure_pll(struct ThunderScopeHW* ts);

enum ThunderScopeHWStatus thunderscopehw_read_handle(struct ThunderScopeHW* ts, THUNDERSCOPEHW_FILE_HANDLE h, uint8_t* data, uint64_t addr, int64_t bytes);
enum ThunderScopeHWStatus thunderscopehw_write_handle(struct ThunderScopeHW* ts, THUNDERSCOPEHW_FILE_HANDLE h, uint8_t* data, uint64_t addr, int64_t bytes);

#endif
