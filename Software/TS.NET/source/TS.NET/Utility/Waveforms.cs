namespace TS.NET;

public static class Waveforms
{
    public static void Sine(Span<byte> buffer, double samplingRate, double frequency, double scaleRelativeToFull = 1.0)
    {
        int samplesForOneCycle = (int)(samplingRate / frequency);
        if (buffer.Length % samplesForOneCycle != 0)
            throw new ArgumentException("buffer length not integer multiple of (samplingRate/frequency) [aka length for one cycle]");

        var sine = MathNet.Numerics.Generate.Sinusoidal(samplesForOneCycle, samplingRate, frequency, 1);
        var scale = 127.0 * scaleRelativeToFull;
        for (int i = 0; i < samplesForOneCycle; i++)
        {
            //buffer[i] = (byte)((sine[i] * 127.0) + 127.0);  // Convert double sine to byte sine
            buffer[i] = (byte)((sine[i] * scale) + 127.0);  // Convert double sine to byte sine
        }
        var copySource = buffer.Slice(0, samplesForOneCycle);
        for (int n = 1; n < (buffer.Length / samplesForOneCycle); n++)                // Copy byte sines throughout whole buffer
        {
            copySource.CopyTo(buffer.Slice(n * samplesForOneCycle, samplesForOneCycle));
        }
    }

    public static void FourChannelCount(Span<byte> buffer)
    {
        buffer[0] = 1;
        buffer[1] = 2;
        buffer[2] = 3;
        buffer[3] = 4;
        int blocks = buffer.Length / 4;
        var source = buffer.Slice(0, 4);
        for (int i = 0; i < blocks; i++)
        {
            source.CopyTo(buffer.Slice(i * 4, 4));
        }
    }

    public static void FourChannelSine(Span<byte> buffer, double samplingRate, double frequency)
    {
        var channelLength = buffer.Length / 4;
        Span<byte> singleChannelBuffer1 = new byte[channelLength];
        Sine(singleChannelBuffer1, samplingRate, frequency);
        Span<byte> singleChannelBuffer2 = new byte[channelLength];
        Sine(singleChannelBuffer2, samplingRate, frequency * 2, 0.75);
        Span<byte> singleChannelBuffer3 = new byte[channelLength];
        Sine(singleChannelBuffer3, samplingRate, frequency * 4, 0.5);
        Span<byte> singleChannelBuffer4 = new byte[channelLength];
        Sine(singleChannelBuffer4, samplingRate, frequency* 8, 0.25);
        // Now interleave samples
        for (int i = 0; i < channelLength; i++)
        {
            buffer[i * 4] = singleChannelBuffer1[i];
            buffer[(i * 4) + 1] = singleChannelBuffer2[i];
            buffer[(i * 4) + 2] = singleChannelBuffer3[i];
            buffer[(i * 4) + 3] = singleChannelBuffer4[i];
        }
    }

    public static void TwoChannelCount(Span<byte> buffer)
    {
        buffer[0] = 0;
        buffer[1] = 1;
        int blocks = buffer.Length / 2;
        var source = buffer.Slice(0, 2);
        for (int i = 0; i < blocks; i++)
        {
            source.CopyTo(buffer.Slice(i * 2, 2));
        }
    }

    public static void Oversampling_1Channel_2Avg(Span<byte> buffer)
    {
        byte counter = 0;
        for(int i = 0; i < buffer.Length; i += 2)
        {
            buffer[i] = counter;
            buffer[i + 1] = counter;
            counter++;
        }
    }
}