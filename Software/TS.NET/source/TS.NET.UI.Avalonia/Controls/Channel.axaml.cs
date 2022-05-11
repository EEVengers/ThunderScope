using Avalonia;
using Avalonia.Controls;
using Avalonia.Markup.Xaml;

namespace TS.NET.UI.Avalonia.Controls
{
    public partial class Channel : UserControl
    {
        public Channel()
        {
            InitializeComponent();
        }

        private void InitializeComponent()
        {
            AvaloniaXamlLoader.Load(this);
        }
    }
}
