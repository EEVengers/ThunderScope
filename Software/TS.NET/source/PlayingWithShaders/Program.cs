// https://www.shadertoy.com/view/slX3W2
// https://iquilezles.org/www/articles/distance/distance.htm

using OpenTK.Graphics.OpenGL4;
using OpenTK.Mathematics;
using OpenTK.Windowing.Common;
using OpenTK.Windowing.Desktop;
using PlayingWithShaders;


Console.WriteLine("Hello, World!");

NativeWindowSettings nativeWindowSettings = new NativeWindowSettings
{
    Flags = ContextFlags.Debug,
    Profile = ContextProfile.Core,
    Title = "PlayingWithShaders",
    NumberOfSamples = 0,
    Size = new Vector2i(1024, 768),
    //APIVersion = new Version(4, 2),
};

using (var window = new OscilloscopeDisplay(GameWindowSettings.Default, nativeWindowSettings))
{
    //GLDebugLog.Message += OnMessage;
    //window.RenderFrame += OnRenderFrame;
    //window.UpdateFrame += OnUpdate;
    //Thread.Sleep(3000);
    window.Run();
}


//void OnUpdate(FrameEventArgs obj)
//{
//    var r = new Random();
//    var seriesIdx = r.Next(_graph.State.Series.Count);
//    var series = _graph.State.Series[seriesIdx];
//    var (x, y) = ScatterGraphGenerator.GenNormalDistPt(r);
//    var pt = DateTime.UtcNow.Ticks;
//    var str = pt.ToString();
//    var offset = series.Points.Count;
//    series.Add(str, x, y);
//    _graph.State.Update((float)obj.Time);
//}

//void OnMessage(object sender, DebugMessageEventArgs e)
//{
//    Console.Error.WriteLine($"[{e.ID}]{e.Severity}|{e.Type}/{e.Source}: {e.Message}");
//}

//void OnRenderFrame(FrameEventArgs frameEventArgs)
//{
//    var cur = _timer.Elapsed;
//    var delta = cur - _lastFrame;
//    _lastFrame = cur;
//    GL.Clear(ClearBufferMask.ColorBufferBit | ClearBufferMask.DepthBufferBit);
//    GL.Viewport(0, 0, _window.ClientSize.X, _window.ClientSize.Y);
//    var aspect = _window.ClientSize.X / (float)_window.ClientSize.Y;
//    _graph.State.Camera.Current.AspectRatio = aspect;
//    _graph.State.Camera.Target.AspectRatio = aspect;
//    _graph.Render();

//    _window.Context.SwapBuffers();
//}

//double onUpdateTime = 1;

//GLDebugLog.Message += OnMessage;
//window.RenderFrame += OnRenderFrame;
//window.UpdateFrame += OnUpdate;
//window.Run();

//void OnMessage(object sender, DebugMessageEventArgs e)
//{
//    Console.Error.WriteLine($"[{e.ID}]{e.Severity}|{e.Type}/{e.Source}: {e.Message}");
//}

//void OnRenderFrame(FrameEventArgs frameEventArgs)
//{
//    GL.Clear(ClearBufferMask.ColorBufferBit | ClearBufferMask.DepthBufferBit);
//    GL.Viewport(0, 0, window.ClientSize.X, window.ClientSize.Y);


//    window.Context.SwapBuffers();
//    window.Title = $"OnRenderFrame: {(1.0 / frameEventArgs.Time):F2} OnUpdate: {(1.0 / onUpdateTime):F2}";
//}

//void OnUpdate(FrameEventArgs frameEventArgs)
//{
//    onUpdateTime = frameEventArgs.Time;
//}