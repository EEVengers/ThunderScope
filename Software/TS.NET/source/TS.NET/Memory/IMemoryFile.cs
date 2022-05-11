// https://github.com/cloudtoid/interprocess
using System;
using System.IO.MemoryMappedFiles;

namespace TS.NET
{
    internal interface IMemoryFile : IDisposable
    {
        MemoryMappedFile MappedFile { get; }
    }
}
