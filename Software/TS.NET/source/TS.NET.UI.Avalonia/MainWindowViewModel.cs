using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TS.NET.UI.Avalonia.Controls;

namespace TS.NET.UI.Avalonia
{
    internal class MainWindowViewModel
    {
        public ChannelViewModel Channel1 { get; set; } = new ChannelViewModel() { Name = "Channel 1" };
        public ChannelViewModel Channel2 { get; set; } = new ChannelViewModel() { Name = "Channel 2" };
        public ChannelViewModel Channel3 { get; set; } = new ChannelViewModel() { Name = "Channel 3" };
        public ChannelViewModel Channel4 { get; set; } = new ChannelViewModel() { Name = "Channel 4" };
    }
}
