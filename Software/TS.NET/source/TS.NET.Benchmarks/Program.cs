using BenchmarkDotNet.Configs;
using BenchmarkDotNet.Running;
using TS.NET.Benchmark;

DefaultConfig.Instance.WithOptions(ConfigOptions.JoinSummary);
//_ = BenchmarkRunner.Run(typeof(Program).Assembly);
//_ = BenchmarkRunner.Run<ShuffleBenchmark>();      
//_ = BenchmarkRunner.Run<RisingEdgeTriggerBenchmark>();
//_ = BenchmarkRunner.Run<PipelineBenchmark>();
_ = BenchmarkRunner.Run<SumU8toI16Benchmark>();
_ = BenchmarkRunner.Run<SumU8toI32Benchmark>();
Console.ReadKey();