using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
// [assembly: DisableRuntimeMarshalling]    // Coming in .NET 7 with a source analyzer. This will guarantee interop has zero performance penalty.
namespace TS.NET.Interop.Linux
{
	[Flags]
    internal enum OpenFlags : uint
    {
        O_RDONLY = 0,
        O_WRONLY = 1,
        O_RDWR   = 2,
    }

    internal static class Interop
    {
        [DllImport("libc.so.6", CharSet = CharSet.Unicode, SetLastError = true, ExactSpelling = true)]
        public static extern Int32 open(
            [MarshalAs(UnmanagedType.LPStr)] string pathname,
            Int32 flags);

		[DllImport("libc.so.6", CharSet = CharSet.Unicode, SetLastError = true, ExactSpelling = true)]
        public static unsafe extern Int32 pread(
            Int32 fildes,
            byte* buf,
            Int32 nbyte,
            Int32 offset);

        [DllImport("libc.so.6", CharSet = CharSet.Unicode, SetLastError = true, ExactSpelling = true)]
        public static unsafe extern Int32 pwrite(
            Int32 fildes,
            byte* buf,
            Int32 nbyte,
            Int32 offset);
    }
}
