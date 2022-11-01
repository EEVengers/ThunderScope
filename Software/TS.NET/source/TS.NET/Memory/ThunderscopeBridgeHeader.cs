using System.Runtime.InteropServices;

namespace TS.NET
{
    // Ensure this is blitable (i.e. don't use bool)
    // Pack of 1 = No padding.
    // There might be some benefit later to setting a fixed size (64?) for memory alignment if an aligned memorymappedfile can be created.
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    internal struct ThunderscopeBridgeHeader
    {
        // Version + DataCapacity is enough data for the UI to know how big a memorymappedfile to open
        internal byte Version;              // Allows UI to know which ThunderscopeMemoryBridgeHeader version to use, hence the size of the header.
        internal ulong DataCapacityBytes;   // Maximum size of the data array in bridge. Example: 400M, set from configuration file?

        internal ThunderscopeMemoryAcquiringRegion AcquiringRegion;         // Therefore 'AcquiredRegion' (to be used by UI) is the opposite
        internal ThunderscopeConfiguration Configuration;                   // Read only from UI perspective, UI uses SCPI interface to change configuration
        internal ThunderscopeProcessing Processing;            // Read only from UI perspective, UI displays these values
        internal ThunderscopeMonitoring Monitoring;                         // Read only from UI perspective, UI displays these values
    }

    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct ThunderscopeConfiguration             // Idempotent so that UI doesn't have to store state and removes the possibility of config mismatch with multiple actors changing config (e.g. SCPI and Web UI)
    {
        public AdcChannels AdcChannels;                 // The number of channels enabled on ADC. ADC has input mux, e.g. Channel1.Enabled and Channel4.Enabled could have AdcChannels of Two. Useful for UI to know this, in order to clamp maximum sample rate.
        //[MarshalAs(UnmanagedType.ByValArray, SizeConst = 4)]
        //public ThunderscopeChannel* Channels;         // Commented out as requires unsafe context but maybe switch to it later?
        public ThunderscopeChannel Channel0;
        public ThunderscopeChannel Channel1;
        public ThunderscopeChannel Channel2;
        public ThunderscopeChannel Channel3;

        public ThunderscopeChannel GetChannel(int channel)
        {
            return channel switch
            {
                0 => Channel0,
                1 => Channel1,
                2 => Channel2,
                3 => Channel3,
                _ => throw new ArgumentException("channel out of range")
            };
        }

        public void SetChannel(int channel, ThunderscopeChannel ch)
        {
            switch (channel)
            {
                case 0:
                    Channel0 = ch;
                    break;
                case 1:
                    Channel1 = ch;
                    break;
                case 2:
                    Channel2 = ch;
                    break;
                case 3:
                    Channel3 = ch;
                    break;
                default:
                    throw new ArgumentException("channel out of range");
            }
        }
    }

    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct ThunderscopeProcessing   // Idempotent so that UI doesn't have to store state and removes the possibility of config mismatch with multiple actors changing config (e.g. SCPI and Web UI)
    {
        public int ChannelLength;                       // Example: 4 channels with max length = 100M, can easily be 1k for high update rate. Max: Capacity/4, Min: 1k.
        public HorizontalSumLength HorizontalSumLength;
        public TriggerChannel TriggerChannel;
        public TriggerMode TriggerMode;
        public ThunderscopeChannelDataType ChannelDataType;
    }

    // Monitoring variables that reset when configuration variables change
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct ThunderscopeMonitoring
    {
        public ulong TotalAcquisitions;         // All triggers
        public ulong MissedAcquisitions;        // Triggers that weren't displayed
    }

    public enum ThunderscopeMemoryAcquiringRegion : byte
    {
        RegionA = 1,
        RegionB = 2
    }
}