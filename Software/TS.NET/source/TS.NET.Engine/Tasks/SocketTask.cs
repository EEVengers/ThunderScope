using Microsoft.Extensions.Logging;
using System;
using System.Net;
using System.Net.Sockets;
using System.Runtime.InteropServices;

namespace TS.NET.Engine
{
    internal class SocketTask
    {
        [StructLayout(LayoutKind.Sequential, Pack = 1)]
        internal struct WaveformHeader
        {
            internal uint seqnum;
            internal ushort numChannels;
            internal ulong fsPerSample;
            internal ulong triggerFs;
            internal double hwWaveformsPerSec;
        }

        [StructLayout(LayoutKind.Sequential, Pack = 1)]
        internal struct ChannelHeader
        {
            internal byte chNum;
            internal ulong depth;
            internal float scale;
            internal float offset;
            internal float trigphase;
            internal byte clipping;
        }

        private CancellationTokenSource? cancelTokenSource;
        private Task? taskLoop;
        private Socket listener;

        public void Start(ILoggerFactory loggerFactory, BlockingChannelWriter<ProcessingRequestDto> processingRequestChannel)
        {
            var logger = loggerFactory.CreateLogger("SocketTask");
            cancelTokenSource = new CancellationTokenSource();
            ulong dataCapacityBytes = 4 * 100 * 1000 * 1000;      // Maximum capacity = 100M samples per channel
            ThunderscopeBridgeReader bridge = new(new ThunderscopeBridgeOptions("ThunderScope.1", dataCapacityBytes), loggerFactory);
            IPEndPoint localEndPoint = new IPEndPoint(IPAddress.Any, 5026);
            listener = new Socket(IPAddress.Any.AddressFamily, SocketType.Stream, ProtocolType.Tcp);
            listener.LingerState = new LingerOption(true, 1);
            listener.Bind(localEndPoint);
            taskLoop = Task.Factory.StartNew(() => Loop(logger, bridge, listener, processingRequestChannel, cancelTokenSource.Token), TaskCreationOptions.LongRunning);
        }

        public void Stop()
        {
            cancelTokenSource?.Cancel();
            listener.Close();
            taskLoop?.Wait();
        }

        private static void Loop(
            ILogger logger,
            ThunderscopeBridgeReader bridge,
            Socket listener,
            BlockingChannelWriter<ProcessingRequestDto> processingRequestChannel,
            CancellationToken cancelToken)
        {
            Thread.CurrentThread.Name = "TS.NET Socket";
            logger.LogDebug($"Thread ID: {Thread.CurrentThread.ManagedThreadId}");
            Socket clientSocket = null;

            try
            {
                logger.LogInformation("Starting data plane socket server at :5026");
                listener.Listen(10);
                clientSocket = listener.Accept();
                clientSocket.NoDelay = true;
                logger.LogInformation("Client connected to data plane");

                uint seqnum = 0;

                clientSocket.NoDelay = true;

                while (true)
                {
                    byte[] bytes = new byte[1];

                    // Wait for flow control 'K'
                    while (true)
                    {
                        cancelToken.ThrowIfCancellationRequested();
                        if (!clientSocket.Poll(10_000, SelectMode.SelectRead)) continue;
                        int numByte = clientSocket.Receive(bytes);
                        if (numByte != 0) break;
                    }

                    // logger.LogDebug("Got request for waveform...");

                    while (true)
                    {
                        cancelToken.ThrowIfCancellationRequested();

                        if (bridge.RequestAndWaitForData(500))
                        {
                            // logger.LogDebug("Send waveform...");
                            var cfg = bridge.Configuration;
                            var data = bridge.AcquiredRegion;

                            var processingCfg = bridge.Processing;//.GetConfiguration();
                            ulong channelLength = (ulong)processingCfg.ChannelLength;

                            WaveformHeader header = new()
                            {
                                seqnum = seqnum,
                                numChannels = 4,
                                fsPerSample = 1000000 * 4, // 1GS / 4 channels (?)
                                triggerFs = 0,
                                hwWaveformsPerSec = 1
                            };

                            ChannelHeader chHeader = new()
                            {
                                chNum = 0,
                                depth = channelLength,
                                scale = 1,
                                offset = 0,
                                trigphase = 0,
                                clipping = 0
                            };

                            unsafe
                            {
                                clientSocket.Send(new ReadOnlySpan<byte>(&header, sizeof(WaveformHeader)));

                                for (byte ch = 0; ch < 4; ch++)
                                {
                                    ThunderscopeChannel tChannel = cfg.GetChannel(ch);

                                    float full_scale = ((float)tChannel.VoltsDiv / 1000f) * 5f; // 5 instead of 10 for signed

                                    chHeader.chNum = ch;
                                    chHeader.scale = full_scale / 127f; // 127 instead of 255 for signed
                                    chHeader.offset = -((float)tChannel.VoltsOffset); // needs chHeader.scale * 0x80 for signed

                                    // TODO: What is up with samples in the 245-255 range that seem to be spurious or maybe a representation of negative voltages?

                                    // if (ch == 0)
                                    //     logger.LogDebug($"ch {ch}: VoltsDiv={tChannel.VoltsDiv} -> .scale={chHeader.scale}, VoltsOffset={tChannel.VoltsOffset} -> .offset = {chHeader.offset}, Coupling={tChannel.Coupling}");
                                    
                                    // Length of this channel as 'depth'
                                    clientSocket.Send(new ReadOnlySpan<byte>(&chHeader, sizeof(ChannelHeader)));
                                    clientSocket.Send(data.Slice(ch * (int)channelLength, (int)channelLength));
                                }
                            }

                            seqnum++;

                            break;
                        }

                        if (false)
                        {
                            logger.LogDebug("Remote wanted waveform but not ready -- forcing trigger");
                            processingRequestChannel.Write(new ProcessingStartTriggerDto(true, true));
                            // TODO: This doesn't seem like the behavior we want, unless in "AUTO" triggering mode.
                        }
                    }
                }
            }
            catch (OperationCanceledException)
            {
                logger.LogDebug($"{nameof(SocketTask)} stopping");
            }
            catch (SocketException ex)
            {
                if (!ex.Message.Contains("WSACancelBlockingCall"))      // On Windows; can use this string to ignore the SocketException thrown when listener.Close() called
                    throw;
            }
            catch (Exception ex)
            {
                logger.LogCritical(ex, $"{nameof(SocketTask)} error");
                throw;
            }
            finally
            {
                try
                {
                    clientSocket?.Shutdown(SocketShutdown.Both);
                    clientSocket?.Close();
                }
                catch (Exception ex) { }

                logger.LogDebug($"{nameof(SocketTask)} stopped");
            }
        }
    }
}