using System;

namespace TS.NET
{
    public interface IInterprocessSemaphoreWaiter : IDisposable
    {
        bool Wait(int millisecondsTimeout);
    }
}
