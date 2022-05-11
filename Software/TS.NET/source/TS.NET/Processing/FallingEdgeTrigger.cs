using System;
using System.Runtime.Intrinsics;
using System.Runtime.Intrinsics.X86;
namespace TS.NET;

public class FallingEdgeTrigger
{
    enum TriggerArmState { Armed, ArmedInHoldoff, Unarmed, UnarmedInHoldoff }
    private TriggerArmState triggerArmState;
    private byte triggerLevel;
    private byte armLevel;
    private ulong holdoffSamples;
    private ulong holdoffRemaining = 0;

    private Vector256<byte> triggerLevelVector;
    private Vector256<byte> armLevelVector;

    public FallingEdgeTrigger(byte triggerLevel, byte armLevel, ulong holdoffSamples)
    {
        Reset(triggerLevel, armLevel, holdoffSamples);
    }

    public void Reset(byte triggerLevel, byte armLevel, ulong holdoffSamples)
    {
        if (holdoffSamples > 10000000000)
            throw new ArgumentException($"holdoffSamples cannot be greater than 10GS");
        if (holdoffSamples < 1000)
            throw new ArgumentException($"holdoffSamples cannot be less than 1000");

        triggerArmState = TriggerArmState.Armed;
        this.triggerLevel = triggerLevel;
        this.armLevel = armLevel;
        this.holdoffSamples = holdoffSamples;
        holdoffRemaining = 0;

        triggerLevelVector = Vector256.Create(triggerLevel);
        armLevelVector = Vector256.Create(armLevel);
    }

    //[MethodImpl(MethodImplOptions.AggressiveInlining)]
    public uint ProcessSimd(ReadOnlySpan<byte> input, Span<ulong> trigger)
    {
        uint inputLength = (uint)input.Length;
        uint simdLength = (inputLength - 32);
        uint triggerCount = 0;
        uint i = 0;
        uint popCnt = 0;

        unsafe
        {
            fixed (byte* samplesPtr = input)
            {
                while (i < inputLength)
                {
                    switch (triggerArmState)
                    {
                        case TriggerArmState.Armed:
                            // Process 32 bytes at a time
                            for (; i < simdLength; i += 32)
                            {
                                Vector256<byte> inputVector = Avx.LoadVector256(samplesPtr + i);
                                Vector256<byte> resultVector = Avx2.CompareEqual(Avx2.Max(triggerLevelVector, inputVector), triggerLevelVector);
                                uint resultCount = (uint)Avx2.MoveMask(resultVector);     // Quick way to do horizontal vector scan of byte[n] > 0
                                if (resultCount != 0)
                                {
                                    i += Popcnt.PopCount(~resultCount);
                                    triggerCount++;
                                    trigger[(int)(i / 64)] |= 0x1ul << ((int)i % 64);
                                    triggerArmState = TriggerArmState.UnarmedInHoldoff;
                                    holdoffRemaining = holdoffSamples;
                                    break;
                                }
                            }
                            if (triggerArmState != TriggerArmState.Armed)
                                break;
                            // Process 1 byte at a time
                            for (; i < inputLength; i++)
                            {
                                if (samplesPtr[(int)i] >= triggerLevel)
                                {
                                    triggerCount++;
                                    trigger[(int)(i / 64)] |= 0x1ul << ((int)i % 64);
                                    triggerArmState = TriggerArmState.UnarmedInHoldoff;
                                    holdoffRemaining = holdoffSamples;
                                    break;
                                }
                            }
                            break;
                        case TriggerArmState.UnarmedInHoldoff:
                            // Process 32 bytes at a time
                            for (; i < simdLength && holdoffRemaining >= 32; i += 32)
                            {
                                Vector256<byte> inputVector = Avx.LoadVector256(samplesPtr + i);
                                Vector256<byte> resultVector = Avx2.CompareEqual(Avx2.Min(armLevelVector, inputVector), armLevelVector);
                                uint resultCount = (uint)Avx2.MoveMask(resultVector);     // Quick way to do horizontal vector scan of byte[n] > 0
                                if (resultCount != 0)
                                {   // Arming level found
                                    popCnt = Popcnt.PopCount(~resultCount);
                                    i += popCnt;
                                    holdoffRemaining -= popCnt;
                                    triggerArmState = TriggerArmState.ArmedInHoldoff;
                                    break;
                                }
                                else
                                {
                                    holdoffRemaining -= 32;
                                    if (holdoffRemaining == 0)
                                    {
                                        triggerArmState = TriggerArmState.Unarmed;
                                        break;
                                    }
                                }
                            }
                            if (triggerArmState != TriggerArmState.UnarmedInHoldoff)
                                break;
                            // Process 1 byte at a time
                            for (; i < inputLength; i++)
                            {
                                if (samplesPtr[(int)i] <= armLevel)
                                {
                                    triggerArmState = TriggerArmState.ArmedInHoldoff;
                                    break;
                                }
                                holdoffRemaining--;
                                if (holdoffRemaining == 0)
                                {
                                    triggerArmState = TriggerArmState.Unarmed;
                                    break;
                                }
                            }
                            break;
                        case TriggerArmState.Unarmed:
                            // Process 32 bytes at a time
                            for (; i < simdLength; i += 32)
                            {   // Arming level found
                                Vector256<byte> inputVector = Avx.LoadVector256(samplesPtr + i);
                                Vector256<byte> resultVector = Avx2.CompareEqual(Avx2.Min(armLevelVector, inputVector), armLevelVector);
                                uint resultCount = (uint)Avx2.MoveMask(resultVector);     // Quick way to do horizontal vector scan of byte[n] > 0
                                if (resultCount != 0)
                                {
                                    popCnt = Popcnt.PopCount(~resultCount);
                                    i += popCnt;
                                    triggerArmState = TriggerArmState.Armed;
                                    break;
                                }
                            }
                            if (triggerArmState != TriggerArmState.Unarmed)
                                break;
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
                        case TriggerArmState.ArmedInHoldoff:
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
                                triggerArmState = TriggerArmState.Armed;
                            break;
                    }
                }
            }
        }
        return triggerCount;
    }

    // To do:
    // public uint ProcessSimd(ReadOnlySpan<short> <- I16 variant using SIMD
    // public uint Process(ReadOnlySpan<int> input <- I32 variant, probably doesn't need SIMD as it will be small amount of data
}