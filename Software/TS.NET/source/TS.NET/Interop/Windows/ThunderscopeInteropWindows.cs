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

namespace TS.NET.Interop.Windows
{
    internal class ThunderscopeInteropWindows : ThunderscopeInterop
    {
        private const string USER_DEVICE_PATH = "user";
        private const string C2H_0_DEVICE_PATH = "c2h_0";
        private const int INVALID_HANDLE_VALUE = -1;
        private const int ERROR_INSUFFICIENT_BUFFER = 122;
        private const int ERROR_NO_MORE_ITEMS = 259;
        private const int FILE_BEGIN = 0;
        private static Guid deviceGuid = new(0x74c7e4a9, 0x6d5d, 0x4a70, 0xbc, 0x0d, 0x20, 0x69, 0x1d, 0xff, 0x9e, 0x9d);
        private static IntPtr NULL = IntPtr.Zero;

        public static List<ThunderscopeDevice> PlatIterateDevices()
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

                    devices.Add(new ThunderscopeDevice(DevicePath: deviceInterfaceDetail.DevicePath));
                }
            }

            return devices;
        }

        private IntPtr userFilePointer;
        private IntPtr controllerToHostFilePointer;

        public ThunderscopeInteropWindows(ThunderscopeDevice device)
        {
            userFilePointer = Interop.CreateFile($"{device.DevicePath}\\{USER_DEVICE_PATH}", FileAccess.ReadWrite, FileShare.None, NULL, FileMode.Open, FileAttributes.Normal, NULL);
            controllerToHostFilePointer = Interop.CreateFile($"{device.DevicePath}\\{C2H_0_DEVICE_PATH}", FileAccess.ReadWrite, FileShare.None, NULL, FileMode.Open, FileAttributes.Normal, NULL);
        }

        public override void WriteUser(ReadOnlySpan<byte> data, ulong addr)
        {
            if (!Interop.SetFilePointerEx(userFilePointer, addr, NULL, FILE_BEGIN))
                throw new Exception($"SetFilePointerEx - failed ({Marshal.GetLastWin32Error()})");

            // write from buffer to device
            //DWORD bytesWritten;
            unsafe
            {
                fixed (byte* dataPtr = data)
                {
                    if (!Interop.WriteFile(userFilePointer, dataPtr, (uint)data.Length, out uint bytesWritten, NULL))
                        throw new Exception($"WriteFile - failed ({Marshal.GetLastWin32Error()})");
                }
            }
        }

        [MethodImpl(MethodImplOptions.AggressiveInlining | MethodImplOptions.AggressiveOptimization)]
        public override void ReadUser(Span<byte> data, ulong addr)
        {
            if (!Interop.SetFilePointerEx(userFilePointer, addr, NULL, FILE_BEGIN))
                throw new Exception($"SetFilePointerEx - failed ({Marshal.GetLastWin32Error()})");

            unsafe
            {
                fixed (byte* dataPtr = data)
                {
                    if (!Interop.ReadFile(userFilePointer, dataPtr, (uint)data.Length, out uint bytesRead, NULL))
                        throw new Exception($"ReadFile - failed ({Marshal.GetLastWin32Error()})");
                    if (bytesRead != data.Length)
                        throw new Exception("ReadFile - failed to read all bytes");
                }
            }
        }

        [MethodImpl(MethodImplOptions.AggressiveInlining | MethodImplOptions.AggressiveOptimization)]
        public override void ReadC2H(ThunderscopeMemory data, ulong offset, ulong addr, ulong length)
        {
            if (!Interop.SetFilePointerEx(controllerToHostFilePointer, addr, NULL, FILE_BEGIN))
                throw new Exception($"SetFilePointerEx - failed ({Marshal.GetLastWin32Error()})");
            unsafe
            {
                if (!Interop.ReadFile(controllerToHostFilePointer, data.Pointer + offset, (uint)length, out uint bytesRead, NULL))
                    throw new Exception($"ReadFile - failed ({Marshal.GetLastWin32Error()})");
                if (bytesRead != length)
                    throw new Exception("ReadFile - failed to read all bytes");
            }
        }

        public override void Dispose()
        {

        }
    }
}