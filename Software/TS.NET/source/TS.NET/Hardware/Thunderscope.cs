using System;
using System.Buffers.Binary;
using System.Collections.Generic;
using System.IO.MemoryMappedFiles;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;

namespace TS.NET
{
    public record ThunderscopeDevice
    {
        public string DevicePath { get; set; }
    }

    public record ThunderscopeChannel
    {
        public bool Enabled { get; set; } = true;
        public double VoltsOffset { get; set; } = 0;
        public int VoltsDiv { get; set; } = 100;
        public int Bandwidth { get; set; } = 350;
        public ThunderscopeCoupling Coupling { get; set; }
    }

    public enum ThunderscopeCoupling
    {
        DC,
        AC
    }

    public class Thunderscope
    {
        private static Guid deviceGuid = new(0x74c7e4a9, 0x6d5d, 0x4a70, 0xbc, 0x0d, 0x20, 0x69, 0x1d, 0xff, 0x9e, 0x9d);
        private static IntPtr NULL = IntPtr.Zero;
        private const int INVALID_HANDLE_VALUE = -1;
        private const int ERROR_INSUFFICIENT_BUFFER = 122;
        private const int ERROR_NO_MORE_ITEMS = 259;
        private const int FILE_BEGIN = 0;
        private const string USER_DEVICE_PATH = "user";
        private const string C2H_0_DEVICE_PATH = "c2h_0";

        //private MemoryMappedFile userFile;
        //private MemoryMappedViewAccessor userMap;
        //private BinaryWriter controllerToHostWriter;
        private IntPtr userFilePointer;
        private IntPtr controllerToHostFilePointer;

        private bool open = false;
        private ThunderscopeHardwareState hardwareState = new();

        public ThunderscopeChannel[] Channels = new ThunderscopeChannel[] { new(), new(), new(), new() };

        public static List<ThunderscopeDevice> IterateDevices()
        {
            List<ThunderscopeDevice> devices = new();

            var deviceInfo = Interop.SetupDiGetClassDevs(ref deviceGuid, NULL, NULL, DiGetClassFlags.DIGCF_PRESENT | DiGetClassFlags.DIGCF_DEVICEINTERFACE);
            if ((IntPtr.Size == 4 && deviceInfo.ToInt32() == INVALID_HANDLE_VALUE) || (IntPtr.Size == 8 && deviceInfo.ToInt64() == INVALID_HANDLE_VALUE))
                throw new Exception("SetupDiGetClassDevs - failed with INVALID_HANDLE_VALUE");

            SP_DEVICE_INTERFACE_DATA deviceInterface = new();
            unsafe
            {
                deviceInterface.CbSize = sizeof(SP_DEVICE_INTERFACE_DATA);
                for (uint i = 0; Interop.SetupDiEnumDeviceInterfaces(deviceInfo, NULL, ref deviceGuid, i, ref deviceInterface); ++i)        //Marshal.GetLastWin32Error() == ERROR_NO_MORE_ITEMS
                {
                    uint detailLength = 0;
                    if (!Interop.SetupDiGetDeviceInterfaceDetail(deviceInfo, ref deviceInterface, NULL, 0, ref detailLength, NULL) && Marshal.GetLastWin32Error() != ERROR_INSUFFICIENT_BUFFER)
                        throw new Exception("SetupDiGetDeviceInterfaceDetail - failed getting length with ERROR_INSUFFICIENT_BUFFER");
                    if (detailLength > 255)
                        throw new Exception("SetupDiGetDeviceInterfaceDetail - failed getting length by returning a length greater than 255 which won't fit into fixed length string field");

                    SP_DEVICE_INTERFACE_DETAIL_DATA deviceInterfaceDetail = new();
                    deviceInterfaceDetail.CbSize = IntPtr.Size == 8 ? 8 : 6;            // 6 bytes for x86, 8 bytes for x64
                                                                                        // Could use Marshal.AllocHGlobal and Marshal.FreeHGlobal, inside Try/Finally, but might as well use the Marshalling syntax sugar
                    if (!Interop.SetupDiGetDeviceInterfaceDetail(deviceInfo, ref deviceInterface, ref deviceInterfaceDetail, detailLength, NULL, NULL))
                        throw new Exception("SetupDiGetDeviceInterfaceDetail - failed");

                    devices.Add(new ThunderscopeDevice() { DevicePath = deviceInterfaceDetail.DevicePath });
                }
            }

            return devices;
        }

