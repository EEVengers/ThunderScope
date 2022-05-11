using System;

namespace TS.NET
{
    public interface IInterprocessSemaphoreReleaser : IDisposable
    {
        void Release();
    }
}
