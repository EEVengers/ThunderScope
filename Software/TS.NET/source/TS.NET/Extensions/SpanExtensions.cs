using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Intrinsics.X86;
using System.Text;
using System.Threading.Tasks;

namespace TS.NET
{
    public static class SpanExtensions
    {
        public static void ToDoubleArray(this Span<byte> input, double[] output)
        {
            if (input.Length % 4 != 0)
                throw new ArgumentException($"Input length must be multiple of 8");
            if(output.Length != input.Length)
                throw new ArgumentException($"Buffer length must be the same as input length");

            //Fast convert to double array
            int loopIterations = input.Length / 4;
            unsafe
            {
                fixed (byte* inputP = input)
                fixed (double* outputP = output)
                {
                    byte* inputPtr = inputP;
                    double* outputPtr = outputP;
                    for (int i = 0; i < loopIterations; i++)
                    {
                        var intVector = Sse41.ConvertToVector128Int32(inputPtr);            // Convert 4 bytes into 4 ints
                        var doubleVector = Avx.ConvertToVector256Double(intVector);         // Convert 4 ints into 4 doubles
                        Avx.Store(outputPtr, doubleVector);
                        inputPtr += 4;
                        outputPtr += 4;
                    }
                }
            }
        }
    }
}
