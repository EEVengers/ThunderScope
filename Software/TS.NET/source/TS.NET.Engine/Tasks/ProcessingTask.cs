using Microsoft.Extensions.Logging;
using System;
using System.Diagnostics;

namespace TS.NET.Engine
{
    public class ProcessingTask
    {
        private CancellationTokenSource? cancelTokenSource;
        private Task? taskLoop;

        public void Start(
            ILoggerFactory loggerFactory,
            BlockingChannelReader<InputDataDto> processingChannel,
            BlockingChannelWriter<ThunderscopeMemory> inputChannel,
            BlockingChannelReader<ProcessingRequestDto> processingRequestChannel,
            BlockingChannelWriter<ProcessingResponseDto> processingResponseChannel)
        {
            var logger = loggerFactory.CreateLogger("ProcessingTask");
            cancelTokenSource = new CancellationTokenSource();
            ulong dataCapacityBytes = 4 * 100 * 1000 * 1000;      // Maximum capacity = 100M samples per channel
            // Bridge is cross-process shared memory for the UI to read triggered acquisitions
            // The trigger point is _always_ in the middle of the channel block, and when the UI sets positive/negative trigger point, it's just moving the UI viewport
            ThunderscopeBridgeWriter bridge = new(new ThunderscopeBridgeOptions("ThunderScope.1", dataCapacityBytes), loggerFactory);
            taskLoop = Task.Factory.StartNew(() => Loop(logger, bridge, processingChannel, inputChannel, processingRequestChannel, processingResponseChannel, cancelTokenSource.Token), TaskCreationOptions.LongRunning);
        }

        public void Stop()
        {
            cancelTokenSource?.Cancel();
            taskLoop?.Wait();
        }

