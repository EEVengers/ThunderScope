using Microsoft.Extensions.Logging;
using System;
using System.Diagnostics;

namespace TS.NET.Engine
{
    // The job of this task is to read from the thunderscope as fast as possible with minimal jitter
    internal class InputTask
    {
        private CancellationTokenSource? cancelTokenSource;
        private Task? taskLoop;

        public void Start(
            ILoggerFactory loggerFactory,
            ThunderscopeDevice thunderscopeDevice,
            BlockingChannelReader<ThunderscopeMemory> inputChannel,
            BlockingChannelWriter<InputDataDto> processingChannel,
            BlockingChannelReader<HardwareRequestDto> hardwareRequestChannel,
            BlockingChannelWriter<HardwareResponseDto> hardwareResponseChannel)
        {
            var logger = loggerFactory.CreateLogger("InputTask");
            cancelTokenSource = new CancellationTokenSource();
            taskLoop = Task.Factory.StartNew(() => Loop(logger, thunderscopeDevice, inputChannel, processingChannel, hardwareRequestChannel, hardwareResponseChannel, cancelTokenSource.Token), TaskCreationOptions.LongRunning);
        }

        public void Stop()
        {
            cancelTokenSource?.Cancel();
            taskLoop?.Wait();
        }

        private static void Loop(
            ILogger logger,
            ThunderscopeDevice thunderscopeDevice,
            BlockingChannelReader<ThunderscopeMemory> inputChannel,
            BlockingChannelWriter<InputDataDto> processingChannel,
            BlockingChannelReader<HardwareRequestDto> hardwareRequestChannel,
            BlockingChannelWriter<HardwareResponseDto> hardwareResponseChannel,
            CancellationToken cancelToken)
        {
            Thread.CurrentThread.Name = "TS.NET Input";
            Thread.CurrentThread.Priority = ThreadPriority.Highest;
            Thunderscope thunderscope = new();
            try
            {
                thunderscope.Open(thunderscopeDevice);
                ThunderscopeConfiguration configuration = DoInitialConfiguration(thunderscope);
                thunderscope.Start();

                Stopwatch oneSecond = Stopwatch.StartNew();
                uint oneSecondEnqueueCount = 0;
                uint enqueueCounter = 0;

                while (true)
                {
                    cancelToken.ThrowIfCancellationRequested();

                    // Check for configuration requests
                    if (hardwareRequestChannel.PeekAvailable() != 0)
                    {
                        logger.LogDebug("Stop acquisition and process commands...");
                        thunderscope.Stop();

                        while (hardwareRequestChannel.TryRead(out var request))
                        {
                            // Do configuration update, pausing acquisition if necessary
                            if (request is HardwareStartRequest)
                            {
                                logger.LogDebug("Start request (ignore)");
                            }
                            else if (request is HardwareStopRequest)
                            {
                                logger.LogDebug("Stop request (ignore)");
                            }
                            else if (request is HardwareConfigureChannelDto)
                            {
                                var chNum = ((HardwareConfigureChannelDto)request).Channel;
                                ThunderscopeChannel ch = configuration.GetChannel(chNum);

                                if (request is HardwareSetOffsetRequest)
                                {
                                    var voltage = ((HardwareSetOffsetRequest)request).Offset;
                                    logger.LogDebug($"Set offset request: ch {chNum} voltage {voltage}");
                                    ch.VoltsOffset = voltage;
                                }
                                else if (request is HardwareSetVdivRequest)
                                {
                                    var vdiv = ((HardwareSetVdivRequest)request).VoltsDiv;
                                    logger.LogDebug($"Set vdiv request: ch {chNum} div {vdiv}");
                                    ch.VoltsDiv = vdiv;
                                }
                                else if (request is HardwareSetBandwidthRequest)
                                {
                                    var bw = ((HardwareSetBandwidthRequest)request).Bandwidth;
                                    logger.LogDebug($"Set bw request: ch {chNum} bw {bw}");
                                    ch.Bandwidth = bw;
                                }
                                else if (request is HardwareSetCouplingRequest)
                                {
                                    var coup = ((HardwareSetCouplingRequest)request).Coupling;
                                    logger.LogDebug($"Set coup request: ch {chNum} coup {coup}");
                                    ch.Coupling = coup;
                                }
                                else if (request is HardwareSetEnabledRequest)
                                {
                                    var enabled = ((HardwareSetEnabledRequest)request).Enabled;
                                    logger.LogDebug($"Set enabled request: ch {chNum} enabled {enabled}");
                                    ch.Enabled = enabled;
                                }
                                else
                                {
                                    logger.LogWarning($"Unknown HardwareConfigureChannelDto: {request}");
                                }

                                configuration.SetChannel(chNum, ch);
                                ConfigureFromObject(thunderscope, configuration);
                                thunderscope.EnableChannel(chNum);
                            }
                            else
                            {
                                logger.LogWarning($"Unknown HardwareRequestDto: {request}");
                            }

                            // Signal back to the sender that config update happened.
                            // hardwareResponseChannel.TryWrite(new HardwareResponseDto(request));

                            if (hardwareRequestChannel.PeekAvailable() == 0)
                                Thread.Sleep(150);
                        }

                        logger.LogDebug("Start again");
                        thunderscope.Start();
                    }

                    var memory = inputChannel.Read();

                    while (true)
                    {
                        try
                        {
                            thunderscope.Read(memory);
                            break;
                        }
                        catch (ThunderscopeMemoryOutOfMemoryException ex)
                        {
                            logger.LogWarning("Scope ran out of memory - reset buffer pointers and continue");
                            thunderscope.ResetBuffer();
                            continue;
                        }
                        catch (ThunderscopeFIFOOverflowException ex)
                        {
                            logger.LogWarning("Scope had FIFO overflow - ignore and continue");
                            continue;
                        }
                        catch (ThunderscopeNotRunningException ex)
                        {
                            // logger.LogWarning("Tried to read from stopped scope");
                            continue;
                        }
                        catch (Exception ex)
                        {
                            if (ex.Message == "ReadFile - failed (1359)")
                            {
                                logger.LogError(ex, $"{nameof(InputTask)} error");
                                continue;
                            }
                            throw;
                        }
                    }

                    oneSecondEnqueueCount++;
                    enqueueCounter++;

                    processingChannel.Write(new InputDataDto(configuration, memory), cancelToken);

                    if (oneSecond.ElapsedMilliseconds >= 10000)
                    {
                        logger.LogDebug($"Enqueues/sec: {oneSecondEnqueueCount / (oneSecond.ElapsedMilliseconds * 0.001):F2}, enqueue count: {enqueueCounter}");
                        oneSecond.Restart();
                        oneSecondEnqueueCount = 0;
                    }
                }
            }
            catch (OperationCanceledException)
            {
                logger.LogDebug($"{nameof(InputTask)} stopping");
            }
            catch (Exception ex)
            {
                logger.LogCritical(ex, $"{nameof(InputTask)} error");
                throw;
            }
            finally
            {
                thunderscope.Stop();
                logger.LogDebug($"{nameof(InputTask)} stopped");
            }
        }