        public void Open(ThunderscopeDevice device)
        {
            if (open)
                Close();
            //File.OpenHandle(device.DevicePath, FileMode.Open, FileAccess.ReadWrite, FileShare.Read, FileOptions.None);
            //userWriter = new BinaryWriter(File.Open($"{device.DevicePath}\\{USER_DEVICE_PATH}", FileMode.Open));
            //controllerToHostWriter = new BinaryWriter(File.Open($"{device.DevicePath}\\{C2H_0_DEVICE_PATH}", FileMode.Open));
            //userFile = MemoryMappedFile.CreateFromFile($"{device.DevicePath}\\{USER_DEVICE_PATH}", FileMode.Open);
            //userMap = userFile.CreateViewAccessor(0, 0);
            userFilePointer = Interop.CreateFile($"{device.DevicePath}\\{USER_DEVICE_PATH}", FileAccess.ReadWrite, FileShare.None, NULL, FileMode.Open, FileAttributes.Normal, NULL);
            controllerToHostFilePointer = Interop.CreateFile($"{device.DevicePath}\\{C2H_0_DEVICE_PATH}", FileAccess.ReadWrite, FileShare.None, NULL, FileMode.Open, FileAttributes.Normal, NULL);
            Initialise();
            open = true;
        }

        public void Close()
        {
            if (!open)
                throw new Exception("Thunderscope not open");
            open = false;
        }

        public void Start()
        {
            if (!open)
                throw new Exception("Thunderscope not open");
            if (hardwareState.DatamoverEnabled)
                throw new Exception("Thunderscope already started");
            hardwareState.DatamoverEnabled = true;
            hardwareState.FpgaAdcEnabled = true;
            hardwareState.BufferHead = 0;
            hardwareState.BufferTail = 0;
            ConfigureDatamover(hardwareState);
        }

        public void Stop()
        {
            if (!open)
                throw new Exception("Thunderscope not open");
            if (!hardwareState.DatamoverEnabled)
                throw new Exception("Thunderscope not started");
            hardwareState.DatamoverEnabled = false;
            ConfigureDatamover(hardwareState);
            Thread.Sleep(5);
            hardwareState.FpgaAdcEnabled = false;
            ConfigureDatamover(hardwareState);
        }

        public void Read(ThunderscopeMemory data)     //ThunderscopeMemoryBlock ensures memory is aligned on 4k boundary
        {
            if (!open)
                throw new Exception("Thunderscope not open");
            if (!hardwareState.DatamoverEnabled)
                throw new Exception("Thunderscope not started");

            // Buffer data must be aligned to 4096
            //if (0xFFF & (ptrdiff_t)data)
            //{
            //    throw new Exception("data not aligned to 4096 boundary");
            //}

            ulong length = ThunderscopeMemory.Length;
            // Align length to 4096.
            //length &= ~0xFFFUL;

            UpdateBufferHead();

            ulong dataIndex = 0;
            while (length > 0)
            {
                ulong pages_available = hardwareState.BufferHead - hardwareState.BufferTail;
                if (pages_available == 0)
                {

                    //Thread.Sleep(1);
                    //Thread.Yield();
                    Thread.SpinWait(1000);
                    UpdateBufferHead();
                    continue;
                }
                ulong pages_to_read = length >> 12;
                if (pages_to_read > pages_available) pages_to_read = pages_available;
                ulong buffer_read_pos = hardwareState.BufferTail % hardwareState.RamSizePages;
                if (pages_to_read > hardwareState.RamSizePages - buffer_read_pos) pages_to_read = hardwareState.RamSizePages - buffer_read_pos;
                if (pages_to_read > hardwareState.RamSizePages / 4) pages_to_read = hardwareState.RamSizePages / 4;

                Read(controllerToHostFilePointer, data, dataIndex, buffer_read_pos << 12, pages_to_read << 12);
                //read_handle(ts, ts->c2h0_handle, dataPtr, buffer_read_pos << 12, pages_to_read << 12);

                dataIndex += pages_to_read << 12;
                length -= pages_to_read << 12;

                // Update buffer head and calculate overflow BEFORE
                // updating buffer tail as it is possible
                // that a buffer overflow occured while we were reading.
                UpdateBufferHead();
                hardwareState.BufferTail += pages_to_read;
            }
        }

        private void Initialise()
        {
            Write32(BarRegister.DATAMOVER_REG_OUT, 0);
            hardwareState.BoardEnabled = true;
            ConfigureDatamover(hardwareState);
            ConfigurePLL();
            ConfigureADC();
        }

        [MethodImpl(MethodImplOptions.AggressiveInlining)]
        private uint Read32(BarRegister register)
        {
            Span<byte> bytes = new byte[4];
            Read(userFilePointer, bytes, (ulong)register);
            return BinaryPrimitives.ReadUInt32LittleEndian(bytes);
        }

