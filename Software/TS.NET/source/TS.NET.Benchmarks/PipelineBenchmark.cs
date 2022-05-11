using BenchmarkDotNet.Attributes;
using BenchmarkDotNet.Jobs;

namespace TS.NET.Benchmark
{
    [SimpleJob(RuntimeMoniker.Net60)]
    [MemoryDiagnoser]
    public class PipelineBenchmark
    {
        private const int samplingRate = 1000000000;
        private const int byteBufferSize = 8000000;
        private readonly Memory<byte> input = new byte[byteBufferSize];
        private readonly Memory<byte> shuffleOutput = new byte[byteBufferSize];
        private readonly Memory<ulong> triggerBuffer = new ulong[byteBufferSize / 64];
        private readonly RisingEdgeTrigger trigger1 = new(200, 190, 1000);
        private readonly RisingEdgeTrigger trigger2 = new(200, 190, 1000);
        private readonly RisingEdgeTrigger trigger3 = new(200, 190, 1000);
        private readonly RisingEdgeTrigger trigger4 = new(200, 190, 1000);
        private Memory<byte> channel1;
        private Memory<byte> channel2;
        private Memory<byte> channel3;
        private Memory<byte> channel4;
        Memory<ulong> triggerChannel1;
        Memory<ulong> triggerChannel2;
        Memory<ulong> triggerChannel3;
        Memory<ulong> triggerChannel4;

        [GlobalSetup]
        public void Setup()
        {
            Waveforms.FourChannelSine(input.Span, samplingRate, 1000);
            channel1 = shuffleOutput.Slice(0, 2000000);
            channel2 = shuffleOutput.Slice(2000000, 2000000);
            channel3 = shuffleOutput.Slice(4000000, 2000000);
            channel4 = shuffleOutput.Slice(6000000, 2000000);
            triggerChannel1 = triggerBuffer.Slice(0, 31250);
            triggerChannel2 = triggerBuffer.Slice(31250, 31250);
            triggerChannel3 = triggerBuffer.Slice(31250 * 2, 31250);
            triggerChannel4 = triggerBuffer.Slice(31250 * 3, 31250);
        }

        [Benchmark(Description = "4 channels")]
        public void FourChannelPipeline()
        {
            for (int i = 0; i < 125; i++)
            {
                Shuffle.FourChannels(input.Span, shuffleOutput.Span);
                trigger1.ProcessSimd(input: channel1.Span, trigger: triggerChannel1.Span);
                trigger2.ProcessSimd(input: channel2.Span, trigger: triggerChannel2.Span);
                trigger3.ProcessSimd(input: channel3.Span, trigger: triggerChannel3.Span);
                trigger4.ProcessSimd(input: channel4.Span, trigger: triggerChannel4.Span);
            }
        }
    }
}
