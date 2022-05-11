using System;
using System.Runtime.InteropServices;
namespace TS.NET;

public unsafe struct ThunderscopeMemory
{
    public const uint Length = 1 << 23;
    public byte* Pointer;
    public Span<byte> Span { get { return new Span<byte>(Pointer, (int)Length); } }

    public ThunderscopeMemory()
    {
        Pointer = (byte*)NativeMemory.AlignedAlloc(Length, 4096);
    }

    // https://tooslowexception.com/disposable-ref-structs-in-c-8-0/
    public void Dispose()
    {
        NativeMemory.AlignedFree(Pointer);
    }
}