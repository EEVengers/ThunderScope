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
    // Not thread safe
    public class ThunderscopeBridgeWriter : IDisposable
    {
        private readonly ThunderscopeBridgeOptions options;
        private readonly ulong dataCapacityInBytes;
        private readonly IMemoryFile file;
        private readonly MemoryMappedViewAccessor view;
        private unsafe byte* basePointer;
        private unsafe byte* dataPointer { get; }
        private ThunderscopeBridgeHeader header;
        private readonly IInterprocessSemaphoreWaiter dataRequestSemaphore;
        private readonly IInterprocessSemaphoreReleaser dataReadySemaphore;
        private bool dataRequested = false;
        private bool acquiringRegionFilled = false;

        public Span<byte> AcquiringRegion { get { return GetAcquiringRegion(); } }
        public ThunderscopeMonitoring Monitoring { get { return header.Monitoring; } }

        public unsafe ThunderscopeBridgeWriter(ThunderscopeBridgeOptions options, ILoggerFactory loggerFactory)
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

                    // Writer sets initial state of header
                    header.AcquiringRegion = ThunderscopeMemoryAcquiringRegion.RegionA;
                    header.Version = 1;
                    header.DataCapacityBytes = dataCapacityInBytes;
                    SetHeader();
                    dataRequestSemaphore = InterprocessSemaphore.CreateWaiter(options.MemoryName + "DataRequest");
                    dataReadySemaphore = InterprocessSemaphore.CreateReleaser(options.MemoryName + "DataReady");
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
            set
            {
                // This is a shallow copy, but considering the struct should be 100% blitable (i.e. no reference types), this is effectively a full copy
                header.Configuration = value;
                SetHeader();
            }
        }

        public ThunderscopeProcessing Processing
        {
            set
            {
                // This is a shallow copy, but considering the struct should be 100% blitable (i.e. no reference types), this is effectively a full copy
                header.Processing = value;
                SetHeader();
            }
        }

        public void MonitoringReset()
        {
            header.Monitoring.TotalAcquisitions = 0;
            header.Monitoring.MissedAcquisitions = 0;
            SetHeader();
        }

        public void SwitchRegionIfNeeded()
        {
            if (!dataRequested)
                dataRequested = dataRequestSemaphore.Wait(0);       // Only wait on the semaphore once and cache the result, clearing when needed later
            if (dataRequested && acquiringRegionFilled)             // UI has requested data and there is data available to be read...
            {
                dataRequested = false;
                acquiringRegionFilled = false;
                header.AcquiringRegion = header.AcquiringRegion switch
                {
                    ThunderscopeMemoryAcquiringRegion.RegionA => ThunderscopeMemoryAcquiringRegion.RegionB,
                    ThunderscopeMemoryAcquiringRegion.RegionB => ThunderscopeMemoryAcquiringRegion.RegionA,
                    _ => throw new InvalidDataException("Enum value not handled, add enum value to switch")
                };
                SetHeader();
                // Console.WriteLine("[BW] SwitchRegionIfNeeded -> switching!");
                dataReadySemaphore.Release();        // Allow UI to use the acquired region
            }
            else
            {
                // Console.WriteLine("[BW] SwitchRegionIfNeeded -> NOT switching");
            }
        }

        public void DataWritten()
        {
            header.Monitoring.TotalAcquisitions++;
            if (acquiringRegionFilled)
                header.Monitoring.MissedAcquisitions++;
            acquiringRegionFilled = true;
            SetHeader();
        }

        //private void GetHeader()
        //{
        //    unsafe { Unsafe.Copy(ref header, basePointer); }
        //}

        private void SetHeader()
        {
            unsafe { Unsafe.Copy(basePointer, ref header); }
        }

        private unsafe byte* GetPointer()
        {
            byte* ptr = null;
            view.SafeMemoryMappedViewHandle.AcquirePointer(ref ptr);
            if (ptr == null)
                throw new InvalidOperationException("Failed to acquire a pointer to the memory mapped file view.");

            return ptr;
        }

        private unsafe Span<byte> GetAcquiringRegion()
        {
            int regionLength = (int)dataCapacityInBytes / 2;
            return header.AcquiringRegion switch
            {
                ThunderscopeMemoryAcquiringRegion.RegionA => new Span<byte>(dataPointer, regionLength),
                ThunderscopeMemoryAcquiringRegion.RegionB => new Span<byte>(dataPointer + regionLength, regionLength),
                _ => throw new InvalidDataException("Enum value not handled, add enum value to switch")
            };
        }
    }
}
