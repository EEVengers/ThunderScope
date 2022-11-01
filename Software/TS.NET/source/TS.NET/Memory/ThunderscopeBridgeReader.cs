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
        private readonly ulong dataCapacityInBytes;
        private readonly IMemoryFile file;
        private readonly MemoryMappedViewAccessor view;
        private unsafe byte* basePointer;
        private unsafe byte* dataPointer { get; }
        private ThunderscopeBridgeHeader header;
        private bool IsHeaderSet { get { GetHeader(); return header.Version != 0; } }
        private readonly IInterprocessSemaphoreReleaser dataRequestSemaphore;
        private readonly IInterprocessSemaphoreWaiter dataReadySemaphore;
        private bool hasSignaledRequest = false;

        public ReadOnlySpan<byte> AcquiredRegion { get { return GetAcquiredRegion(); } }

        public unsafe ThunderscopeBridgeReader(ThunderscopeBridgeOptions options, ILoggerFactory loggerFactory)
        {
            this.options = options;
            dataCapacityInBytes = options.BridgeCapacityBytes - (uint)sizeof(ThunderscopeBridgeHeader);
            file = RuntimeInformation.IsOSPlatform(OSPlatform.Windows)
                ? new MemoryFileWindows(options)
                : new MemoryFileUnix(options, loggerFactory);

            try
            {
                view = file.MappedFile.CreateViewAccessor(0, 0, MemoryMappedFileAccess.ReadWrite);

                try
                {
                    basePointer = GetPointer();
                    dataPointer = basePointer + sizeof(ThunderscopeBridgeHeader);

                    while (!IsHeaderSet)
                    {
                        Console.WriteLine("Waiting for Thunderscope bridge...");
                        Thread.Sleep(1000);
                    }
                    GetHeader();
                    if (header.DataCapacityBytes != options.DataCapacityBytes)
                        throw new Exception($"Mismatch in data capacity, options: {options.DataCapacityBytes}, bridge: {header.DataCapacityBytes}");
                    dataRequestSemaphore = InterprocessSemaphore.CreateReleaser(options.MemoryName + "DataRequest");
                    dataReadySemaphore = InterprocessSemaphore.CreateWaiter(options.MemoryName + "DataReady");
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

        public ThunderscopeConfiguration Configuration
        {
            get
            {
                GetHeader();
                return header.Configuration;
            }
        }

        public ThunderscopeProcessing Processing
        {
            get
            {
                GetHeader();
                return header.Processing;
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

        public bool RequestAndWaitForData(int millisecondsTimeout)
        {
            if (!hasSignaledRequest)
            {
                // Only signal request once, or we will run up semaphore counter
                dataRequestSemaphore.Release();
                hasSignaledRequest = true;
            }

            bool wasReady = dataReadySemaphore.Wait(millisecondsTimeout);

            if (wasReady)
            {
                // Now that the bridge has tick-tocked, the next request will be 'real'
                // TODO: Should this be a separate method, or part of GetPointer() ?
                hasSignaledRequest = false;
            }

            return wasReady;
        }

        private void GetHeader()
        {
            unsafe { Unsafe.Copy(ref header, basePointer); }
        }

        //private void SetHeader()
        //{
        //    unsafe { Unsafe.Copy(basePointer, ref header); }
        //}

        private unsafe byte* GetPointer()
        {
            byte* ptr = null;
            view.SafeMemoryMappedViewHandle.AcquirePointer(ref ptr);
            if (ptr == null)
                throw new InvalidOperationException("Failed to acquire a pointer to the memory mapped file view.");

            return ptr;
        }

        private unsafe ReadOnlySpan<byte> GetAcquiredRegion()
        {
            int regionLength = (int)dataCapacityInBytes / 2;
            return header.AcquiringRegion switch
            {
                ThunderscopeMemoryAcquiringRegion.RegionA => new ReadOnlySpan<byte>(dataPointer + regionLength, regionLength),        // If acquiring region is Region A, return Region B
                ThunderscopeMemoryAcquiringRegion.RegionB => new ReadOnlySpan<byte>(dataPointer, regionLength),                       // If acquiring region is Region B, return Region A
                _ => throw new InvalidDataException("Enum value not handled, add enum value to switch")
            };
        }
    }
}
