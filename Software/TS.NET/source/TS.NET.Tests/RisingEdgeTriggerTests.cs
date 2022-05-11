using System;
using Xunit;

namespace TS.NET.Tests
{
    public class RisingEdgeTriggerTests
    {
        //[Fact]
        //public void SituationA_NonSimd()
        //{
        //    var data = RisingEdgeTriggerSituations.SituationA();
        //    RisingEdgeTrigger trigger = new(data.TriggerLevel, data.ArmLevel, data.HoldoffSamples);
        //    Span<ulong> actualTriggers = new ulong[data.ExpectedTriggers.Length];
        //    trigger.Process(data.Input.Span, actualTriggers);

        //    for (int i = 0; i < actualTriggers.Length; i++)
        //    {
        //        Assert.Equal(data.ExpectedTriggers.Span[i], actualTriggers[i]);
        //    }
        //}

        //[Fact]
        //public void SituationA_Simd()
        //{
        //    var data = RisingEdgeTriggerSituations.SituationA();
        //    RisingEdgeTrigger trigger = new(data.TriggerLevel, data.ArmLevel, data.HoldoffSamples);
        //    Span<ulong> actualTriggers = new ulong[data.ExpectedTriggers.Length];
        //    trigger.ProcessSimd(data.Input.Span, actualTriggers);

        //    for (int i = 0; i < actualTriggers.Length; i++)
        //    {
        //        Assert.Equal(data.ExpectedTriggers.Span[i], actualTriggers[i]);
        //    }
        //}

        [Fact]
        public void FiftySample()
        {
            RisingEdgeTriggerAlt trigger = new(130, 120, 10);
            Span<uint> triggerIndices = new uint[10000];
            Span<uint> holdoffEndIndices = new uint[10000];
            Span<byte> input = new byte[50];
            input.Clear();
            input[16] = 200;
            trigger.ProcessSimd(input, triggerIndices, out uint triggerCount, holdoffEndIndices, out uint holdoffEndCount);

        }

        [Fact]
        public void SituationB_Simd()
        {
            var situation = RisingEdgeTriggerSituations.SituationB();
            RisingEdgeTriggerAlt trigger = new(situation.TriggerLevel, situation.ArmLevel, situation.HoldoffSamples);
            Span<uint> triggerIndices = new uint[10000];
            Span<uint> holdoffEndIndices = new uint[10000];

            for (int i = 0; i < situation.ChunkCount; i++)
            {
                trigger.ProcessSimd(
                    situation.Input.Span.Slice((int)(i * situation.ChunkSize), (int)situation.ChunkSize),
                    triggerIndices, 
                    out uint triggerCount, 
                    holdoffEndIndices, 
                    out uint holdoffEndCount);
                if (triggerCount > 0)
                    Console.WriteLine("Hi");
                if (holdoffEndCount > 0)
                    Console.WriteLine("Hi");

                if(!situation.ExpectedTriggerIndices[i].IsEmpty)
                {
                    Assert.Equal(triggerCount, (uint)situation.ExpectedTriggerIndices[i].Length);
                    int n = 0;
                    foreach(var index in situation.ExpectedTriggerIndices[i].Span)
                    {
                        Assert.Equal(index, triggerIndices[n++]);
                    }
                }

                if (!situation.ExpectedHoldoffEndIndices[i].IsEmpty)
                {
                    Assert.Equal(holdoffEndCount, (uint)situation.ExpectedHoldoffEndIndices[i].Length);
                    int n = 0;
                    foreach (var index in situation.ExpectedHoldoffEndIndices[i].Span)
                    {
                        Assert.Equal(index, holdoffEndIndices[n++]);
                    }
                }
            }
        }

        [Fact]
        public void SituationC_Simd()
        {
            var situation = RisingEdgeTriggerSituations.SituationC();
            RisingEdgeTriggerAlt trigger = new(situation.TriggerLevel, situation.ArmLevel, situation.HoldoffSamples);
            Span<uint> triggerIndices = new uint[10000];
            Span<uint> holdoffEndIndices = new uint[10000];

            for (int i = 0; i < situation.ChunkCount; i++)
            {
                trigger.ProcessSimd(
                    situation.Input.Span.Slice((int)(i * situation.ChunkSize), (int)situation.ChunkSize),
                    triggerIndices,
                    out uint triggerCount,
                    holdoffEndIndices,
                    out uint holdoffEndCount);
                if (triggerCount > 0)
                    Console.WriteLine("Hi");
                if (holdoffEndCount > 0)
                    Console.WriteLine("Hi");
            }
        }
    }
}