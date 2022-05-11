// https://github.com/cloudtoid/interprocess
using System;
using System.IO.MemoryMappedFiles;
using System.Runtime.InteropServices;
using TS.NET.Memory.Unix;
using TS.NET.Memory.Windows;
using Microsoft.Extensions.Logging;
using TS.NET.Memory;
using System.Runtime.CompilerServices;

namespace TS.NET
{
    // This is a shared memory-mapped file between processes, with only a single writer and a single reader with a header struct
    public class ThunderscopeBridgeWriter : IDisposable
    {
        private readonly ThunderscopeBridgeOptions options;
        private readonly ulong dataCapacityBytes;
        private readonly IMemoryFile file;
        private readonly MemoryMappedViewAccessor view;
        private unsafe byte* basePointer;
        private unsafe byte* dataPointer { get; }
        private ThunderscopeBridgeHeader header;

        public Span<byte> Span { get { unsafe { return new Span<byte>(dataPointer, (int)dataCapacityBytes); } } }

        public unsafe ThunderscopeBridgeWriter(ThunderscopeBridgeOptions options, ILoggerFactory loggerFactory)
        {
            this.options = options;
            dataCapacityBytes = options.BridgeCapacityBytes - (uint)sizeof(ThunderscopeBridgeHeader);
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

                    // Writer sets initial state of header
                    header.State = ThunderscopeMemoryBridgeState.Empty;
                    header.Version = 1;
                    header.DataCapacityBytes = dataCapacityBytes;
                    SetHeader();
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

        public IInterprocessSemaphoreReleaser GetWriterSemaphore()
        {
            return InterprocessSemaphore.CreateReleaser(options.MemoryName);
        }

        public ThunderscopeConfiguration Configuration
        {
            set
            {
                // This is a shallow copy, but considering the struct should be 100% blitable (i.e. no reference types), this is effectively a full copy
                header.Configuration = value;
                SetHeader();
            }
        }

        public ThunderscopeMonitoring Monitoring
        {
            set
            {
                // This is a shallow copy, but considering the struct should be 100% blitable (i.e. no reference types), this is effectively a full copy
                header.Monitoring = value;
                SetHeader();
            }
        }

        public bool IsReadyToWrite
        {
            get
            {
                GetHeader();
                return header.State == ThunderscopeMemoryBridgeState.Empty;
            }
        }

        public void DataWritten()
        {
            unsafe
            {
                header.State = ThunderscopeMemoryBridgeState.Full;
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
