using Cloudtoid.Interprocess;
using Microsoft.Extensions.Logging;
using System.Diagnostics;
using TS.NET;

Console.Title = "Simulator";
using (Process p = Process.GetCurrentProcess())
    p.PriorityClass = ProcessPriorityClass.High;

int samplingRate = 1000000000;
int byteBufferSize = 8000000;
int frequency = 1000000;
int samplesForOneCycle = samplingRate / frequency;

// Configure interprocess comms
using var loggerFactory = LoggerFactory.Create(builder => builder.AddSimpleConsole(options => { options.SingleLine = true; options.TimestampFormat = "HH:mm:ss "; }).AddFilter(level => level >= LogLevel.Debug));
var logger = loggerFactory.CreateLogger("Simulator");
var factory = new QueueFactory(loggerFactory);
var options = new QueueOptions(queueName: "ThunderScope", bytesCapacity: 4 * byteBufferSize);
using var publisher = factory.CreatePublisher(options);

Memory<byte> waveformBytes = new byte[byteBufferSize];
//Waveforms.FourChannelSine(sineBytes.Span, samplingRate, frequency);
Waveforms.FourChannelCount(waveformBytes.Span);

// Transmit messages
ulong counter = 0;
ulong previousCount = 0;
var startTimestamp = DateTime.UtcNow;
int totalTime = 0;
Stopwatch oneSecond = Stopwatch.StartNew();
while (true)
{
    if (publisher.TryEnqueue(waveformBytes.Span))
    {
        counter++;
        //logger.LogInformation($"Enqueue #{counter}");
    }
    totalTime += 8;

    if (oneSecond.ElapsedMilliseconds >= 1000)
    {
        logger.LogDebug($"Counter: {counter}, counts/sec: {counter - previousCount}, samples sent: {counter * 8000000}");
        previousCount = counter;
        oneSecond.Restart();
    }

    var duration = DateTime.UtcNow - startTimestamp;
    var sleepTime = totalTime - (int)duration.TotalMilliseconds;
    if (sleepTime < 0)
        sleepTime = 0;
    Thread.Sleep(sleepTime);
}