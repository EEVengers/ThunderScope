using TS.NET.Memory;

namespace TS.NET
{
    public sealed class ThunderscopeBridgeOptions
    {
        public string MemoryName { get; }
        public string Path { get; }
        public ulong BridgeCapacityBytes { get; }
        public ulong DataCapacityBytes { get; }

        public ThunderscopeBridgeOptions(string memoryName, ulong dataCapacityBytes)
            : this(memoryName, System.IO.Path.GetTempPath(), dataCapacityBytes) { }

        public unsafe ThunderscopeBridgeOptions(string memoryName, string path, ulong dataCapacityBytes)
        {
            if(string.IsNullOrWhiteSpace(memoryName))
                throw new ArgumentNullException(nameof(memoryName));
            if (string.IsNullOrWhiteSpace(path))
                throw new ArgumentNullException(nameof(path));

            MemoryName = memoryName;
            Path = path;
            DataCapacityBytes = dataCapacityBytes * 2;      // *2 as there are 2 regions used in tick-tock fashion
            BridgeCapacityBytes = (ulong)sizeof(ThunderscopeBridgeHeader) + DataCapacityBytes;
        }
    }
}
