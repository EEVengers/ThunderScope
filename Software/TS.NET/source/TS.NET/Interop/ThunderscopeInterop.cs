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
using TS.NET.Interop.Windows;
using TS.NET.Interop.Linux;

namespace TS.NET.Interop
{
    public abstract class ThunderscopeInterop : IDisposable
    {
        public static List<ThunderscopeDevice> IterateDevices() {
            return RuntimeInformation.IsOSPlatform(OSPlatform.Windows) ?
                ThunderscopeInteropWindows.PlatIterateDevices() : ThunderscopeInteropLinux.PlatIterateDevices();
        }

        public static ThunderscopeInterop CreateInterop(ThunderscopeDevice dev) {
            return RuntimeInformation.IsOSPlatform(OSPlatform.Windows) ?
                new ThunderscopeInteropWindows(dev) : new ThunderscopeInteropLinux(dev);
        }

        public abstract void Dispose();

        public abstract void WriteUser(ReadOnlySpan<byte> data, ulong addr);

        public abstract void ReadUser(Span<byte> data, ulong addr);

        public abstract void ReadC2H(ThunderscopeMemory data, ulong offset, ulong addr, ulong length);
    }
}
