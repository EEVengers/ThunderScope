using System.Runtime.InteropServices;
using System.Runtime.Intrinsics;
using System.Runtime.Intrinsics.X86;
namespace TS.NET;

public class Shuffle
{
    public static void FourChannels(ReadOnlySpan<byte> input, Span<byte> output)
    {
        if (input.Length % 32 != 0)
            throw new ArgumentException($"Input length must be multiple of 32");

        int loopIterations = input.Length / 32;
        Vector256<byte> shuffleMask = Vector256.Create(0, 4, 8, 12, 1, 5, 9, 13, 2, 6, 10, 14, 3, 7, 11, 15, 0, 4, 8, 12, 1, 5, 9, 13, 2, 6, 10, 14, 3, 7, 11, 15).AsByte();
        Vector256<int> permuteMask = Vector256.Create(0, 4, 1, 5, 2, 6, 3, 7);
        Vector256<ulong> storeCh1Mask = Vector256.Create(ulong.MaxValue, 0, 0, 0);
        Vector256<ulong> storeCh2Mask = Vector256.Create(0, ulong.MaxValue, 0, 0);
        Vector256<ulong> storeCh3Mask = Vector256.Create(0, 0, ulong.MaxValue, 0);
        Vector256<ulong> storeCh4Mask = Vector256.Create(0, 0, 0, ulong.MaxValue);
        Span<ulong> outputU64 = MemoryMarshal.Cast<byte, ulong>(output);
        int channelBlockSize = outputU64.Length / 4;
        int ch2Offset = channelBlockSize - 1;
        int ch3Offset = (channelBlockSize * 2) - 2;
        int ch4Offset = (channelBlockSize * 3) - 3;
        unsafe
        {
            fixed (byte* inputP = input)
            fixed (ulong* outputP = outputU64)
            {
                byte* inputPtr = inputP;
                ulong* outputPtr = outputP;
                for (int i = 0; i < loopIterations; i++)
                {
                    Vector256<ulong> shuffledVector = Avx2.PermuteVar8x32(Avx2.Shuffle(Avx.LoadVector256(inputPtr), shuffleMask).AsInt32(), permuteMask).AsUInt64();
                    Avx2.MaskStore(outputPtr, storeCh1Mask, shuffledVector);
                    Avx2.MaskStore(outputPtr + ch2Offset, storeCh2Mask, shuffledVector);
                    Avx2.MaskStore(outputPtr + ch3Offset, storeCh3Mask, shuffledVector);
                    Avx2.MaskStore(outputPtr + ch4Offset, storeCh4Mask, shuffledVector);
                    inputPtr += 32;
                    outputPtr++;
                }
            }
        }
    }

    public static void TwoChannels(ReadOnlySpan<byte> input, Span<byte> output)
    {
        if (input.Length % 32 != 0)
            throw new ArgumentException($"Length of samples ({input.Length}) is not multiple of 32");

        int loopIterations = input.Length / 32;
        Vector256<byte> shuffleMask = Vector256.Create(0, 2, 4, 6, 8, 10, 12, 14, 1, 3, 5, 7, 9, 11, 13, 15, 0, 2, 4, 6, 8, 10, 12, 14, 1, 3, 5, 7, 9, 11, 13, 15).AsByte();
        Vector256<int> permuteMask = Vector256.Create(0, 1, 4, 5, 2, 3, 6, 7);
        Vector256<ulong> storeCh1Mask = Vector256.Create(ulong.MaxValue, ulong.MaxValue, 0, 0);
        Vector256<ulong> storeCh2Mask = Vector256.Create(0, 0, ulong.MaxValue, ulong.MaxValue);
        Span<ulong> outputU64 = MemoryMarshal.Cast<byte, ulong>(output);
        int channelBlockSize = outputU64.Length / 2;
        int ch2Offset = channelBlockSize - 2;
        unsafe
        {
            fixed (byte* inputP = input)
            fixed (ulong* outputP = outputU64)
            {
                byte* inputPtr = inputP;
                ulong* outputPtr = outputP;
                for (int i = 0; i < loopIterations; i++)
                {
                    Vector256<ulong> shuffledVector = Avx2.PermuteVar8x32(Avx2.Shuffle(Avx.LoadVector256(inputPtr), shuffleMask).AsInt32(), permuteMask).AsUInt64();
                    Avx2.MaskStore(outputPtr, storeCh1Mask, shuffledVector);
                    Avx2.MaskStore(outputPtr + ch2Offset, storeCh2Mask, shuffledVector);
                    inputPtr += 32;
                    outputPtr += 2;
                }
            }
        }
    }
}