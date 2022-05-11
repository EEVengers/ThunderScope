using Avalonia;
using Avalonia.Controls;
using Avalonia.Markup.Xaml;
using Avalonia.Threading;
using Cloudtoid.Interprocess;
using FluentAvalonia.Styling;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;
using ScottPlot;
using ScottPlot.Avalonia;
using System;
using System.Buffers;
using System.Diagnostics;
using System.Threading;
using System.Threading.Tasks;

namespace TS.NET.UI.Avalonia
{
    public partial class MainWindow : Window
    {
        private AvaPlot avaPlot1;
        private Label lblStatus;
        private NumericUpDown upDownIndex;
        private TextBlock textBlockInfo;
        private double[] channel1 = null;
        private double[] channel2 = null;
        private double[] channel3 = null;
        private double[] channel4 = null;
        private ScottPlot.Plottable.HLine triggerLine;
        private CancellationTokenSource cancellationTokenSource;
        private Task displayTask;
        //private IPublisher forwarderInput;
        //private Memory<byte> forwarderInputBuffer = new byte[10000];
        private ILoggerFactory loggerFactory = LoggerFactory.Create(builder => builder.AddConsole());

        public MainWindow()
        {
            InitializeComponent();
#if DEBUG
            this.AttachDevTools();
#endif

            //var faTheme = AvaloniaLocator.Current.GetService<FluentAvaloniaTheme>();
            //faTheme.RequestedTheme = "Dark";
        }

        private void InitializeComponent()
        {
            AvaloniaXamlLoader.Load(this);

            channel1 = ArrayPool<double>.Shared.Rent(1);
            channel2 = ArrayPool<double>.Shared.Rent(1);
            channel3 = ArrayPool<double>.Shared.Rent(1);
            channel4 = ArrayPool<double>.Shared.Rent(1);

            avaPlot1 = this.Find<AvaPlot>("AvaPlot1");
            lblStatus = this.Find<Label>("LblStatus");
            upDownIndex = this.Find<NumericUpDown>("UpDownIndex");
            textBlockInfo = this.Find<TextBlock>("TextInfo");
            //avaPlot1.Plot.Style(Style.Gray2);
            avaPlot1.Plot.Legend(true, Alignment.LowerRight);
            ResetSeries();
            avaPlot1.Plot.XAxis.Label("Time (ns)");
            avaPlot1.Plot.YAxis.Label("ADC reading");
            avaPlot1.Plot.SetAxisLimitsX(0, 1000);
            avaPlot1.Plot.SetAxisLimitsY(0, 255);
            //avaPlot1.Plot.YAxis.LockLimits(true);
            //avaPlot1.Plot.XAxis.LockLimits(true);
            //avaPlot1.Configuration.Pan = false;
            triggerLine = avaPlot1.Plot.AddHorizontalLine(200, System.Drawing.Color.White, 2, LineStyle.Dash);

            //using var loggerFactory = LoggerFactory.Create(builder => builder.AddConsole());
            cancellationTokenSource = new();
            displayTask = Task.Factory.StartNew(() => UpdateChart(cancellationTokenSource.Token), TaskCreationOptions.LongRunning);
        }

        private void ResetSeries()
        {
            avaPlot1.Plot.Clear();
            avaPlot1.Plot.AddSignal(channel1, 250000000, null, "Ch1");
            avaPlot1.Plot.AddSignal(channel2, 250000000, null, "Ch2");
            avaPlot1.Plot.AddSignal(channel3, 250000000, null, "Ch3");
            avaPlot1.Plot.AddSignal(channel4, 250000000, null, "Ch4");
        }

