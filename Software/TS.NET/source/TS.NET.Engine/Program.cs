using Microsoft.Extensions.Logging;
using System.Diagnostics;
using TS.NET;
using TS.NET.Engine;

Console.Title = "Engine";
using (Process p = Process.GetCurrentProcess())
    p.PriorityClass = ProcessPriorityClass.High;

using var loggerFactory = LoggerFactory.Create(builder => builder.AddSimpleConsole(options => { options.SingleLine = true; options.TimestampFormat = "HH:mm:ss "; }).AddFilter(level => level >= LogLevel.Debug));

BlockingChannel<ThunderscopeMemory> memoryPool = new();
for (int i = 0; i < 120; i++)        // 120 = about 1 seconds worth of samples at 1GSPS
    memoryPool.Writer.Write(new ThunderscopeMemory());

Thread.Sleep(1000);

BlockingChannel<ThunderscopeMemory> processingPool = new();
ProcessingTask processingTask = new();
processingTask.Start(loggerFactory, processingPool.Reader, memoryPool.Writer);
InputTask inputTask = new();
inputTask.Start(loggerFactory, memoryPool.Reader, processingPool.Writer);

Console.WriteLine("Running... press any key to stop");
Console.ReadKey();

processingTask.Stop();
inputTask.Stop();