        private void Write32(BarRegister register, uint value)
        {
            Span<byte> bytes = new byte[4];
            BinaryPrimitives.WriteUInt32LittleEndian(bytes, value);
            Write(userFilePointer, bytes, (ulong)register);
        }

        private void WriteFifo(ReadOnlySpan<byte> data)
        {
            // reset ISR
            Write32(BarRegister.SERIAL_FIFO_ISR_ADDRESS, 0xFFFFFFFFU);
            // read ISR and IER
            Read32(BarRegister.SERIAL_FIFO_ISR_ADDRESS);
            Read32(BarRegister.SERIAL_FIFO_IER_ADDRESS);
            // enable IER
            Write32(BarRegister.SERIAL_FIFO_IER_ADDRESS, 0x0C000000U);
            // Set false TDR
            Write32(BarRegister.SERIAL_FIFO_TDR_ADDRESS, 0x2U);
            // Put data into queue
            for (int i = 0; i < data.Length; i++)
            {
                // TODO: Replace with write32
                Write(userFilePointer, data.Slice(i, 1), (ulong)BarRegister.SERIAL_FIFO_DATA_WRITE_REG);
            }
            // read TDFV (vacancy byte)
            Read32(BarRegister.SERIAL_FIFO_TDFV_ADDRESS);
            // write to TLR (the size of the packet)
            Write32(BarRegister.SERIAL_FIFO_TLR_ADDRESS, (uint)(data.Length * 4));
            // read ISR for a done value
            while ((Read32(BarRegister.SERIAL_FIFO_ISR_ADDRESS) >> 24) != 8)
            {
                Thread.Sleep(1);
            }
            // reset ISR
            Write32(BarRegister.SERIAL_FIFO_ISR_ADDRESS, 0xFFFFFFFFU);
            // read TDFV
            Read32(BarRegister.SERIAL_FIFO_TDFV_ADDRESS);
        }

        private void ConfigureDatamover(ThunderscopeHardwareState state)
        {
            uint datamoverRegister = 0;
            if (state.BoardEnabled) datamoverRegister |= 0x01000000;
            if (state.PllEnabled) datamoverRegister |= 0x02000000;
            if (state.FrontEndEnabled) datamoverRegister |= 0x04000000;
            if (state.DatamoverEnabled) datamoverRegister |= 0x1;
            if (state.FpgaAdcEnabled) datamoverRegister |= 0x2;

            int numChannelsEnabled = 0;
            for (int channel = 0; channel < 4; channel++)
            {
                if (Channels[channel].Enabled == true)
                {
                    numChannelsEnabled++;
                }
                if (Channels[channel].VoltsDiv <= 100)
                {
                    datamoverRegister |= (uint)1 << (16 + channel);
                }
                if (Channels[channel].Coupling == ThunderscopeCoupling.DC)
                {
                    datamoverRegister |= (uint)1 << (20 + channel);
                }
            }
            switch (numChannelsEnabled)
            {
                case 0:
                case 1: break; // do nothing
                case 2: datamoverRegister |= 0x10; break;
                default: datamoverRegister |= 0x30; break;
            }
            Write32(BarRegister.DATAMOVER_REG_OUT, datamoverRegister);
        }

