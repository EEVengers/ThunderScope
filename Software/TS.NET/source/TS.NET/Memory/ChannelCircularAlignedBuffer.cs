using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;

namespace TS.NET
{
    public unsafe sealed class ChannelCircularAlignedBuffer
    {
        private readonly byte* buffer;
        private readonly uint capacity;
        private uint tail = 0;
        private ulong totalWritten = 0;

        public ChannelCircularAlignedBuffer(uint capacity)
        {
            this.capacity = capacity;
            buffer = (byte*)NativeMemory.AlignedAlloc(capacity, 4096);
        }

        // https://tooslowexception.com/disposable-ref-structs-in-c-8-0/
        public void Dispose()
        {
            NativeMemory.AlignedFree(buffer);
        }

        //public void Write(ThunderscopeMemory memory)
        //{
        //    if (ThunderscopeMemory.Length > capacity)
        //        throw new Exception("ChannelCircularBuffer too small");

        //    var leftCopy = (capacity - tail) % ThunderscopeMemory.Length;
        //    var rightCopy = ThunderscopeMemory.Length - leftCopy;
        //    if (leftCopy > 0)
        //    {
        //        Buffer.MemoryCopy(memory.Pointer, buffer + tail, capacity - tail, ThunderscopeMemory.Length);
        //        tail = (tail + ThunderscopeMemory.Length) % capacity;
        //    }
        //    if(rightCopy > 0)
        //    {
        //        tail = 0;
        //    }
        //}

        public void Write(ReadOnlySpan<byte> data)
        {
            if (data.Length > capacity)
                throw new Exception($"ChannelCircularBuffer too small to write {data.Length} bytes");

            unsafe
            {
                fixed (byte* dataPtr = data)
                {
                    uint firstCopy = Math.Min((uint)data.Length, capacity - tail);
                    if (firstCopy > 0)
                        Buffer.MemoryCopy(dataPtr, buffer + tail, firstCopy, firstCopy);

                    uint remainingCopy = (uint)data.Length - firstCopy;
                    if (remainingCopy > 0)
                        Buffer.MemoryCopy(dataPtr + firstCopy, buffer, capacity, remainingCopy);
                    tail = (tail + (uint)data.Length) % capacity;
                }
            }

            totalWritten += (ulong)data.Length;
        }

        public void Read(Span<byte> data, uint endOffset)
        {
            if (data.Length > capacity)
                throw new Exception($"ChannelCircularBuffer too small to read {data.Length} bytes");

            unsafe
            {
                fixed (byte* dataPtr = data)
                {
                    uint offsetTail = 0;
                    if (endOffset <= tail)
                        offsetTail = (tail - endOffset);        //Offset tail being the index of the last byte we want
                    else
                        offsetTail = capacity - (endOffset - tail);
                    //uint offsetTail = tail % capacity;
                    uint firstCopyCount = Math.Min((uint)data.Length, offsetTail);
                    if (firstCopyCount > 0)
                        Buffer.MemoryCopy(buffer + (offsetTail - firstCopyCount), dataPtr + (data.Length - firstCopyCount), data.Length, firstCopyCount);

                    uint remainingCopyCount = (uint)data.Length - firstCopyCount;
                    if (remainingCopyCount > 0)
                        Buffer.MemoryCopy(buffer + (capacity - remainingCopyCount), dataPtr, data.Length, remainingCopyCount);
                }
            }
        }
    }
}
