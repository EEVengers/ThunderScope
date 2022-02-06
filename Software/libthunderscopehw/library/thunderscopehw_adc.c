#include "thunderscopehw_private.h"

enum ThunderScopeHWStatus thunderscopehw_adc_set_reg(struct ThunderScopeHW* ts, enum ThunderScopeHWAdcRegister reg, uint16_t value)
{
	uint8_t fifo[4];
	fifo[0] = SPI_BYTE_ADC;
	fifo[1] = reg;
	fifo[2] = value >> 8;
	fifo[3] = value & 0xff;
	return thunderscopehw_fifo_write(ts, fifo, 4);
}

enum ThunderScopeHWStatus thunderscopehw_adc_power(struct ThunderScopeHW* ts, bool on)
{
	return thunderscopehw_adc_set_reg(ts,
					THUNDERSCOPEHW_ADC_REG_POWER,
					on ? 0x0200 : 0x0000);
}

enum ThunderScopeHWStatus thunderscopehw_configure_adc(struct ThunderScopeHW* ts)
{
	//Reset ADC
	THUNDERSCOPEHW_RUN(adc_set_reg(ts, THUNDERSCOPEHW_ADC_REG_RESET, 0x0001));
	// Power Down ADC
	THUNDERSCOPEHW_RUN(adc_power(ts, false));

	// invert channels
	THUNDERSCOPEHW_RUN(adc_set_reg(ts, THUNDERSCOPEHW_ADC_REG_INVERT, 0x007F));

	// Adjust full scale value
	THUNDERSCOPEHW_RUN(adc_set_reg(ts, THUNDERSCOPEHW_ADC_REG_FS_CNTRL, 0x0010));

	// Course Gain On
	THUNDERSCOPEHW_RUN(adc_set_reg(ts, THUNDERSCOPEHW_ADC_REG_GAIN_CFG, 0x000));

	// Course Gain 4-CH set
	THUNDERSCOPEHW_RUN(adc_set_reg(ts, THUNDERSCOPEHW_ADC_REG_QUAD_GAIN, 0x9999));

	// Course Gain 1-CH & 2-CH set
	THUNDERSCOPEHW_RUN(adc_set_reg(ts, THUNDERSCOPEHW_ADC_REG_DUAL_GAIN, 0x0A99));

	//Set adc into active mode
	//currentBoardState.num_ch_on++;
	//currentBoardState.ch_is_on[0] = true;
	//_FIFO_WRITE(user_handle,currentBoardState.adc_chnum_clkdiv,sizeof(currentBoardState.adc_chnum_clkdiv));

	THUNDERSCOPEHW_RUN(adc_power(ts, true));
	//_FIFO_WRITE(user_handle,currentBoardState.adc_in_sel_12,sizeof(currentBoardState.adc_in_sel_12));
	//_FIFO_WRITE(user_handle,currentBoardState.adc_in_sel_34,sizeof(currentBoardState.adc_in_sel_34));

	ts->fe_en = true;
	return thunderscopehw_set_datamover_reg(ts);
}
