// See https://aka.ms/new-console-template for more information
using System.Diagnostics;
using System.Runtime.InteropServices;
using TS.NET;

using (Process p = Process.GetCurrentProcess())
    p.PriorityClass = ProcessPriorityClass.High;

Console.WriteLine("Waiting for key press...");
Console.ReadKey();

Span<byte> data = new byte[8 * 1000000];
ChannelCircularAlignedBuffer buffer = new ChannelCircularAlignedBuffer(10 * 1000000);

data.Fill(1);
buffer.Write(data);
data.Fill(2);
buffer.Write(data);

Span<byte> readData = new byte[10 * 1000000];
buffer.Read(readData, 7000000);

return;
unsafe
{

    ThunderscopeMemory block = new();
    Console.WriteLine($"Starting acquisition, block size: {ThunderscopeMemory.Length}");

    var devices = Thunderscope.IterateDevices();
    if (devices.Count == 0)
        throw new Exception("No thunderscopes found");
    Thunderscope ts = new Thunderscope();
    ts.Open(devices[0]);
    ts.EnableChannel(0);
    ts.EnableChannel(1);
    ts.EnableChannel(2);
    ts.EnableChannel(3);
    ts.Start();

    ulong counter = 0;
    Stopwatch stopwatch = Stopwatch.StartNew();
    while (!Console.KeyAvailable)
    {
        ts.Read(block);
        counter++;
        if (stopwatch.ElapsedMilliseconds > 1000)
        {
            stopwatch.Restart();
            Console.WriteLine($"{counter * ThunderscopeMemory.Length}");
        }
    }

    Console.WriteLine($"devices count: {devices.Count}");
    Console.ReadKey();
}


