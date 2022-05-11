// https://github.com/cloudtoid/interprocess
using System.IO;
using System.IO.MemoryMappedFiles;

namespace TS.NET.Memory.Windows
{
    internal sealed class MemoryFileWindows : IMemoryFile
    {
        private const string MapNamePrefix = "TS_NET_";

        internal MemoryFileWindows(ThunderscopeBridgeOptions options)
        {
#if NET5_0 || NET6_0
            if (!System.OperatingSystem.IsWindows())
                throw new System.PlatformNotSupportedException();
#endif
            MappedFile = MemoryMappedFile.CreateOrOpen(
                mapName: MapNamePrefix + options.MemoryName,
                (long)options.BridgeCapacityBytes,
                MemoryMappedFileAccess.ReadWrite,
                MemoryMappedFileOptions.None,
                HandleInheritability.None);
        }

        public MemoryMappedFile MappedFile { get; }

        public void Dispose()
            => MappedFile.Dispose();
    }
}