        private static ThunderscopeConfiguration DoInitialConfiguration(Thunderscope thunderscope)
        {
            ThunderscopeConfiguration configuration = new()
            {
                AdcChannels = AdcChannels.Four,
                Channel0 = new ThunderscopeChannel()
                {
                    Enabled = true,
                    VoltsOffset = 0,
                    VoltsDiv = 100,
                    Bandwidth = 350,
                    Coupling = ThunderscopeCoupling.DC
                },
                Channel1 = new ThunderscopeChannel()
                {
                    Enabled = true,
                    VoltsOffset = 0,
                    VoltsDiv = 100,
                    Bandwidth = 350,
                    Coupling = ThunderscopeCoupling.DC
                },
                Channel2 = new ThunderscopeChannel()
                {
                    Enabled = true,
                    VoltsOffset = 0,
                    VoltsDiv = 100,
                    Bandwidth = 350,
                    Coupling = ThunderscopeCoupling.DC
                },
                Channel3 = new ThunderscopeChannel()
                {
                    Enabled = true,
                    VoltsOffset = 0,
                    VoltsDiv = 100,
                    Bandwidth = 350,
                    Coupling = ThunderscopeCoupling.DC
                },
            };

            ConfigureFromObject(thunderscope, configuration);

            thunderscope.EnableChannel(0);
            thunderscope.EnableChannel(1);
            thunderscope.EnableChannel(2);
            thunderscope.EnableChannel(3);

            return configuration;
        }

        private static void ConfigureFromObject(Thunderscope thunderscope, ThunderscopeConfiguration configuration)
        {
            for (int i = 0; i < 4; i++)
            {
                thunderscope.Channels[i] = configuration.GetChannel(i);
            }
        }
    }
}
