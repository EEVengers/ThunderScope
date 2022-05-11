namespace TS.NET;

internal struct ThunderscopeHardwareState
{
    public ThunderscopeHardwareState() { }
    public bool BoardEnabled = false;
    public bool PllEnabled = false;
    public bool FrontEndEnabled = false;
    public bool DatamoverEnabled = false;
    public bool FpgaAdcEnabled = false;
    public ulong BufferHead = 0;
    public ulong BufferTail = 0;
    public ulong RamSizePages = 0x10000;
}

internal enum BarRegister : uint
{
    DATAMOVER_REG_OUT = 0x00000,            // bit 0: !halt, bit 1: !reset
    DATAMOVER_TRANSFER_COUNTER = 0x00008,   // A 32 bit value, low 16 is transfer counter, bit 31 error bit
    BOARD_REG_OUT = 0x10000,                // A 32 bit value, bit 0:3: attenuation, bit 4:7: dc_cpl, bit 8: acq_en, bit 9: clk_oe, bit 10: fe_en, 21bits unused
    BOARD_REG_IN = 0x10008,                 // unused for now
    SERIAL_FIFO_DATA_WRITE_REG = 0x20010,
    SERIAL_FIFO_IER_ADDRESS = 0x20004,
    SERIAL_FIFO_TDR_ADDRESS = 0x2002C,
    SERIAL_FIFO_TDFV_ADDRESS = 0x2000C,     // read 0x1FC when the transmission is done
    SERIAL_FIFO_TLR_ADDRESS = 0x20014,      // (in bytes) This byte tells the thing to transfer
    SERIAL_FIFO_ISR_ADDRESS = 0x20000,
}

internal enum AdcRegister : byte
{
    THUNDERSCOPEHW_ADC_REG_RESET = 0x00,
    THUNDERSCOPEHW_ADC_REG_POWER = 0x0F,
    THUNDERSCOPEHW_ADC_REG_INVERT = 0x24,
    THUNDERSCOPEHW_ADC_REG_QUAD_GAIN = 0x2A,
    THUNDERSCOPEHW_ADC_REG_DUAL_GAIN = 0x2B,
    THUNDERSCOPEHW_ADC_REG_CHNUM_CLKDIV = 0x31,
    THUNDERSCOPEHW_ADC_REG_GAIN_CFG = 0x33,
    THUNDERSCOPEHW_ADC_REG_INSEL12 = 0x3A,
    THUNDERSCOPEHW_ADC_REG_INSEL34 = 0x3B,
    THUNDERSCOPEHW_ADC_REG_FS_CNTRL = 0x55
}