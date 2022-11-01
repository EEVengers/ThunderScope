using Microsoft.Extensions.Logging;
using System;
using System.Text;
using System.Net;
using System.Net.Sockets;
using System.Runtime.InteropServices;

namespace TS.NET.Engine
{
    internal class SCPITask
    {
        private CancellationTokenSource? cancelTokenSource;
        private Task? taskLoop;
        private Socket listener;

        public void Start(
            ILoggerFactory loggerFactory,
            BlockingChannelWriter<HardwareRequestDto> configRequestChannel,
            BlockingChannelReader<HardwareResponseDto> configResponseChannel,
            BlockingChannelWriter<ProcessingRequestDto> processingRequestChannel,
            BlockingChannelReader<ProcessingResponseDto> processingResponseChannel)
        {
            var logger = loggerFactory.CreateLogger("SCPITask");
            cancelTokenSource = new CancellationTokenSource();
            IPEndPoint localEndPoint = new IPEndPoint(IPAddress.Any, 5025);
            listener = new Socket(IPAddress.Any.AddressFamily, SocketType.Stream, ProtocolType.Tcp);
            listener.LingerState = new LingerOption(true, 1);
            listener.Bind(localEndPoint);
            taskLoop = Task.Factory.StartNew(() => Loop(logger, listener, configRequestChannel, configResponseChannel, processingRequestChannel, processingResponseChannel, cancelTokenSource.Token), TaskCreationOptions.LongRunning);
        }

        public void Stop()
        {
            cancelTokenSource?.Cancel();
            listener.Close();
            taskLoop?.Wait();
        }

        private static void Loop(
            ILogger logger,
            Socket listener,
            BlockingChannelWriter<HardwareRequestDto> configRequestChannel,
            BlockingChannelReader<HardwareResponseDto> configResponseChannel,
            BlockingChannelWriter<ProcessingRequestDto> processingRequestChannel,
            BlockingChannelReader<ProcessingResponseDto> processingResponseChannel,
            CancellationToken cancelToken)
        {
            Thread.CurrentThread.Name = "TS.NET SCPI";
            Thread.CurrentThread.Priority = ThreadPriority.BelowNormal;

            logger.LogDebug($"Thread ID: {Thread.CurrentThread.ManagedThreadId}");
            Socket clientSocket = null;

            try
            {
                logger.LogInformation("Starting control plane socket server at :5025");
                listener.Listen(10);
                clientSocket = listener.Accept();
                clientSocket.NoDelay = true;
                logger.LogInformation("Client connected to control plane");
                uint seqnum = 0;

                while (true)
                {
                    byte[] bytes = new byte[1];
                    string command = "";

                    while (true)
                    {
                        cancelToken.ThrowIfCancellationRequested();

                        if (!clientSocket.Poll(10_000, SelectMode.SelectRead)) continue;

                        int numByte = clientSocket.Receive(bytes);

                        if (numByte == 0) continue;

                        string c = Encoding.UTF8.GetString(bytes, 0, 1);

                        if (c == "\n") break;
                        else command += c;
                    }

                    // logger.LogDebug("SCPI command: '{String}'", command);

                    string? r = ProcessSCPICommand(logger, configRequestChannel, configResponseChannel, processingRequestChannel, processingResponseChannel, command, cancelToken);

                    if (r != null)
                    {
                        logger.LogDebug(" -> SCPI reply: '{String}'", r);
                        clientSocket.Send(Encoding.UTF8.GetBytes(r));
                    }
                }
            }
            catch (OperationCanceledException)
            {
                logger.LogDebug($"{nameof(SCPITask)} stopping");
                // throw;
            }
            catch (SocketException ex)
            {
                if (!ex.Message.Contains("WSACancelBlockingCall"))      // On Windows; can use this string to ignore the SocketException thrown when listener.Close() called
                    throw;
            }
            catch (Exception ex)
            {
                logger.LogCritical(ex, $"{nameof(SCPITask)} error");
                throw;
            }
            finally
            {
                try
                {
                    clientSocket?.Shutdown(SocketShutdown.Both);
                    clientSocket?.Close();
                }
                catch (Exception) { }

                logger.LogDebug($"{nameof(SCPITask)} stopped");
            }
        }

