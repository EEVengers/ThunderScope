using System;
using System.Runtime.Intrinsics.X86;

namespace TS.NET
{
    public static class PointerExtensions
    {
        //public unsafe static void ExtendToDouble(byte* input, uint inputLength, double[] output)
        //{
        //    if (inputLength % 4 != 0)
        //        throw new ArgumentException($"Input length must be multiple of 4");
        //    if (output.Length != inputLength)
        //        throw new ArgumentException($"Buffer length must be the same as input length");

        //    //Fast convert to double array
        //    uint loopIterations = inputLength / 4;
        //    fixed (double* outputP = output)
        //    {
        //        byte* inputPtr = input;
        //        double* outputPtr = outputP;
        //        for (int i = 0; i < loopIterations; i++)
        //        {
        //            var intVector = Sse41.ConvertToVector128Int32(inputPtr);            // Convert 4 bytes into 4 ints
        //            var doubleVector = Avx.ConvertToVector256Double(intVector);         // Convert 4 ints into 4 doubles
        //            Avx.Store(outputPtr, doubleVector);
        //            inputPtr += 4;
        //            outputPtr += 4;
        //        }
        //    }
        //}
    }
}
