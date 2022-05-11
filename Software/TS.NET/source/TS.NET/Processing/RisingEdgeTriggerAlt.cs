using System;
using System.Runtime.Intrinsics;
using System.Runtime.Intrinsics.X86;
namespace TS.NET;

public class RisingEdgeTriggerAlt
{
    enum TriggerArmState { Unarmed, Armed, InHoldoff }
    private TriggerArmState triggerArmState;
    private byte triggerLevel;
    private byte armLevel;
    private ulong holdoffSamples;
    private ulong holdoffRemaining = 0;

    private Vector256<byte> triggerLevelVector;
    private Vector256<byte> armLevelVector;

    public RisingEdgeTriggerAlt(byte triggerLevel, byte armLevel, ulong holdoffSamples)
    {
        Reset(triggerLevel, armLevel, holdoffSamples);
    }

    public void Reset(byte triggerLevel, byte armLevel, ulong holdoffSamples)
    {
        if (holdoffSamples > 10000000000)
            throw new ArgumentException($"holdoffSamples cannot be greater than 10GS");
        if (holdoffSamples < 1000)
            throw new ArgumentException($"holdoffSamples cannot be less than 1000");

        triggerArmState = TriggerArmState.Unarmed;
        this.triggerLevel = triggerLevel;
        this.armLevel = armLevel;
        this.holdoffSamples = holdoffSamples;
        holdoffRemaining = 0;

        triggerLevelVector = Vector256.Create(triggerLevel);
        armLevelVector = Vector256.Create(armLevel);
    }

    //[MethodImpl(MethodImplOptions.AggressiveInlining)]
    public void ProcessSimd(ReadOnlySpan<byte> input, Span<uint> triggerIndices, out uint triggerCount, Span<uint> holdoffEndIndices, out uint holdoffEndCount)
    {
        uint inputLength = (uint)input.Length;
        uint simdLength = (inputLength - 32);
        triggerCount = 0;
        holdoffEndCount = 0;
        uint i = 0;
        uint popCnt = 0;

        triggerIndices.Clear();
        holdoffEndIndices.Clear();
        unsafe
        {
            fixed (byte* samplesPtr = input)
            {
                while (i < inputLength)
                {
                    switch (triggerArmState)
                    {
                        case TriggerArmState.Unarmed:
                            // Process 32 bytes at a time.  Edit: for this simplified version, just use SIMD to scan then fallback to serial processing
                            for (; i < simdLength; i += 32)
                            {
                                Vector256<byte> inputVector = Avx.LoadVector256(samplesPtr + i);
                                Vector256<byte> resultVector = Avx2.CompareEqual(Avx2.Max(armLevelVector, inputVector), armLevelVector);
                                uint resultCount = (uint)Avx2.MoveMask(resultVector);     // Quick way to do horizontal vector scan of byte[n] > 0
                                if (resultCount != 0)
                                    break;
                            }
                            // Process 1 byte at a time
                            for (; i < inputLength; i++)
                            {
                                if (samplesPtr[(int)i] <= armLevel)
                                {
                                    triggerArmState = TriggerArmState.Armed;
                                    break;
                                }
                            }
                            break;
                        case TriggerArmState.Armed:
                            // Process 32 bytes at a time. Edit: for this simplified version, just use SIMD to scan then fallback to serial processing
                            for (; i < simdLength; i += 32)
                            {
                                Vector256<byte> inputVector = Avx.LoadVector256(samplesPtr + i);
                                Vector256<byte> resultVector = Avx2.CompareEqual(Avx2.Min(triggerLevelVector, inputVector), triggerLevelVector);
                                uint resultCount = (uint)Avx2.MoveMask(resultVector);     // Quick way to do horizontal vector scan of byte[n] > 0
                                if (resultCount != 0)
                                    break;
                            }
                            // Process 1 byte at a time
                            for (; i < inputLength; i++)
                            {
                                if (samplesPtr[(int)i] >= triggerLevel)
                                {
                                    triggerIndices[(int)triggerCount] = i;
                                    triggerCount++;
                                    triggerArmState = TriggerArmState.InHoldoff;
                                    holdoffRemaining = holdoffSamples;
                                    break;
                                }
                            }
                            break;
                        case TriggerArmState.InHoldoff:
                            uint remainingSamples = inputLength - i;
                            if (remainingSamples > holdoffRemaining)
                            {
                                i += (uint)holdoffRemaining;    // Cast is ok because remainingSamples (in the conditional expression) is uint
                                holdoffRemaining = 0;
                            }
                            else
                            {
                                holdoffRemaining -= remainingSamples;
                                i = inputLength;    // Ends the state machine loop
                            }
                            if (holdoffRemaining == 0)
                            {
                                holdoffEndIndices[(int)holdoffEndCount++] = i;
                                triggerArmState = TriggerArmState.Unarmed;
                            }
                            break;
                    }
                }
            }
        }
    }

    // To do:
    // public uint ProcessSimd(ReadOnlySpan<short> <- I16 variant using SIMD
    // public uint Process(ReadOnlySpan<int> input <- I32 variant, probably doesn't need SIMD as it will be small amount of data
}