using Cloudtoid.Interprocess;
using MessagePack;
using System.Buffers.Binary;
using System.Runtime.InteropServices;
using System.Text;

namespace TS.NET
{
    public static class InterprocessExtensions
    {
        public static bool TryEnqueue<T>(this IPublisher publisher, T dto, Span<byte> buffer)
        {
            var dtoType = typeof(T);
            Span<byte> dtoNameBytes = Encoding.UTF8.GetBytes(dtoType.Name);              // Later improvement: cache type names
            if (dtoNameBytes.Length > 255)
                throw new InvalidDataException("DTO name too long");
            byte dtoNameLength = (byte)dtoNameBytes.Length;
            Span<byte> dtoBytes = MessagePackSerializer.Serialize(dto);
            uint dtoBytesLength = (uint)dtoBytes.Length;

            var totalLength = 1 + dtoNameBytes.Length + 4 + dtoBytes.Length;
            if (buffer.Length < totalLength)
                throw new InvalidDataException("Buffer too small");

            // Now pack data into wire format
            // [dtoNameLength] [dtoName] [dtoLength] [dto]
            // The length fields ensure compatibility with streaming protocols (like TCP)
            Span<byte> message = buffer.Slice(0, totalLength);

            message[0] = dtoNameLength;
            dtoNameBytes.CopyTo(message.Slice(1));
            BinaryPrimitives.WriteUInt32LittleEndian(message.Slice(1 + dtoNameLength), dtoBytesLength);
            dtoBytes.CopyTo(message.Slice(1 + dtoNameLength + 4));

            return publisher.TryEnqueue(message);
        }

        public static bool TryDequeue(this ISubscriber subscriber, Memory<byte> buffer, CancellationToken cancellation, out string dtoName, out ReadOnlyMemory<byte> dtoBytes)
        {
            if (subscriber.TryDequeue(buffer, cancellation, out ReadOnlyMemory<byte> message))
            {
                var dtoNameLength = message.Span[0];
                dtoName = Encoding.UTF8.GetString(message.Span.Slice(1, dtoNameLength));
                var dtoBytesLength = MemoryMarshal.Read<uint>(message.Span.Slice(1 + dtoNameLength, 4));
                dtoBytes = message.Slice(1 + dtoNameLength + 4, (int)dtoBytesLength);
                return true;
            }
            else
            {
                dtoName = default;
                dtoBytes = default;
                return false;
            }
        }

        public static ReadOnlyMemory<byte> Dequeue(this ISubscriber subscriber, Memory<byte> buffer, CancellationToken cancellation, out string dtoName)
        {
            ReadOnlyMemory<byte> message = subscriber.Dequeue(buffer, cancellation);
            var dtoNameLength = message.Span[0];
            dtoName = Encoding.UTF8.GetString(message.Span.Slice(1, dtoNameLength));
            var dtoBytesLength = MemoryMarshal.Read<uint>(message.Span.Slice(1 + dtoNameLength, 4));
            return message.Slice(1 + dtoNameLength + 4, (int)dtoBytesLength);
        }

        public static T Deserialise<T>(this ReadOnlyMemory<byte> dtoBytes)
        {
            return MessagePackSerializer.Deserialize<T>(dtoBytes);
        }
    }
}