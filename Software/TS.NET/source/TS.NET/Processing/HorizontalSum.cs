using System.Numerics;
using System.Runtime.Intrinsics;
using System.Runtime.Intrinsics.X86;

namespace TS.NET;

public static class HorizontalSum
{   
    // Assuming good noise distribution, here are the sum & shifts required to gain ENOB:
    // 9 bit =     4x sum, 1x >>
    // 10 bit =   16x sum, 2x >>
    // 11 bit =   64x sum, 3x >>
    // 12 bit =  256x sum, 4x >>
    // 13 bit = 1024x sum, 5x >>
    // 14 bit = 4096x sum, 6x >>
    // > 128x oversample changes from cvtepu8_epi16 to cvtepu8_epi32 to avoid saturation
    // Notes:
    // https://www.officedaytime.com/simd512e/simdimg/si.php?f=phaddw
    // _mm256_hadd_epi16
    // 256 bits = 4x 64-bit, 8x 32-bit, 16x 16-bit, 32x 8-bit

    /// <summary>
    /// Returns a zero-allocation slice from buffer containing output samples
    /// </summary>
    /// <param name="input"></param>
    /// <param name="buffer">Buffer should be half the length of the input for intermediate calculations</param>
    /// <param name="iterations">Each iteration halves the output length (so sums 2/4/8/16/32/64/128). Max iterations is 7 due to I16 datatype.</param>
    /// <exception cref="ArgumentException"></exception>
    public static Span<short> U8ToI16(ReadOnlySpan<byte> input, Span<short> buffer, byte iterations)
    {
        if (input.Length % 32 != 0)
            throw new ArgumentException("Input length must be multiple of 32");
        if (buffer.Length != input.Length / 2 || buffer.Length % 2 != 0)
            throw new ArgumentException($"Buffer has incorrect length, should be {input.Length / 2}");
        if (iterations < 1 || iterations > 7)
            throw new ArgumentException("iterations must be 1-7, higher could saturate I16");

        unsafe
        {
            fixed (byte* inputP = input)
            fixed (short* outputP = buffer)
            {
                byte* inputPtr = inputP;
                short* outputPtr = outputP;
                int loopIterations = input.Length / 32;
                // First iteration
                for (int i = 0; i < loopIterations; i++)
                {
                    Avx.Store(outputPtr, Avx2.Permute4x64(Avx2.HorizontalAdd(Avx2.ConvertToVector256Int16(inputPtr), Avx2.ConvertToVector256Int16(inputPtr + 16)).AsUInt64(), 0b11011000).AsInt16());
                    //Avx.Store(outputPtr, Avx2.MultiplyAddAdjacent(Avx.LoadVector256(inputPtr), Vector256.Create(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)));
                    inputPtr += 32;
                    outputPtr += 16;
                }
                // Remaining iterations
                for (int n = 1; n < iterations; n++)
                {
                    loopIterations /= 2;
                    short* inputOutputPtr = outputP;
                    outputPtr = outputP;
                    for (int i = 0; i < loopIterations; i++)
                    {
                        Avx.Store(outputPtr, Avx2.Permute4x64(Avx2.HorizontalAdd(Avx.LoadVector256(inputOutputPtr), Avx.LoadVector256(inputOutputPtr + 16)).AsUInt64(), 0b11011000).AsInt16());
                        inputOutputPtr += 32;
                        outputPtr += 16;
                    }
                }
            }
        }
        return buffer.Slice(0, input.Length / (int)Math.Pow(2, iterations));
    }

    public static Span<int> U8ToI32(ReadOnlySpan<byte> input, Span<short> bufferI16, Span<int> bufferI32, byte iterations)
    {
        if (input.Length % 16 != 0)
            throw new ArgumentException("Input length must be multiple of 16");
        if (bufferI16.Length != input.Length / 2 || bufferI16.Length % 2 != 0)
            throw new ArgumentException($"BufferI16 has incorrect length, should be {input.Length / 2}");
        if (bufferI32.Length != input.Length / 2 || bufferI32.Length % 2 != 0)
            throw new ArgumentException($"BufferI32 has incorrect length, should be {input.Length / 2}");
        if (iterations < 1 || iterations > 23)
            throw new ArgumentException("iterations must be 1-23, higher could saturate I32");

        // Special case of iteration 1:
        if (iterations == 1)
        {
            unsafe
            {
                fixed (byte* inputP = input)
                fixed (int* outputP = bufferI32)
                {
                    byte* inputPtr = inputP;
                    int* outputPtr = outputP;
                    int loopIterations = (input.Length / 16) / 1;
                    for (int i = 0; i < loopIterations; i++)
                    {
                        Avx.Store(outputPtr, Avx2.Permute4x64(Avx2.HorizontalAdd(Avx2.ConvertToVector256Int32(inputPtr), Avx2.ConvertToVector256Int32(inputPtr + 8)).AsUInt64(), 0b11011000).AsInt32());
                        inputPtr += 16;
                        outputPtr += 8;
                    }
                }
            }
            return bufferI32;
        }

        // Do iterations 1-7 at I16 depth, leaving final iteration for following logic
        byte iterationsI16 = Math.Min((byte)7, (byte)(iterations - 1));
        var i16Input = U8ToI16(input, bufferI16, iterationsI16);

        // Do a I16 -> I32 iteration
        unsafe
        {
            fixed (short* inputP = i16Input)
            fixed (int* outputP = bufferI32)
            {
                short* inputPtr = inputP;
                int* outputPtr = outputP;
                int loopIterations = i16Input.Length / 16;
                for (int i = 0; i < loopIterations; i++)
                {
                    Avx.Store(outputPtr, Avx2.Permute4x64(Avx2.HorizontalAdd(Avx2.ConvertToVector256Int32(inputPtr), Avx2.ConvertToVector256Int32(inputPtr + 8)).AsUInt64(), 0b11011000).AsInt32());
                    inputPtr += 16;
                    outputPtr += 8;
                }
            }
        }

        // Do any remaining I32 iterations:
        if (iterations > 8)
            throw new NotImplementedException();



        //unsafe
        //{
        //    fixed (byte* inputP = input)
        //    fixed (short* bufferI16P = bufferI16)
        //    fixed (int* outputP = bufferI32)
        //    { 
        //        byte* inputPtr = inputP;
        //        int* outputPtr = outputP;
        //        int loopIterations = input.Length / 16;
        //        // First iteration
        //        for (int i = 0; i < loopIterations; i++)
        //        {
        //            Avx.Store(outputPtr, Avx2.Permute4x64(Avx2.HorizontalAdd(Avx2.ConvertToVector256Int32(inputPtr), Avx2.ConvertToVector256Int32(inputPtr + 8)).AsUInt64(), 0b11011000).AsInt32());
        //            inputPtr += 16;
        //            outputPtr += 8;
        //        }
        //        // Remaining iterations
        //        for (int n = 1; n < iterations; n++)
        //        {
        //            loopIterations /= 2;
        //            int* inputOutputPtr = outputP;
        //            outputPtr = outputP;
        //            for (int i = 0; i < loopIterations; i++)
        //            {
        //                Avx.Store(outputPtr, Avx2.Permute4x64(Avx2.HorizontalAdd(Avx.LoadVector256(inputOutputPtr), Avx.LoadVector256(inputOutputPtr + 8)).AsUInt64(), 0b11011000).AsInt32());
        //                inputOutputPtr += 16;
        //                outputPtr += 8;
        //            }
        //        }
        //    }
        //}
        return bufferI32.Slice(0, input.Length / (int)Math.Pow(2, iterations));
    }
}