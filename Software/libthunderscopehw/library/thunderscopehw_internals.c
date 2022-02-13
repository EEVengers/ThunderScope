#include "thunderscopehw_private.h"

#include <math.h>
#include <stdio.h>
#include <stdlib.h>

#ifdef WIN32
#else
#include <unistd.h>
#endif

enum ThunderScopeHWStatus thunderscopehw_initboard(struct ThunderScopeHW* ts)
{
	THUNDERSCOPEHW_RUN(write32(ts, DATAMOVER_REG_OUT, 0));
	ts->board_en = true;
	THUNDERSCOPEHW_RUN(set_datamover_reg(ts));
	THUNDERSCOPEHW_RUN(configure_pll(ts));
	return thunderscopehw_configure_adc(ts);
}

enum ThunderScopeHWStatus thunderscopehw_fifo_write(struct ThunderScopeHW* ts, uint8_t* data, size_t bytes)
{
	// reset ISR
	THUNDERSCOPEHW_RUN(write32(ts, SERIAL_FIFO_ISR_ADDRESS, 0xFFFFFFFFU));
	// read ISR and IER
	thunderscopehw_read32(ts, SERIAL_FIFO_ISR_ADDRESS);
	thunderscopehw_read32(ts, SERIAL_FIFO_IER_ADDRESS);
	// enable IER
	THUNDERSCOPEHW_RUN(write32(ts, SERIAL_FIFO_IER_ADDRESS, 0x0C000000U));
	// Set false TDR
	THUNDERSCOPEHW_RUN(write32(ts, SERIAL_FIFO_TDR_ADDRESS, 0x2U));
	// Put data into queue
	for(size_t i = 0; i < bytes; i++) {
		// TODO: Replace with write32
		THUNDERSCOPEHW_RUN(write_handle(ts, ts->user_handle, data + i, SERIAL_FIFO_DATA_WRITE_REG, 1));
	}
	// read TDFV (vacancy byte)
	thunderscopehw_read32(ts, SERIAL_FIFO_TDFV_ADDRESS);
	// write to TLR (the size of the packet)
	THUNDERSCOPEHW_RUN(write32(ts, SERIAL_FIFO_TLR_ADDRESS, (uint32_t)(bytes * 4)));
	// read ISR for a done value
	while ((thunderscopehw_read32(ts, SERIAL_FIFO_ISR_ADDRESS) >> 24) != 8) {
#ifdef WIN32
		Sleep(1);
#else
		usleep(1500);
#endif
	}
	// reset ISR
	THUNDERSCOPEHW_RUN(write32(ts, SERIAL_FIFO_ISR_ADDRESS, 0xFFFFFFFFU));
	// read TDFV
	thunderscopehw_read32(ts, SERIAL_FIFO_TDFV_ADDRESS);

	return THUNDERSCOPEHW_STATUS_OK;
}

enum ThunderScopeHWStatus thunderscopehw_set_datamover_reg(struct ThunderScopeHW* ts)
{
	uint32_t datamover_reg = 0;
	int num_channels_on = 0;

	if (ts->board_en) datamover_reg |= 0x01000000;
	if (ts->pll_en) datamover_reg |= 0x02000000;
	if (ts->fe_en)  datamover_reg |= 0x04000000;
	if (ts->datamover_en)  datamover_reg |= 0x1;
	if (ts->fpga_adc_en)  datamover_reg |= 0x2;

	for (int channel = 0; channel < 4; channel++) {
		if (ts->channels[channel].on == true) {
			num_channels_on++;
		}
		if (ts->channels[channel].vdiv <= 100) {
			datamover_reg |= 1 << (16 + channel);
		}
		if (ts->channels[channel].coupling == THUNDERSCOPEHW_COUPLING_DC) {
			datamover_reg |= 1 << (20 + channel);
		}
	}
	switch (num_channels_on) {
	case 0:
	case 1: break; // do nothing
	case 2: datamover_reg |= 0x10; break;
	default: datamover_reg |= 0x30; break;
	}

	// write to datamover reg
	return thunderscopehw_write32(ts, DATAMOVER_REG_OUT, datamover_reg);
}

// PGA LMH6518
enum ThunderScopeHWStatus thunderscopehw_set_pga(struct ThunderScopeHW* ts, int channel)
{
	uint8_t fifo[4];
	fifo[0] = 0xFB - channel;  // SPI chip enable
	fifo[1] = 0;
	fifo[2] = 0x04;  // ??

	int vdiv = ts->channels[channel].vdiv;
	if (vdiv > 100) {
		// Attenuator relay on, handled by
		// thunderscopehw_set_datamover_reg.
		vdiv /= 100;
	}

