#include "thunderscopehw_private.h"

enum ThunderScopeHWStatus thunderscopehw_set_pll_reg(struct ThunderScopeHW* ts, uint8_t reg, uint8_t value)
{
	uint8_t fifo[4];
	fifo[0] = I2C_BYTE_PLL;
	fifo[1] = CLOCK_GEN_I2C_ADDRESS_WRITE;
	fifo[2] = reg;
	fifo[3] = value;
	return thunderscopehw_fifo_write(ts, fifo, 4);
}

enum ThunderScopeHWStatus thunderscopehw_configure_pll(struct ThunderScopeHW* ts)
{
	// These were providedd by the chip configuration tool.
	const uint16_t config_clk_gen[] = {
		0x0010, 0x010B, 0x0233, 0x08B0,
		0x0901, 0x1000, 0x1180, 0x1501,
		0x1600, 0x1705, 0x1900, 0x1A32,
		0x1B00, 0x1C00, 0x1D00, 0x1E00,
		0x1F00, 0x2001, 0x210C, 0x2228,
		0x2303, 0x2408, 0x2500, 0x2600,
		0x2700, 0x2F00, 0x3000, 0x3110,
		0x3200, 0x3300, 0x3400, 0x3500,
		0x3800, 0x4802 };

	// write to the clock generator
	for (size_t i = 0; i < sizeof(config_clk_gen) / sizeof(config_clk_gen[0]); i++) {
		THUNDERSCOPEHW_RUN(set_pll_reg(ts,
							config_clk_gen[i] >> 8,
							config_clk_gen[i] & 0xff));
	}
	ts->pll_en = true;
	return thunderscopehw_set_datamover_reg(ts);
}

