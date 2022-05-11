using BenchmarkDotNet.Attributes;
using BenchmarkDotNet.Jobs;

namespace TS.NET.Benchmark
{
    [SimpleJob(RuntimeMoniker.Net60)]
    //[MemoryDiagnoser]
    public class SumU8toI32Benchmark
    {
        private const int byteBufferSize = 8000000;
        private readonly Memory<byte> input = new byte[byteBufferSize];
        private readonly Memory<short> bufferI16 = new short[byteBufferSize / 2];
        private readonly Memory<int> bufferI32 = new int[byteBufferSize / 2];

        [GlobalSetup]
        public void Setup()
        {
            Waveforms.Oversampling_1Channel_2Avg(input.Span);
        }

        [Benchmark(Description = "I32: Sum by 2 (1GS -> 500MS)", Baseline = true)]  //  CPU cycles per sample
        public void I32_2_()
        {
            for (int i = 0; i < 125; i++)
                HorizontalSum.U8ToI32(input.Span, bufferI16.Span, bufferI32.Span, 1);
        }

        [Benchmark(Description = "I32: Sum by 4 (1GS -> 250MS)")]  //  CPU cycles per sample
        public void I32_4_()
        {
            for (int i = 0; i < 125; i++)
                HorizontalSum.U8ToI32(input.Span, bufferI16.Span, bufferI32.Span, 2);
        }

        [Benchmark(Description = "I32: Sum by 8 (1GS -> 125MS)")]  //  CPU cycles per sample
        public void I32_8_()
        {
            for (int i = 0; i < 125; i++)
                HorizontalSum.U8ToI32(input.Span, bufferI16.Span, bufferI32.Span, 3);
        }

        //[Benchmark(Description = "I32: Sum by 16 (1GS -> 62.5MS)")]  //  CPU cycles per sample
        //public void I32_16_()
        //{
        //    for (int i = 0; i < 125; i++)
        //        Sum.U8ToI32(input.Span, bufferI16.Span, bufferI32.Span, 4);
        //}
    }
}
