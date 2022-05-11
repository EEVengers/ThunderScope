using Microsoft.Extensions.Logging;
using System;
using System.IO.MemoryMappedFiles;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using TS.NET.Memory.Unix;
using TS.NET.Memory.Windows;

namespace TS.NET
{
    // This is a shared memory-mapped file between processes, with only a single writer and a single reader with a header struct
    public class ThunderscopeBridgeReader : IDisposable
    {
        private readonly ThunderscopeBridgeOptions options;
        private readonly ulong dataBytesCapacity;
        private readonly IMemoryFile file;
        private readonly MemoryMappedViewAccessor view;
        private unsafe byte* basePointer;
        private unsafe byte* dataPointer { get; }
        private ThunderscopeBridgeHeader header;

        public IntPtr DataPointer { get { unsafe { return (IntPtr)dataPointer; } } }
        public Span<byte> Span { get { unsafe { return new Span<byte>(dataPointer, (int)dataBytesCapacity); } } }
        private bool IsHeaderSet { get { GetHeader(); return header.Version != 0; } }

        public unsafe ThunderscopeBridgeReader(ThunderscopeBridgeOptions options, ILoggerFactory loggerFactory)
        {
            this.options = options;
            dataBytesCapacity = options.BridgeCapacityBytes - (uint)sizeof(ThunderscopeBridgeHeader);
            file = RuntimeInformation.IsOSPlatform(OSPlatform.Windows)
                ? new MemoryFileWindows(options)
                : new MemoryFileUnix(options, loggerFactory);

            try
            {
                view = file.MappedFile.CreateViewAccessor(0, 0, MemoryMappedFileAccess.ReadWrite);

                try
                {
                    basePointer = AcquirePointer();
                    dataPointer = basePointer + sizeof(ThunderscopeBridgeHeader);

                    while (!IsHeaderSet)
                    {
                        Console.WriteLine("Waiting for Thunderscope bridge...");
                        Thread.Sleep(1000);
                    }
                    GetHeader();
                    if (header.DataCapacityBytes != options.DataCapacityBytes)
                        throw new Exception($"Mismatch in data capacity, options: {options.DataCapacityBytes}, bridge: {header.DataCapacityBytes}");
                }
                catch
                {
                    view.Dispose();
                    throw;
                }
            }
            catch
            {
                file.Dispose();
                throw;
            }
        }

        public void Dispose()
        {
            view.SafeMemoryMappedViewHandle.ReleasePointer();
            view.Flush();
            view.Dispose();
            file.Dispose();
        }

        public IInterprocessSemaphoreWaiter GetReaderSemaphore()
        {
            return InterprocessSemaphore.CreateWaiter(options.MemoryName);
        }

        public ThunderscopeConfiguration Configuration
        {
            get
            {
                GetHeader();
                return header.Configuration;
            }
        }

        public ThunderscopeMonitoring Monitoring
        {
            get
            {
                GetHeader();
                return header.Monitoring;
            }
        }

        public bool IsReadyToRead
        {
            get
            {
                GetHeader();
                return header.State == ThunderscopeMemoryBridgeState.Full;
            }
        }

        public void DataRead()
        {
            unsafe
            {
                header.State = ThunderscopeMemoryBridgeState.Empty;
                SetHeader();
            }
        }

        private void GetHeader()
        {
            unsafe { Unsafe.Copy(ref header, basePointer); }
        }

        private void SetHeader()
        {
            unsafe { Unsafe.Copy(basePointer, ref header); }
        }

        private unsafe byte* AcquirePointer()
        {
            byte* ptr = null;
            view.SafeMemoryMappedViewHandle.AcquirePointer(ref ptr);
            if (ptr == null)
                throw new InvalidOperationException("Failed to acquire a pointer to the memory mapped file view.");

            return ptr;
        }
    }
}
