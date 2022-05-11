using Microsoft.Extensions.Logging;
using System;
using System.Diagnostics;
using System.Runtime.Intrinsics.X86;

namespace TS.NET.Engine
{
    public class ProcessingTask
    {
        private CancellationTokenSource? cancelTokenSource;
        private Task? taskLoop;

        //, Action<Memory<double>> action
        public void Start(ILoggerFactory loggerFactory, BlockingChannelReader<ThunderscopeMemory> processingPool, BlockingChannelWriter<ThunderscopeMemory> memoryPool)
        {
            var logger = loggerFactory.CreateLogger("ProcessingTask");
            cancelTokenSource = new CancellationTokenSource();
            ulong capacityBytes = 4 * 100 * 1000 * 1000;      // Maximum capacity = 100M samples per channel
            // Bridge is cross-process shared memory for the UI to read triggered acquisitions
            // The trigger point is _always_ in the middle of the channel block, and when the UI sets positive/negative trigger point, it's just moving the UI viewport
            ThunderscopeBridgeWriter bridge = new(new ThunderscopeBridgeOptions("ThunderScope.1", capacityBytes), loggerFactory);
            taskLoop = Task.Factory.StartNew(() => Loop(logger, processingPool, memoryPool, bridge, cancelTokenSource.Token), TaskCreationOptions.LongRunning);
        }

        public void Stop()
        {
            cancelTokenSource?.Cancel();
            taskLoop?.Wait();
        }

