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

        internal ThunderscopeMemoryBridgeState State;
        internal ThunderscopeConfiguration Configuration;
        internal ThunderscopeMonitoring Monitoring;
    }

    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct ThunderscopeConfiguration
    {
        public Channels Channels;
        public int ChannelLength;         // Example: 4 channels with max length = 100M, can easily be 1k for high update rate. Max: Capacity/4, Min: 1k.
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

    public enum ThunderscopeMemoryBridgeState : byte
    {
        Empty = 1,      // Writing is allowed
        Full = 2,       // Writing is blocked, waiting for reader to set back to Unset
    }
}