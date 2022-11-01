using System;
using System.Buffers.Binary;
using System.Collections.Generic;
using System.IO.MemoryMappedFiles;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using TS.NET.Interop;

namespace TS.NET.Interop.Linux
{
    internal class ThunderscopeInteropLinux : ThunderscopeInterop
    {
        private const string USER_DEVICE_PATH = "user";
        private const string C2H_0_DEVICE_PATH = "c2h_0";

        public static List<ThunderscopeDevice> PlatIterateDevices()
        {
            List<ThunderscopeDevice> devices = new();

            devices.Add(new ThunderscopeDevice(DevicePath: "/dev/xdma0"));

            return devices;
        }

        private Int32 userFilePointer;
        private Int32 controllerToHostFilePointer;

        public ThunderscopeInteropLinux(ThunderscopeDevice device)
        {
            userFilePointer = Interop.open($"{device.DevicePath}_{USER_DEVICE_PATH}", (Int32)OpenFlags.O_RDWR);

            if (userFilePointer < 0)
                throw new Exception($"open '{device.DevicePath}_{USER_DEVICE_PATH}' failed -> ret={userFilePointer} / errno={Marshal.GetLastWin32Error()}");

            controllerToHostFilePointer = Interop.open($"{device.DevicePath}_{C2H_0_DEVICE_PATH}", (Int32)OpenFlags.O_RDWR);

            if (controllerToHostFilePointer < 0)
                throw new Exception($"open '{device.DevicePath}_{C2H_0_DEVICE_PATH}' failed -> ret={controllerToHostFilePointer} / errno={Marshal.GetLastWin32Error()}");
        }

        public override void WriteUser(ReadOnlySpan<byte> data, ulong addr)
        {
            // write from buffer to device
            //DWORD bytesWritten;
            unsafe
            {
                fixed (byte* dataPtr = data)
                {
                    Int32 bytesWritten = Interop.pwrite(userFilePointer, dataPtr, (Int32)data.Length, (Int32)addr);

                    if (bytesWritten != data.Length)
                        throw new Exception($"pwrite user - failed -> toWrite={data.Length}, written={bytesWritten}, errno={Marshal.GetLastWin32Error()}");
                }
            }
        }

        [MethodImpl(MethodImplOptions.AggressiveInlining | MethodImplOptions.AggressiveOptimization)]
        public override void ReadUser(Span<byte> data, ulong addr)
        {
            unsafe
            {
                fixed (byte* dataPtr = data)
                {
                    Int32 bytesRead = Interop.pread(userFilePointer, dataPtr, (Int32)data.Length, (Int32)addr);

                    if (bytesRead != data.Length)
                        throw new Exception($"pread user - failed -> toRead={data.Length}, read={bytesRead}, errno={Marshal.GetLastWin32Error()}");
                }
            }
        }

        [MethodImpl(MethodImplOptions.AggressiveInlining | MethodImplOptions.AggressiveOptimization)]
        public override void ReadC2H(ThunderscopeMemory data, ulong offset, ulong addr, ulong length)
        {
            unsafe
            {
                Int32 bytesRead = Interop.pread(controllerToHostFilePointer, data.Pointer + offset, (Int32)length, (Int32)addr);

                if (bytesRead != (Int32)length)
                    throw new Exception($"pread c2h - failed -> toRead={length}, read={bytesRead}, errno={Marshal.GetLastWin32Error()}");
            }
        }

        public override void Dispose()
        {

        }
    }
}