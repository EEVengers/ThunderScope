using System;
using System.Collections.Concurrent;

namespace TS.NET
{
    public class BlockingChannel<T>
    {
        public BlockingChannelReader<T> Reader { get; private set; }
        public BlockingChannelWriter<T> Writer { get; private set; }

        private readonly BlockingCollection<T> collection;

        public BlockingChannel()
        {
            collection = new BlockingCollection<T>();
            Reader = new BlockingChannelReader<T>(collection);
            Writer = new BlockingChannelWriter<T>(collection);
        }

        public BlockingChannel(int boundedCapacity)
        {
            collection = new BlockingCollection<T>(boundedCapacity);
            Reader = new BlockingChannelReader<T>(collection);
            Writer = new BlockingChannelWriter<T>(collection);
        }
    }

    public class BlockingChannelReader<T>
    {
        private readonly BlockingCollection<T> collection;
        internal BlockingChannelReader(BlockingCollection<T> collection)
        {
            if (collection is null)
                throw new ArgumentNullException(nameof(collection));
            this.collection = collection;
        }

        public T Read()
        {
            return collection.Take();
        }

        public T Read(CancellationToken cancellationToken)
        {
            return collection.Take(cancellationToken);
        }

        public bool TryRead(out T item)
        {
            return collection.TryTake(out item);
        }

        public bool TryRead(out T item, int millisecondsTimeout)
        {
            return collection.TryTake(out item, millisecondsTimeout);
        }

        public bool TryRead(out T item, CancellationToken cancellationToken)
        {
            return collection.TryTake(out item, -1, cancellationToken);
        }

        public bool TryRead(out T item, int millisecondsTimeout, CancellationToken cancellationToken)
        {
            return collection.TryTake(out item, millisecondsTimeout, cancellationToken);
        }

        public bool TryRead(out T item, TimeSpan timeout)
        {
            return collection.TryTake(out item, timeout);
        }
    }

    public class BlockingChannelWriter<T>
    {
        private readonly BlockingCollection<T> collection;

        internal BlockingChannelWriter(BlockingCollection<T> collection)
        {
            if (collection is null)
                throw new ArgumentNullException(nameof(collection));
            this.collection = collection;
        }

        public void Write(T item)
        {
            collection.Add(item);
        }

        public void Write(T item, CancellationToken cancellationToken)
        {
            collection.Add(item, cancellationToken);
        }

        public bool TryWrite(T item, int millisecondsTimeout, CancellationToken cancellationToken)
        {
            return collection.TryAdd(item, millisecondsTimeout, cancellationToken);
        }

        public bool TryWrite(T item, int millisecondsTimeout)
        {
            return collection.TryAdd(item, millisecondsTimeout);
        }

        public bool TryWrite(T item, TimeSpan timeout)
        {
            return collection.TryAdd(item, timeout);
        }

        public bool TryWrite(T item)
        {
            return collection.TryAdd(item);
        }
    }
}
