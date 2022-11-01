using Microsoft.Extensions.Logging;
using System.Diagnostics;
using TS.NET;
using TS.NET.Engine;

// The aim is to have a thread-safe lock-free dataflow architecture (to prevent various classes of bugs).
// The use of async/await for processing is avoided as the task thread pool is of little use here.
//   Fire up threads to handle specific loops with extremely high utilisation. These threads are created once only, so the overhead of thread creation isn't important (one of the design goals of async/await).
//   Future work might pin CPU cores to exclusively process a particular thread, perhaps with high/rt priority.
//   Task.Factory.StartNew(() => Loop(...TaskCreationOptions.LongRunning) is just a shorthand for creating a new Thread to process a loop, the task thread pool isn't used. 
// The use of hardwareRequestChannel is to prevent 2 classes of bug: locking and thread safety.
//   By serialising the config-update/data-read it also allows for specific behaviours (like pausing acquisition on certain config updates) and ensuring a perfect match between sample-block & hardware configuration that created it.

Console.WriteLine("Starting...");

Console.Title = "Engine";
using (Process p = Process.GetCurrentProcess())
    p.PriorityClass = ProcessPriorityClass.High;

using var loggerFactory = LoggerFactory.Create(builder => builder.AddSimpleConsole(options => { options.SingleLine = true; options.TimestampFormat = "HH:mm:ss "; }).AddFilter(level => level >= LogLevel.Debug));

// Instantiate dataflow channels
const int bufferLength = 120;       // 120 = about 1 seconds worth of samples at 1GSPS
BlockingChannel<ThunderscopeMemory> inputChannel = new(bufferLength);
for (int i = 0; i < bufferLength; i++)
    inputChannel.Writer.Write(new ThunderscopeMemory());
BlockingChannel<InputDataDto> processingChannel = new();
BlockingChannel<HardwareRequestDto> hardwareRequestChannel = new();
BlockingChannel<HardwareResponseDto> hardwareResponseChannel = new();
BlockingChannel<ProcessingRequestDto> processingRequestChannel = new();
BlockingChannel<ProcessingResponseDto> processingResponseChannel = new();

Thread.Sleep(1000);

// Find thunderscope
var devices = Thunderscope.IterateDevices();
if (devices.Count == 0)
    throw new Exception("No thunderscopes found");

// Start threads
ProcessingTask processingTask = new();
processingTask.Start(loggerFactory, processingChannel.Reader, inputChannel.Writer, processingRequestChannel.Reader, processingResponseChannel.Writer);
InputTask inputTask = new();
inputTask.Start(loggerFactory, devices[0], inputChannel.Reader, processingChannel.Writer, hardwareRequestChannel.Reader, hardwareResponseChannel.Writer);
SocketTask socketTask = new();
socketTask.Start(loggerFactory, processingRequestChannel.Writer);
SCPITask scpiTask = new();
scpiTask.Start(loggerFactory, hardwareRequestChannel.Writer, hardwareResponseChannel.Reader, processingRequestChannel.Writer, processingResponseChannel.Reader);

Console.WriteLine("Running... press any key to stop");
Console.ReadKey();

processingTask.Stop();
inputTask.Stop();
socketTask.Stop();
scpiTask.Stop();