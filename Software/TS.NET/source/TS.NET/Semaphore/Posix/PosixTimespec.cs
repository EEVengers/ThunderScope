using System;
using System.Diagnostics.CodeAnalysis;
using System.Runtime.InteropServices;

namespace TS.NET.Semaphore.Posix
{
    [SuppressMessage("StyleCop.CSharp.NamingRules", "SA1307:Accessible fields should begin with upper-case letter", Justification = "Matching the exact names in Linux/MacOS")]
    [SuppressMessage("StyleCop.CSharp.NamingRules", "SA1310:Field names should not contain underscore", Justification = "Matching the exact names in Linux/MacOS")]
    [StructLayout(LayoutKind.Sequential)]
    internal struct PosixTimespec
    {
        public long tv_sec;   // seconds
        public long tv_nsec;  // nanoseconds

        public static implicit operator PosixTimespec(DateTimeOffset dateTime)
        {
            return new PosixTimespec
            {
                tv_sec = dateTime.ToUnixTimeSeconds(),
                tv_nsec = 1000_000 * (dateTime.ToUnixTimeMilliseconds() % 1000)
            };
        }
    }
}