        private void ConfigurePLL()
        {
            // These were provided by the chip configuration tool.
            ushort[] config_clk_gen = {
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
            for (int i = 0; i < config_clk_gen.Length / 2; i++)
            {
                SetPllRegister((byte)(config_clk_gen[i] >> 8), (byte)(config_clk_gen[i] & 0xff));
            }

            hardwareState.PllEnabled = true;
            ConfigureDatamover(hardwareState);
        }

        const byte I2C_BYTE_PLL = 0xFF;
        const byte CLOCK_GEN_I2C_ADDRESS_WRITE = 0b10110000;
        private void SetPllRegister(byte register, byte value)
        {
            Span<byte> fifo = new byte[4];
            fifo[0] = I2C_BYTE_PLL;
            fifo[1] = CLOCK_GEN_I2C_ADDRESS_WRITE;
            fifo[2] = register;
            fifo[3] = value;
            WriteFifo(fifo);
        }

        private void ConfigureADC()
        {
            // Reset ADC
            SetAdcRegister(AdcRegister.THUNDERSCOPEHW_ADC_REG_RESET, 0x0001);
            // Power Down ADC
            AdcPower(false);
            // Invert channels
            SetAdcRegister(AdcRegister.THUNDERSCOPEHW_ADC_REG_INVERT, 0x007F);
            // Adjust full scale value
            SetAdcRegister(AdcRegister.THUNDERSCOPEHW_ADC_REG_FS_CNTRL, 0x0010);
            // Course Gain On
            SetAdcRegister(AdcRegister.THUNDERSCOPEHW_ADC_REG_GAIN_CFG, 0x000);
            // Course Gain 4-CH set
            SetAdcRegister(AdcRegister.THUNDERSCOPEHW_ADC_REG_QUAD_GAIN, 0x9999);
            // Course Gain 1-CH & 2-CH set
            SetAdcRegister(AdcRegister.THUNDERSCOPEHW_ADC_REG_DUAL_GAIN, 0x0A99);
            //Set adc into active mode
            //currentBoardState.num_ch_on++;
            //currentBoardState.ch_is_on[0] = true;
            //_FIFO_WRITE(user_handle,currentBoardState.adc_chnum_clkdiv,sizeof(currentBoardState.adc_chnum_clkdiv));

            AdcPower(true);
            //_FIFO_WRITE(user_handle,currentBoardState.adc_in_sel_12,sizeof(currentBoardState.adc_in_sel_12));
            //_FIFO_WRITE(user_handle,currentBoardState.adc_in_sel_34,sizeof(currentBoardState.adc_in_sel_34));

            hardwareState.FrontEndEnabled = true;
            ConfigureDatamover(hardwareState);
        }

        const byte SPI_BYTE_ADC = 0xFD;
        private void SetAdcRegister(AdcRegister register, ushort value)
        {
            Span<byte> fifo = new byte[4];
            fifo[0] = SPI_BYTE_ADC;
            fifo[1] = (byte)register;
            fifo[2] = (byte)(value >> 8);
            fifo[3] = (byte)(value & 0xff);
            WriteFifo(fifo);
        }

        private void AdcPower(bool on)
        {
            SetAdcRegister(AdcRegister.THUNDERSCOPEHW_ADC_REG_POWER, (ushort)(on ? 0x0000 : 0x0200));
        }

        public void EnableChannel(int channel)
        {
            Channels[channel].Enabled = true;
            ConfigureChannel(channel);
        }

        private void ConfigureChannel(int channel)
        {
            ConfigureChannels();
            SetDAC(channel);
            ConfigureDatamover(hardwareState);
            SetPga(channel);
        }

        private void ConfigureChannels()
        {
            byte[] on_channels = new byte[4];
            int num_channels_on = 0;
            byte clkdiv = 0;

            for (int i = 0; i < 4; i++)
            {
                if (Channels[i].Enabled)
                {
                    on_channels[num_channels_on++] = (byte)i;
                }
            }

            switch (num_channels_on)
            {
                case 0:
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

            AdcPower(false);
            SetAdcRegister(AdcRegister.THUNDERSCOPEHW_ADC_REG_CHNUM_CLKDIV, (ushort)((clkdiv << 8) | num_channels_on));
            AdcPower(true);
            SetAdcRegister(AdcRegister.THUNDERSCOPEHW_ADC_REG_INSEL12, (ushort)((2 << on_channels[0]) | (512 << on_channels[1])));
            SetAdcRegister(AdcRegister.THUNDERSCOPEHW_ADC_REG_INSEL34, (ushort)((2 << on_channels[2]) | (512 << on_channels[3])));

            ThunderscopeHardwareState temporaryState = hardwareState;
            temporaryState.DatamoverEnabled = false;
            temporaryState.FpgaAdcEnabled = false;
            ConfigureDatamover(temporaryState);

            Thread.Sleep(5);

            if (num_channels_on != 0)
                ConfigureDatamover(hardwareState);
        }

        private void SetDAC(int channel)
        {
            // value is 12-bit
            // Is this right?? Or is it rounding wrong?
            uint dac_value = (uint)Math.Round((Channels[channel].VoltsOffset + 0.5) * 4095);
            if (dac_value < 0)
                throw new Exception("DAC offset too low");
            if (dac_value > 0xFFF)
                throw new Exception("DAC offset too high");

            Span<byte> fifo = new byte[5];
            fifo[0] = 0xFF;  // I2C
            fifo[1] = 0xC2;  // DAC?
            fifo[2] = (byte)(0x40 + (channel << 1));
            fifo[3] = (byte)((dac_value >> 8) & 0xF);
            fifo[4] = (byte)(dac_value & 0xFF);
            WriteFifo(fifo);
        }

        private void SetPga(int channel)
        {
            Span<byte> fifo = new byte[4];
            fifo[0] = (byte)(0xFB - channel);  // SPI chip enable
            fifo[1] = 0;
            fifo[2] = 0x04;  // ??

            int vdiv = Channels[channel].VoltsDiv;
            if (vdiv > 100)
            {
                // Attenuator relay on, handled by
                // thunderscopehw_set_datamover_reg.
                vdiv /= 100;
            }

            switch (vdiv)
            {
                case 100: fifo[3] = 0x0A; break;
                case 50: fifo[3] = 0x07; break;
                case 20: fifo[3] = 0x03; break;
                case 10: fifo[3] = 0x1A; break;
                case 5: fifo[3] = 0x17; break;
                case 2: fifo[3] = 0x13; break;
                case 1: fifo[3] = 0x10; break;
                default: throw new Exception("Invalid volts per div");
            }
            switch (Channels[channel].Bandwidth)
            {
                case 20: fifo[3] |= 0x40; break;
                case 100: fifo[3] |= 0x80; break;
                case 200: fifo[3] |= 0xC0; break;
                case 350: /* 0 */ break;
                default: throw new Exception("Invalid bandwidth");
            }
            WriteFifo(fifo);
        }

        [MethodImpl(MethodImplOptions.AggressiveInlining | MethodImplOptions.AggressiveOptimization)]
        private void UpdateBufferHead()
        {
            // 1 page = 4k
            uint transfer_counter = Read32(BarRegister.DATAMOVER_TRANSFER_COUNTER);
            uint error_code = transfer_counter >> 30;
            if ((error_code & 2) > 0)
                throw new Exception("Thunderscope - datamover error");

            if ((error_code & 1) > 0)
                throw new Exception("Thunderscope - FIFO overflow");

            uint overflow_cycles = (transfer_counter >> 16) & 0x3FFF;
            if (overflow_cycles > 0)
                throw new Exception("Thunderscope - pipeline overflow");

            uint pages_moved = transfer_counter & 0xFFFF;
            ulong buffer_head = (hardwareState.BufferHead & ~0xFFFFUL) | pages_moved;
            if (buffer_head < hardwareState.BufferHead)
                buffer_head += 0x10000UL;

            hardwareState.BufferHead = buffer_head;

            ulong pages_available = hardwareState.BufferHead - hardwareState.BufferTail;
            if (pages_available >= hardwareState.RamSizePages)
                throw new Exception("Thunderscope - memory full");
        }

        private void Write(IntPtr fileHandle, ReadOnlySpan<byte> data, ulong addr)
        {
            if (!Interop.SetFilePointerEx(fileHandle, addr, NULL, FILE_BEGIN))
                throw new Exception($"SetFilePointerEx - failed ({Marshal.GetLastWin32Error()})");

            // write from buffer to device
            //DWORD bytesWritten;
            unsafe
            {
                fixed (byte* dataPtr = data)
                {
                    if (!Interop.WriteFile(fileHandle, dataPtr, (uint)data.Length, out uint bytesWritten, NULL))
                        throw new Exception($"WriteFile - failed ({Marshal.GetLastWin32Error()})");
                }
            }
        }

        [MethodImpl(MethodImplOptions.AggressiveInlining | MethodImplOptions.AggressiveOptimization)]
        private void Read(IntPtr fileHandle, Span<byte> data, ulong addr)
        {
            if (!Interop.SetFilePointerEx(fileHandle, addr, NULL, FILE_BEGIN))
                throw new Exception($"SetFilePointerEx - failed ({Marshal.GetLastWin32Error()})");

            unsafe
            {
                fixed (byte* dataPtr = data)
                {
                    if (!Interop.ReadFile(fileHandle, dataPtr, (uint)data.Length, out uint bytesRead, NULL))
                        throw new Exception($"ReadFile - failed ({Marshal.GetLastWin32Error()})");
                    if (bytesRead != data.Length)
                        throw new Exception("ReadFile - failed to read all bytes");
                }
            }
        }

        [MethodImpl(MethodImplOptions.AggressiveInlining | MethodImplOptions.AggressiveOptimization)]
        private void Read(IntPtr fileHandle, ThunderscopeMemory data, ulong offset, ulong addr, ulong length)
        {
            if (!Interop.SetFilePointerEx(fileHandle, addr, NULL, FILE_BEGIN))
                throw new Exception($"SetFilePointerEx - failed ({Marshal.GetLastWin32Error()})");
            unsafe
            {
                if (!Interop.ReadFile(fileHandle, data.Pointer + offset, (uint)length, out uint bytesRead, NULL))
                    throw new Exception($"ReadFile - failed ({Marshal.GetLastWin32Error()})");
                if (bytesRead != length)
                    throw new Exception("ReadFile - failed to read all bytes");
            }
        }
    }
}
