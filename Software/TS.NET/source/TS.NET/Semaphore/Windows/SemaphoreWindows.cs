using SysSemaphore = System.Threading.Semaphore;

namespace TS.NET.Semaphore.Windows
{
    // just a wrapper over the Windows named semaphore
    internal sealed class SemaphoreWindows : IInterprocessSemaphoreWaiter, IInterprocessSemaphoreReleaser
    {
        private const string HandleNamePrefix = @"Global\TS.NET.";
        private readonly SysSemaphore handle;

        internal SemaphoreWindows(string name)
        {
            handle = new SysSemaphore(0, int.MaxValue, HandleNamePrefix + name);
        }

        public void Dispose()
            => handle.Dispose();

        public void Release()
            => handle.Release();

        public bool Wait(int millisecondsTimeout)
            => handle.WaitOne(millisecondsTimeout);
    }
}