        // The job of this task - pull data from scope driver/simulator, shuffle if 2/4 channels, horizontal sum, trigger, and produce window segments.
        private static void Loop(ILogger logger, BlockingChannelReader<ThunderscopeMemory> processingPool, BlockingChannelWriter<ThunderscopeMemory> memoryPool, ThunderscopeBridgeWriter bridge, CancellationToken cancelToken)
        {
            try
            {
                Thread.CurrentThread.Name = "TS.NET Processing";

                // Configuration values to be updated during runtime... conveiniently all on ThunderscopeMemoryBridgeHeader
                ThunderscopeConfiguration config = new()
                {
                    Channels = Channels.Four,
                    ChannelLength = 10 * 1000000,//(ulong)ChannelLength.OneHundredM,
                    HorizontalSumLength = HorizontalSumLength.None,
                    TriggerChannel = TriggerChannel.One,
                    TriggerMode = TriggerMode.Normal
                };
                bridge.Configuration = config;

                ThunderscopeMonitoring monitoring = new()
                {
                    TotalAcquisitions = 0,
                    MissedAcquisitions = 0
                };
                bridge.Monitoring = monitoring;
                var bridgeWriterSemaphore = bridge.GetWriterSemaphore();

                // Various buffers allocated once and reused forevermore.
                //Memory<byte> hardwareBuffer = new byte[ThunderscopeMemory.Length];
                // Shuffle buffers. Only needed for 2/4 channel modes.
                Span<byte> shuffleBuffer = new byte[ThunderscopeMemory.Length];
                // --2 channel buffers
                int blockLength_2 = (int)ThunderscopeMemory.Length / 2;
                Span<byte> postShuffleCh1_2 = shuffleBuffer.Slice(0, blockLength_2);
                Span<byte> postShuffleCh2_2 = shuffleBuffer.Slice(blockLength_2, blockLength_2);
                // --4 channel buffers
                int blockLength_4 = (int)ThunderscopeMemory.Length / 4;
                Span<byte> postShuffleCh1_4 = shuffleBuffer.Slice(0, blockLength_4);
                Span<byte> postShuffleCh2_4 = shuffleBuffer.Slice(blockLength_4, blockLength_4);
                Span<byte> postShuffleCh3_4 = shuffleBuffer.Slice(blockLength_4 * 2, blockLength_4);
                Span<byte> postShuffleCh4_4 = shuffleBuffer.Slice(blockLength_4 * 3, blockLength_4);

                Span<uint> triggerIndices = new uint[ThunderscopeMemory.Length / 1000];     // 1000 samples is the minimum holdoff
                Span<uint> holdoffEndIndices = new uint[ThunderscopeMemory.Length / 1000];  // 1000 samples is the minimum holdoff
                RisingEdgeTriggerAlt trigger = new(200, 190, (ulong)(config.ChannelLength/2));

                DateTimeOffset startTime = DateTimeOffset.UtcNow;
                uint dequeueCounter = 0;
                uint oneSecondHoldoffCount = 0;
                // HorizontalSumUtility.ToDivisor(horizontalSumLength)
                Stopwatch oneSecond = Stopwatch.StartNew();

                var circularBuffer1 = new ChannelCircularAlignedBuffer((uint)config.ChannelLength + ThunderscopeMemory.Length);
                var circularBuffer2 = new ChannelCircularAlignedBuffer((uint)config.ChannelLength + ThunderscopeMemory.Length);
                var circularBuffer3 = new ChannelCircularAlignedBuffer((uint)config.ChannelLength + ThunderscopeMemory.Length);
                var circularBuffer4 = new ChannelCircularAlignedBuffer((uint)config.ChannelLength + ThunderscopeMemory.Length);

                while (true)
                {
                    cancelToken.ThrowIfCancellationRequested();
                    var memory = processingPool.Read(cancelToken);
                    // Add a zero-wait mechanism here that allows for configuration values to be updated
                    // (which will require updating many of the intermediate variables/buffers)
                    dequeueCounter++;
                    int channelLength = config.ChannelLength;
                    switch (config.Channels)
                    {
                        // Processing pipeline:
                        // Shuffle (if needed)
                        // Horizontal sum (EDIT: triggering should happen _before_ horizontal sum)
                        // Write to circular buffer
                        // Trigger
                        // Data segment on trigger (if needed)
                        case Channels.None:
                            break;
                        case Channels.One:
                            // Horizontal sum (EDIT: triggering should happen _before_ horizontal sum)
                            //if (config.HorizontalSumLength != HorizontalSumLength.None)
                            //    throw new NotImplementedException();
                            // Write to circular buffer
                            circularBuffer1.Write(memory.Span);
                            // Trigger
                            if (config.TriggerChannel != TriggerChannel.None)
                            {
                                var triggerChannelBuffer = config.TriggerChannel switch
                                {
                                    TriggerChannel.One => memory.Span,
                                    _ => throw new ArgumentException("Invalid TriggerChannel value")
                                };
                                trigger.ProcessSimd(input: triggerChannelBuffer, triggerIndices: triggerIndices, out uint triggerCount, holdoffEndIndices: holdoffEndIndices, out uint holdoffEndCount);
                            }
                            // Finished with the memory, return it
                            memoryPool.Write(memory);
                            break;
                        case Channels.Two:
                            // Shuffle
                            Shuffle.TwoChannels(input: memory.Span, output: shuffleBuffer);
                            // Finished with the memory, return it
                            memoryPool.Write(memory);
                            // Horizontal sum (EDIT: triggering should happen _before_ horizontal sum)
                            //if (config.HorizontalSumLength != HorizontalSumLength.None)
                            //    throw new NotImplementedException();
                            // Write to circular buffer
                            circularBuffer1.Write(postShuffleCh1_2);
                            circularBuffer2.Write(postShuffleCh2_2);
                            // Trigger
                            if (config.TriggerChannel != TriggerChannel.None)
                            {
                                var triggerChannelBuffer = config.TriggerChannel switch
                                {
                                    TriggerChannel.One => postShuffleCh1_2,
                                    TriggerChannel.Two => postShuffleCh2_2,
                                    _ => throw new ArgumentException("Invalid TriggerChannel value")
                                };
                                trigger.ProcessSimd(input: triggerChannelBuffer, triggerIndices: triggerIndices, out uint triggerCount, holdoffEndIndices: holdoffEndIndices, out uint holdoffEndCount);
                            }
                            break;
                        case Channels.Four:
                            // Shuffle
                            Shuffle.FourChannels(input: memory.Span, output: shuffleBuffer);
                            // Finished with the memory, return it
                            memoryPool.Write(memory);
                            // Horizontal sum (EDIT: triggering should happen _before_ horizontal sum)
                            //if (config.HorizontalSumLength != HorizontalSumLength.None)
                            //    throw new NotImplementedException();
                            // Write to circular buffer
                            circularBuffer1.Write(postShuffleCh1_4);
                            circularBuffer2.Write(postShuffleCh2_4);
                            circularBuffer3.Write(postShuffleCh3_4);
                            circularBuffer4.Write(postShuffleCh4_4);
                            // Trigger
                            if (config.TriggerChannel != TriggerChannel.None)
                            {
                                var triggerChannelBuffer = config.TriggerChannel switch
                                {
                                    TriggerChannel.One => postShuffleCh1_4,
                                    TriggerChannel.Two => postShuffleCh2_4,
                                    TriggerChannel.Three => postShuffleCh3_4,
                                    TriggerChannel.Four => postShuffleCh4_4,
                                    _ => throw new ArgumentException("Invalid TriggerChannel value")
                                };
                                trigger.ProcessSimd(input: triggerChannelBuffer, triggerIndices: triggerIndices, out uint triggerCount, holdoffEndIndices: holdoffEndIndices, out uint holdoffEndCount);
                                monitoring.TotalAcquisitions += holdoffEndCount;
                                oneSecondHoldoffCount += holdoffEndCount;
                                if (holdoffEndCount > 0)
                                {
                                    for (int i = 0; i < holdoffEndCount; i++)
                                    {
                                        if (bridge.IsReadyToWrite)
                                        {
                                            bridge.Monitoring = monitoring;
                                            var bridgeSpan = bridge.Span;
                                            uint holdoffEndIndex = (uint)postShuffleCh1_4.Length - holdoffEndIndices[i];
                                            circularBuffer1.Read(bridgeSpan.Slice(0, channelLength), holdoffEndIndex);
                                            circularBuffer2.Read(bridgeSpan.Slice(channelLength, channelLength), holdoffEndIndex);
                                            circularBuffer3.Read(bridgeSpan.Slice(channelLength + channelLength, channelLength), holdoffEndIndex);
                                            circularBuffer4.Read(bridgeSpan.Slice(channelLength + channelLength + channelLength, channelLength), holdoffEndIndex);
                                            bridge.DataWritten();
                                            bridgeWriterSemaphore.Release();       // Signal to the reader that data is available
                                        }
                                        else
                                        {
                                            monitoring.MissedAcquisitions++;
                                        }
                                    }
                                }
                            }
                            //logger.LogInformation($"Dequeue #{dequeueCounter++}, Ch1 triggers: {triggerCount1}, Ch2 triggers: {triggerCount2}, Ch3 triggers: {triggerCount3}, Ch4 triggers: {triggerCount4} ");
                            break;
                    }

                    if (oneSecond.ElapsedMilliseconds >= 1000)
                    {
                        logger.LogDebug($"Triggers/sec: {oneSecondHoldoffCount / (oneSecond.ElapsedMilliseconds * 0.001):F2}, dequeue count: {dequeueCounter}, trigger count: {monitoring.TotalAcquisitions}, UI displayed triggers: {monitoring.TotalAcquisitions - monitoring.MissedAcquisitions}, UI dropped triggers: {monitoring.MissedAcquisitions}");
                        oneSecond.Restart();
                        oneSecondHoldoffCount = 0;
                    }
                }
            }
            catch (OperationCanceledException)
            {
                logger.LogDebug($"{nameof(ProcessingTask)} stopping");
                throw;
            }
            catch (Exception ex)
            {
                logger.LogCritical(ex, $"{nameof(ProcessingTask)} error");
                throw;
            }
            finally
            {
                logger.LogDebug($"{nameof(ProcessingTask)} stopped");
            }
        }
    }
}