        private unsafe void UpdateChart(CancellationToken cancelToken)
        {
            try
            {
                uint bufferLength = 4 * 100 * 1000 * 1000;      //Maximum record length = 100M samples per channel
                ThunderscopeBridgeReader bridge = new(new ThunderscopeBridgeOptions("ThunderScope.1", bufferLength), loggerFactory);
                var bridgeReadSemaphore = bridge.GetReaderSemaphore();

                Stopwatch stopwatch = Stopwatch.StartNew();

                int count = 0;
                while (true)
                {
                    cancelToken.ThrowIfCancellationRequested();
                    if (bridgeReadSemaphore.Wait(500))
                    {
                        ulong channelLength = (ulong)bridge.Configuration.ChannelLength;
                        //uint viewportLength = (uint)bridge.Configuration.ChannelLength;//1000;
                        uint viewportLength = 1000000;// (uint)upDownIndex.Value;
                        if (viewportLength < 100)
                            viewportLength = 100;
                        if (viewportLength > 10000000)
                            viewportLength = (uint)channelLength;

                        if (channel1.Length != viewportLength)
                        {
                            channel1 = new double[viewportLength];
                            ResetSeries();
                        }
                        if (channel2.Length != viewportLength)
                        {
                            channel2 = new double[viewportLength];
                            ResetSeries();
                        }
                        if (channel3.Length != viewportLength)
                        {
                            channel3 = new double[viewportLength];
                            ResetSeries();
                        }
                        if (channel4.Length != viewportLength)
                        {
                            channel4 = new double[viewportLength];
                            ResetSeries();
                        }

                        var cfg = bridge.Configuration;
                        var status = $"[Horizontal] Displaying {AddPrefix(viewportLength)} samples of {AddPrefix(channelLength)} [Acquisitions] displayed: {bridge.Monitoring.TotalAcquisitions - bridge.Monitoring.MissedAcquisitions}, missed: {bridge.Monitoring.MissedAcquisitions}, total: {bridge.Monitoring.TotalAcquisitions}";
                        var data = bridge.Span;
                        int offset = (int)((channelLength / 2) - (viewportLength / 2));
                        data.Slice(offset, (int)viewportLength).ToDoubleArray(channel1); offset += (int)channelLength;
                        data.Slice(offset, (int)viewportLength).ToDoubleArray(channel2); offset += (int)channelLength;
                        data.Slice(offset, (int)viewportLength).ToDoubleArray(channel3); offset += (int)channelLength;
                        data.Slice(offset, (int)viewportLength).ToDoubleArray(channel4);
                        bridge.DataRead();

                        //var reading = bridge.Span[(int)upDownIndex.Value];
                        count++;
                        string textInfo = JsonConvert.SerializeObject(cfg, Formatting.Indented, new Newtonsoft.Json.Converters.StringEnumConverter()); 
                        //@$"Channels: {cfg.Channels}
                        //Channel length: {cfg.ChannelLength}
                        //Trigger channel: {cfg.TriggerChannel}
                        //Trigger mode: {cfg.TriggerMode}

                        //Channel 1:
                        //DC coupling
                        //20MHz bandwidth";
                        Dispatcher.UIThread.InvokeAsync(() =>
                        {
                            avaPlot1.Render();
                            textBlockInfo.Text = textInfo;
                            lblStatus.Content = status;
                        });
                        stopwatch.Restart();
                        Thread.Sleep(100);
                    }
                }
            }
            catch (OperationCanceledException)
            {
                //logger.LogDebug("UpdateChart stopping");
                throw;
            }
            catch (Exception ex)
            {
                //logger.LogCritical(ex, "UpdateChart error");
                throw;
            }
            finally
            {
                //logger.LogDebug("UpdateChart stopped");
            }
        }

        public static string AddPrefix(double value, string unit = "")
        {
            string[] superSuffix = new string[] { "K", "M", "G", "T", "P", "A", };
            string[] subSuffix = new string[] { "m", "u", "n", "p", "f", "a" };
            double v = value;
            int exp = 0;
            while (v - Math.Floor(v) > 0)
            {
                if (exp >= 18)
                    break;
                exp += 3;
                v *= 1000;
                v = Math.Round(v, 12);
            }

            while (Math.Floor(v).ToString().Length > 3)
            {
                if (exp <= -18)
                    break;
                exp -= 3;
                v /= 1000;
                v = Math.Round(v, 12);
            }
            if (exp > 0)
                return v.ToString() + subSuffix[exp / 3 - 1] + unit;
            else if (exp < 0)
                return v.ToString() + superSuffix[-exp / 3 - 1] + unit;
            return v.ToString() + unit;
        }
    }
}