	switch (vdiv) {
	case 100: fifo[3] = 0x0A; break;
	case  50: fifo[3] = 0x07; break;
	case  20: fifo[3] = 0x03; break;
	case  10: fifo[3] = 0x1A; break;
	case   5: fifo[3] = 0x17; break;
	case   2: fifo[3] = 0x13; break;
	case   1: fifo[3] = 0x10; break;
	default: return THUNDERSCOPEHW_STATUS_INVALID_VDIV;
	}
	switch (ts->channels[channel].bw) {
	case  20: fifo[3] |= 0x40; break;
	case 100: fifo[3] |= 0x80; break;
	case 200: fifo[3] |= 0xC0; break;
	case 350: /* 0 */ break;
	default: return THUNDERSCOPEHW_STATUS_INVALID_BANDWIDTH;
	}
	return thunderscopehw_fifo_write(ts, fifo, 4);
}

enum ThunderScopeHWStatus thunderscopehw_set_dac(struct ThunderScopeHW* ts, int channel)
{
	// value is 12-bit
	// Is this right?? Or is it rounding wrong?
	int dac_value = (unsigned int)round((ts->channels[channel].voffset + 0.5) * 4095);
	if (dac_value < 0)
		return THUNDERSCOPEHW_STATUS_OFFSET_TOO_LOW;
	if (dac_value > 0xFFF)
		return THUNDERSCOPEHW_STATUS_OFFSET_TOO_HIGH;

	uint8_t fifo[5];
	fifo[0] = 0xFF;  // I2C
	fifo[1] = 0xC2;  // DAC?
	fifo[2] = 0x40 + (channel << 1);
	fifo[3] = ((dac_value >> 8) & 0xF);
	fifo[4] = dac_value & 0xFF;
	return thunderscopehw_fifo_write(ts, fifo, 5);
}

enum ThunderScopeHWStatus thunderscopehw_configure_channels(struct ThunderScopeHW* ts)
{
	uint8_t on_channels[4];
	int i;
	int num_channels_on = 0;
	uint8_t clkdiv = 0;

	for (i = 0; i < 4; i++) {
		if (ts->channels[i].on) {
			on_channels[num_channels_on++] = i;
		}
	}

	switch (num_channels_on) {
	case 0:
		return THUNDERSCOPEHW_STATUS_NO_CHANNELS;

	case 1:
		on_channels[1] = on_channels[2] = on_channels[3] = on_channels[0];
		clkdiv = 0;
		break;

	case 2:
		on_channels[2] = on_channels[3] = on_channels[1];
		on_channels[1] = on_channels[0];
		clkdiv = 1;
		break;

	default:
		on_channels[0] = 0;
		on_channels[1] = 1;
		on_channels[2] = 2;
		on_channels[3] = 3;
		num_channels_on = 4;
		clkdiv = 2;
		break;
	}

	THUNDERSCOPEHW_RUN(adc_power(ts, false));
	THUNDERSCOPEHW_RUN(adc_set_reg(ts,
						THUNDERSCOPEHW_ADC_REG_CHNUM_CLKDIV,
						(clkdiv << 8)  | num_channels_on));
	THUNDERSCOPEHW_RUN(adc_power(ts, true));
	THUNDERSCOPEHW_RUN(adc_set_reg(ts,
						THUNDERSCOPEHW_ADC_REG_INSEL12,
						(2 << on_channels[0]) | (512 << on_channels[1])));
	THUNDERSCOPEHW_RUN(adc_set_reg(ts,
						THUNDERSCOPEHW_ADC_REG_INSEL34,
						(2 << on_channels[2]) | (512 << on_channels[3])));

	struct ThunderScopeHW tmp = *ts;
	tmp.datamover_en = false;
	tmp.fpga_adc_en = false;
	THUNDERSCOPEHW_RUN(set_datamover_reg(&tmp));
#ifdef WIN32
	Sleep(5);
#else
	usleep(5000);
#endif
	return thunderscopehw_set_datamover_reg(ts);
}

enum ThunderScopeHWStatus thunderscopehw_configure_channel(struct ThunderScopeHW* ts, int channel)
{
	THUNDERSCOPEHW_RUN(configure_channels(ts));
	THUNDERSCOPEHW_RUN(set_dac(ts, channel));
	THUNDERSCOPEHW_RUN(set_datamover_reg(ts));
	return thunderscopehw_set_pga(ts, channel);
}

uint32_t thunderscopehw_read32(struct ThunderScopeHW* ts, size_t addr)
{
	uint8_t bytes[4];
	if (thunderscopehw_read_handle(ts, ts->user_handle, bytes, addr, 4) != THUNDERSCOPEHW_STATUS_OK) {
		fprintf(stderr, "Error in thunderscopehw_read32\n");
		exit(1);
	}
	return (bytes[3] << 24) | (bytes[2] << 16) | (bytes[1] << 8) | bytes[0];
}

enum ThunderScopeHWStatus thunderscopehw_write32(struct ThunderScopeHW* ts, size_t addr, uint32_t value)
{
	uint8_t bytes[4];
	bytes[3] = value >> 24;
	bytes[2] = value >> 16;
	bytes[1] = value >> 8;
	bytes[0] = value;
	return thunderscopehw_write_handle(ts, ts->user_handle, bytes, addr, 4);
}
