using BenchmarkDotNet.Attributes;
using BenchmarkDotNet.Diagnosers;
using BenchmarkDotNet.Jobs;

namespace TS.NET.Benchmark
{
    [SimpleJob(RuntimeMoniker.Net60)]
    [MemoryDiagnoser]
    //[CpuDiagnoser]
    //[InProcess]
    //[HardwareCounters(HardwareCounter.TotalIssues)]
    public class RisingEdgeTriggerBenchmark
    {
        private const int samplingRate = 1000000000;
        private const int byteBufferSize = 8000000;
        private readonly Memory<byte> buffer1MHz = new byte[byteBufferSize];
        private readonly Memory<byte> buffer1KHz = new byte[byteBufferSize];
        private readonly Memory<ulong> triggerBufferU64 = new ulong[byteBufferSize / 64];
        private readonly RisingEdgeTrigger trigger = new(200, 190, 1000);

        [GlobalSetup]
        public void Setup()
        {
            Waveforms.Sine(buffer1MHz.Span, samplingRate, 1000000);
            Waveforms.Sine(buffer1KHz.Span, samplingRate, 1000);
        }

        //[Benchmark(Description = "Rising edge with hysteresis (10 counts) & holdoff (1us) and no SIMD, 1KHz sine (125 x 8MS)")]
        //public void RisingEdge2()
        //{
        //    for (int i = 0; i < 125; i++)
        //        trigger.RisingEdge(buffer1KHz.Span, triggerBufferU64.Span);
        //}

        [Benchmark(Description = "Rising edge with hysteresis (10 counts), holdoff (1us) & SIMD, 1KHz sine (125 x 8MS)")]
        public void RisingEdge1()
        {
            trigger.Reset(200, 190, 1000);
            for (int i = 0; i < 125; i++)
                trigger.ProcessSimd(buffer1KHz.Span, triggerBufferU64.Span);
        }

        // 0.18 CPU cycles per sample
        [Benchmark(Description = "Rising edge with hysteresis (10 counts), holdoff (1us) & SIMD, 1MHz sine (125 x 8MS)")]
        public void RisingEdge2()
        {
            trigger.Reset(200, 190, 1000);
            for (int i = 0; i < 125; i++)
                trigger.ProcessSimd(buffer1MHz.Span, triggerBufferU64.Span);
        }

        //[Benchmark(Description = "Rising edge with hysteresis (10 counts), holdoff (1ms) & SIMD, 1KHz sine (125 x 8MS)")]
        //public void RisingEdge3()
        //{
        //    trigger.Reset(200, 190, 1000000);
        //    for (int i = 0; i < 125; i++)
        //        trigger.ProcessSimd(buffer1KHz.Span, triggerBufferU64.Span);
        //}

        //[Benchmark(Description = "Rising edge with hysteresis (10 counts), holdoff (1ms) & SIMD, 1MHz sine (125 x 8MS)")]
        //public void RisingEdge4()
        //{
        //    trigger.Reset(200, 190, 1000000);
        //    for (int i = 0; i < 125; i++)
        //        trigger.ProcessSimd(buffer1MHz.Span, triggerBufferU64.Span);
        //}
    }
}