        // The job of this task - pull data from scope driver/simulator, shuffle if 2/4 channels, horizontal sum, trigger, and produce window segments.
        private static void Loop(
            ILogger logger,
            ThunderscopeBridgeWriter bridge,
            BlockingChannelReader<InputDataDto> processingChannel,
            BlockingChannelWriter<ThunderscopeMemory> inputChannel,
            BlockingChannelReader<ProcessingRequestDto> processingRequestChannel,
            BlockingChannelWriter<ProcessingResponseDto> processingResponseChannel,
            CancellationToken cancelToken)
        {
            try
            {
                const int initialMaxChannelLength = 10 * 1000000;

                Thread.CurrentThread.Name = "TS.NET Processing";

                ThunderscopeProcessing processingConfig = new()
                {
                    ChannelLength = initialMaxChannelLength,
                    HorizontalSumLength = HorizontalSumLength.None,
                    TriggerChannel = TriggerChannel.One,
                    TriggerMode = TriggerMode.Normal,
                    ChannelDataType = ThunderscopeChannelDataType.Byte
                };
                bridge.Processing = processingConfig;
                bridge.MonitoringReset();

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
                RisingEdgeTriggerAlt trigger = new(200, 190, (ulong)(processingConfig.ChannelLength / 2));

                DateTimeOffset startTime = DateTimeOffset.UtcNow;
                uint dequeueCounter = 0;
                uint oneSecondHoldoffCount = 0;
                uint oneSecondDequeueCount = 0;
                // HorizontalSumUtility.ToDivisor(horizontalSumLength)
                Stopwatch oneSecond = Stopwatch.StartNew();

                var circularBuffer1 = new ChannelCircularAlignedBuffer((uint)processingConfig.ChannelLength + ThunderscopeMemory.Length);
                var circularBuffer2 = new ChannelCircularAlignedBuffer((uint)processingConfig.ChannelLength + ThunderscopeMemory.Length);
                var circularBuffer3 = new ChannelCircularAlignedBuffer((uint)processingConfig.ChannelLength + ThunderscopeMemory.Length);
                var circularBuffer4 = new ChannelCircularAlignedBuffer((uint)processingConfig.ChannelLength + ThunderscopeMemory.Length);

                bool forceTrigger = false;
                bool oneShotTrigger = false;
                bool triggerRunning = false;

                uint clientRequestedDepth = (uint)processingConfig.ChannelLength;

                while (true)
                {
                    cancelToken.ThrowIfCancellationRequested();

                    // Check for processing requests
                    if (processingRequestChannel.TryRead(out var request))
                    {
                        if (request is ProcessingStartTriggerDto)
                        {
                            triggerRunning = true;
                            oneShotTrigger = ((ProcessingStartTriggerDto)request).OneShot;
                            forceTrigger = ((ProcessingStartTriggerDto)request).ForceTrigger;

                            logger.LogDebug($"Start: triggerRunning={triggerRunning}, oneShotTrigger={oneShotTrigger}, forceTrigger={forceTrigger}");
                        }
                        else if (request is ProcessingStopTriggerDto)
                        {
                            triggerRunning = false;
                            logger.LogDebug("Stop");
                        }
                        else if (request is ProcessingSetDepthDto)
                        {
                            var depth = ((ProcessingSetDepthDto)request).Samples;
                            depth = Math.Min(depth, initialMaxChannelLength);
                            processingConfig.ChannelLength = (int)depth;
                            // TODO: This races with a reader since there are two regions and only one processingConfig
                            // TODO: Does not resize buffers above, so cannot increase from initial
                        }
                        else if (request is ProcessingSetRateDto)
                        {
                            var rate = ((ProcessingSetRateDto)request).SamplingHz;
                        }
                        else if (request is ProcessingSetTriggerSourceDto)
                        {
                            var channel = ((ProcessingSetTriggerSourceDto)request).Channel;
                            processingConfig.TriggerChannel = channel;
                        }
                        else if (request is ProcessingSetTriggerDelayDto)
                        {
                            var fs = ((ProcessingSetTriggerDelayDto)request).Femtoseconds;
                        }
                        else if (request is ProcessingSetTriggerLevelDto)
                        {
                            var level = ((ProcessingSetTriggerLevelDto)request).Level;
                        }
                        else if (request is ProcessingSetTriggerEdgeDirectionDto)
                        {
                            // var edges = ((ProcessingSetTriggerEdgeDirectionDto)request).Edges;
                        }
                        else
                        {
                            logger.LogWarning($"Unknown ProcessingRequestDto: {request}");
                        }

                        bridge.Processing = processingConfig;
                    }

                    InputDataDto processingDto = processingChannel.Read(cancelToken);
                    bridge.Configuration = processingDto.Configuration;
                    dequeueCounter++;
                    oneSecondDequeueCount++;

                    int channelLength = processingConfig.ChannelLength;
                    switch (processingDto.Configuration.AdcChannels)
                    {
                        // Processing pipeline:
                        // Shuffle (if needed)
                        // Horizontal sum (EDIT: triggering should happen _before_ horizontal sum)
                        // Write to circular buffer
                        // Trigger
                        // Data segment on trigger (if needed)
                        case AdcChannels.None:
                            break;
                        case AdcChannels.One:
                            // Horizontal sum (EDIT: triggering should happen _before_ horizontal sum)
                            //if (config.HorizontalSumLength != HorizontalSumLength.None)
                            //    throw new NotImplementedException();
                            // Write to circular buffer
                            circularBuffer1.Write(processingDto.Memory.Span);
                            // Trigger
                            if (processingConfig.TriggerChannel != TriggerChannel.None)
                            {
                                var triggerChannelBuffer = processingConfig.TriggerChannel switch
                                {
                                    TriggerChannel.One => processingDto.Memory.Span,
                                    _ => throw new ArgumentException("Invalid TriggerChannel value")
                                };
                                trigger.ProcessSimd(input: triggerChannelBuffer, triggerIndices: triggerIndices, out uint triggerCount, holdoffEndIndices: holdoffEndIndices, out uint holdoffEndCount);
                            }
                            // Finished with the memory, return it
                            inputChannel.Write(processingDto.Memory);
                            break;
                        case AdcChannels.Two:
                            // Shuffle
                            Shuffle.TwoChannels(input: processingDto.Memory.Span, output: shuffleBuffer);
                            // Finished with the memory, return it
                            inputChannel.Write(processingDto.Memory);
                            // Horizontal sum (EDIT: triggering should happen _before_ horizontal sum)
                            //if (config.HorizontalSumLength != HorizontalSumLength.None)
                            //    throw new NotImplementedException();
                            // Write to circular buffer
                            circularBuffer1.Write(postShuffleCh1_2);
                            circularBuffer2.Write(postShuffleCh2_2);
                            // Trigger
                            if (processingConfig.TriggerChannel != TriggerChannel.None)
                            {
                                var triggerChannelBuffer = processingConfig.TriggerChannel switch
                                {
                                    TriggerChannel.One => postShuffleCh1_2,
                                    TriggerChannel.Two => postShuffleCh2_2,
                                    _ => throw new ArgumentException("Invalid TriggerChannel value")
                                };
                                trigger.ProcessSimd(input: triggerChannelBuffer, triggerIndices: triggerIndices, out uint triggerCount, holdoffEndIndices: holdoffEndIndices, out uint holdoffEndCount);
                            }
                            break;
                        case AdcChannels.Four:
                            // Shuffle
                            Shuffle.FourChannels(input: processingDto.Memory.Span, output: shuffleBuffer);
                            // Finished with the memory, return it
                            inputChannel.Write(processingDto.Memory);
                            // Horizontal sum (EDIT: triggering should happen _before_ horizontal sum)
                            //if (config.HorizontalSumLength != HorizontalSumLength.None)
                            //    throw new NotImplementedException();
                            // Write to circular buffer
                            circularBuffer1.Write(postShuffleCh1_4);
                            circularBuffer2.Write(postShuffleCh2_4);
                            circularBuffer3.Write(postShuffleCh3_4);
                            circularBuffer4.Write(postShuffleCh4_4);
                            // Trigger
                            if (triggerRunning && processingConfig.TriggerChannel != TriggerChannel.None)
                            {
                                var triggerChannelBuffer = processingConfig.TriggerChannel switch
                                {
                                    TriggerChannel.One => postShuffleCh1_4,
                                    TriggerChannel.Two => postShuffleCh2_4,
                                    TriggerChannel.Three => postShuffleCh3_4,
                                    TriggerChannel.Four => postShuffleCh4_4,
                                    _ => throw new ArgumentException("Invalid TriggerChannel value")
                                };
                                trigger.ProcessSimd(input: triggerChannelBuffer, triggerIndices: triggerIndices, out uint triggerCount, holdoffEndIndices: holdoffEndIndices, out uint holdoffEndCount);
                                oneSecondHoldoffCount += holdoffEndCount;
                                if (holdoffEndCount > 0)
                                {
                                    // logger.LogDebug("Trigger Fired");
                                    for (int i = 0; i < holdoffEndCount; i++)
                                    {
                                        var bridgeSpan = bridge.AcquiringRegion;
                                        uint holdoffEndIndex = (uint)postShuffleCh1_4.Length - holdoffEndIndices[i];
                                        circularBuffer1.Read(bridgeSpan.Slice(0, channelLength), holdoffEndIndex);
                                        circularBuffer2.Read(bridgeSpan.Slice(channelLength, channelLength), holdoffEndIndex);
                                        circularBuffer3.Read(bridgeSpan.Slice(channelLength + channelLength, channelLength), holdoffEndIndex);
                                        circularBuffer4.Read(bridgeSpan.Slice(channelLength + channelLength + channelLength, channelLength), holdoffEndIndex);
                                        bridge.DataWritten();
                                        bridge.SwitchRegionIfNeeded();
                                    }
                                    forceTrigger = false;       // Ignore the force trigger request, a normal trigger happened
                                    if (oneShotTrigger) triggerRunning = false;
                                }
                                else if (forceTrigger)
                                {
                                    // logger.LogDebug("Force Trigger fired");
                                    var bridgeSpan = bridge.AcquiringRegion;
                                    circularBuffer1.Read(bridgeSpan.Slice(0, channelLength), 0);
                                    circularBuffer2.Read(bridgeSpan.Slice(channelLength, channelLength), 0);
                                    circularBuffer3.Read(bridgeSpan.Slice(channelLength + channelLength, channelLength), 0);
                                    circularBuffer4.Read(bridgeSpan.Slice(channelLength + channelLength + channelLength, channelLength), 0);
                                    bridge.DataWritten();
                                    bridge.SwitchRegionIfNeeded();
                                    forceTrigger = false;
                                    if (oneShotTrigger) triggerRunning = false;
                                }
                                else
                                {
                                    bridge.SwitchRegionIfNeeded();
                                }
                                
                            }
                            //logger.LogInformation($"Dequeue #{dequeueCounter++}, Ch1 triggers: {triggerCount1}, Ch2 triggers: {triggerCount2}, Ch3 triggers: {triggerCount3}, Ch4 triggers: {triggerCount4} ");
                            break;
                    }

                    if (oneSecond.ElapsedMilliseconds >= 10000)
                    {
                        logger.LogDebug($"Outstanding frames: {processingChannel.PeekAvailable()}, dequeues/sec: {oneSecondDequeueCount / (oneSecond.ElapsedMilliseconds * 0.001):F2}, dequeue count: {dequeueCounter}");
                        logger.LogDebug($"Triggers/sec: {oneSecondHoldoffCount / (oneSecond.ElapsedMilliseconds * 0.001):F2}, trigger count: {bridge.Monitoring.TotalAcquisitions}, UI displayed triggers: {bridge.Monitoring.TotalAcquisitions - bridge.Monitoring.MissedAcquisitions}, UI dropped triggers: {bridge.Monitoring.MissedAcquisitions}");
                        oneSecond.Restart();
                        oneSecondHoldoffCount = 0;
                        oneSecondDequeueCount = 0;
                    }
                }
            }
            catch (OperationCanceledException)
            {
                logger.LogDebug($"{nameof(ProcessingTask)} stopping");
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

        private static void FlushProcessingQueue(
            BlockingChannelReader<InputDataDto> processingChannel,
            BlockingChannelWriter<ThunderscopeMemory> inputChannel)
        {
            while (processingChannel.TryRead(out var m))
            {
                inputChannel.Write(m.Memory);
            }
        }
    }
}