        public static string? ProcessSCPICommand(
            ILogger logger,
            BlockingChannelWriter<HardwareRequestDto> hardwareRequestChannel,
            BlockingChannelReader<HardwareResponseDto> hardwareResponseChannel,
            BlockingChannelWriter<ProcessingRequestDto> processingRequestChannel,
            BlockingChannelReader<ProcessingResponseDto> processingResponseChannel,
            string fullCommand,
            CancellationToken cancelToken)
        {
            string? argument = null;
            string? subject = null;
            string command = fullCommand; ;
            bool isQuery = false;

            if (fullCommand.Contains(" "))
            {
                int index = fullCommand.IndexOf(" ");
                argument = fullCommand.Substring(index + 1);
                command = fullCommand.Substring(0, index);
            }
            else if (command.Contains("?"))
            {
                isQuery = true;
                command = fullCommand.Substring(0, fullCommand.Length - 1);
            }

            if (command.StartsWith(":"))
            {
                command = command.Substring(1);
            }

            if (command.Contains(":"))
            {
                int index = command.IndexOf(":");
                subject = command.Substring(0, index);
                command = command.Substring(index + 1);
            }

            bool hasArg = argument != null;

            // logger.LogDebug("o:'{String}', q:{bool}, s:'{String?}', c:'{String?}', a:'{String?}'", fullCommand, isQuery, subject, command, argument);

            if (!isQuery)
            {
                if (subject == null)
                {
                    if (command == "START")
                    {
                        // Start
                        logger.LogDebug("Start acquisition");

                        processingRequestChannel.Write(new ProcessingStartTriggerDto(false, false));
                        // hardwareResponseChannel.Read(cancelToken);     // Maybe need some kind of UID to know this is the correct response? Bodge for now.
                        
                        return null;
                    }
                    else if (command == "STOP")
                    {
                        // Stop
                        logger.LogDebug("Stop acquisition");

                        processingRequestChannel.Write(new ProcessingStopTriggerDto());
                        // hardwareResponseChannel.Read(cancelToken);     // Maybe need some kind of UID to know this is the correct response? Bodge for now.
                        
                        return null;
                    }
                    else if (command == "SINGLE")
                    {
                        // Single capture
                        logger.LogDebug("Single acquisition");

                        processingRequestChannel.Write(new ProcessingStartTriggerDto(false, true));

                        return null;
                    }
                    else if (command == "FORCE")
                    {
                        // force capture
                        logger.LogDebug("Force acquisition");

                        processingRequestChannel.Write(new ProcessingStartTriggerDto(true, true));
                        // processingResponseChannel.Read(cancelToken);    // Maybe need some kind of UID to know this is the correct response? Bodge for now.
                        
                        return null;
                    }
                    else if (command == "DEPTH" && hasArg)
                    {
                        long depth = Convert.ToInt64(argument);
                        // Set depth
                        logger.LogDebug($"Set depth to {depth}S");

                        processingRequestChannel.Write(new ProcessingSetDepthDto(depth));
                        // processingResponseChannel.Read(cancelToken);    // Maybe need some kind of UID to know this is the correct response? Bodge for now.
                        
                        return null;
                    }
                    else if (command == "RATE" && hasArg)
                    {
                        long rate = Convert.ToInt64(argument);
                        // Set rate
                        logger.LogDebug($"Set rate to {rate}Hz");

                        processingRequestChannel.Write(new ProcessingSetRateDto(rate));
                        // processingResponseChannel.Read(cancelToken);    // Maybe need some kind of UID to know this is the correct response? Bodge for now.
                        
                        return null;
                    }
                }
                else if (subject == "TRIG")
                {
                    if (command == "LEV" && hasArg)
                    {
                        double level = Convert.ToDouble(argument);
                        // Set trig level
                        logger.LogDebug($"Set trigger level to {level}V");

                        processingRequestChannel.Write(new ProcessingSetTriggerLevelDto(level));
                        // processingResponseChannel.Read(cancelToken);    // Maybe need some kind of UID to know this is the correct response? Bodge for now.
                        
                        return null;
                    }
                    else if (command == "SOU" && hasArg)
                    {
                        int source = Convert.ToInt32(argument);

                        if (source < 0 || source > 3)
                            source = 0;

                        // Set trig channel
                        logger.LogDebug($"Set trigger source to ch {source}");

                        processingRequestChannel.Write(new ProcessingSetTriggerSourceDto((TriggerChannel)(source+1)));
                        // processingResponseChannel.Read(cancelToken);    // Maybe need some kind of UID to know this is the correct response? Bodge for now.
                        
                        return null;
                    }
                    else if (command == "DELAY" && hasArg)
                    {
                        long delay = Convert.ToInt64(argument);
                        // Set trig delay
                        logger.LogDebug($"Set trigger delay to {delay}fs");

                        processingRequestChannel.Write(new ProcessingSetTriggerDelayDto(delay));
                        // processingResponseChannel.Read(cancelToken);    // Maybe need some kind of UID to know this is the correct response? Bodge for now.
                        
                        return null;
                    }
                    else if (command == "EDGE:DIR" && hasArg)
                    {
                        String dir = argument;
                        // Set direction
                        logger.LogDebug($"Set [edge] trigger direction to {dir}");

                        processingRequestChannel.Write(new ProcessingSetTriggerEdgeDirectionDto(/*dir*/));
                        // processingResponseChannel.Read(cancelToken);    // Maybe need some kind of UID to know this is the correct response? Bodge for now.
                        
                        return null;
                    }
                }
                else if (subject.Length == 1 && Char.IsDigit(subject[0]))
                {
                    int chNum = subject[0] - '0';

                    if (command == "ON" || command == "OFF")
                    {
                        // Turn on/off
                        logger.LogDebug($"Set ch {chNum} enabled {command=="ON"}");

                        hardwareRequestChannel.Write(new HardwareSetEnabledRequest(chNum, command=="ON"));
                        // hardwareResponseChannel.Read(cancelToken);     // Maybe need some kind of UID to know this is the correct response? Bodge for now.

                        return null;
                    }
                    else if (command == "COUP" && hasArg)
                    {
                        String coup = argument;
                        // Set coupling
                        logger.LogDebug($"Set ch {chNum} coupling to {coup}");

                        hardwareRequestChannel.Write(new HardwareSetCouplingRequest(chNum, (coup=="DC1M"?ThunderscopeCoupling.DC:ThunderscopeCoupling.AC)));
                        // hardwareResponseChannel.Read(cancelToken);     // Maybe need some kind of UID to know this is the correct response? Bodge for now.

                        return null;
                    }
                    else if (command == "OFFS" && hasArg)
                    {
                        double offset = Convert.ToDouble(argument);
                        // Set offset
                        logger.LogDebug($"Set ch {chNum} offset to {offset}V");

                        offset = Math.Clamp(offset, -0.5, 0.5);

                        hardwareRequestChannel.Write(new HardwareSetOffsetRequest(chNum, offset));
                        // hardwareResponseChannel.Read(cancelToken);     // Maybe need some kind of UID to know this is the correct response? Bodge for now.

                        return null;
                    }
                    else if (command == "RANGE" && hasArg)
                    {
                        double range = Convert.ToDouble(argument);
                        // Set range
                        
                        int[] available_mv = { 1, 2, 5, 10, 20, 50, 100, 200, 500, 1000, 2000, 5000, 10000 };

                        int range_mv = (int)((range * 1000d) / 10d);
                        int computedRange = available_mv[0];

                        for (int i = available_mv.Length - 1; i >= 0; i--)
                        {
                            if (available_mv[i] > computedRange && available_mv[i] <= range_mv)
                            {
                                computedRange = available_mv[i];
                            }
                        }

                        logger.LogDebug($"Set ch {chNum} range to {range}V -> {range_mv}mV -> {computedRange} computed mV");

                        hardwareRequestChannel.Write(new HardwareSetVdivRequest(chNum, computedRange));
                        // hardwareResponseChannel.Read(cancelToken);     // Maybe need some kind of UID to know this is the correct response? Bodge for now.

                        return null;
                    }
                }
            }
            else
            {
                if (subject == null)
                {
                    if (command == "*IDN")
                    {
                        logger.LogDebug("Reply to *IDN? query");
                        return "ThunderScope,(Bridge),NOSERIAL,NOVERSION\n";
                    }
                    else if (command == "DEPTHS")
                    {
                        logger.LogDebug("Reply to DEPTHS? query");
                        var s = "";
                        for (int mul = 1000; mul <= 10 * 1000000; mul *= 10) // TODO: Single-source-of-truth for top end
                        {
                            s += mul + "," + (mul*2.5) + "," + (mul*5) + ",";
                        }
                        return s + "\n";
                    }
                     else if (command == "RATES")
                    {
                        logger.LogDebug("Reply to RATES? query");
                        return "" + (1000000 * 4) + ",\n";
                    }
                }
            }

            logger.LogWarning("Unknown SCPI Operation: {String}", fullCommand);

            return null;
        }
    }
}