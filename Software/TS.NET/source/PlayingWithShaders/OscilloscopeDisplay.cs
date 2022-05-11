using Microsoft.Extensions.Logging;
using ObjectTK;
using ObjectTK.GLObjects;
using OpenTK.Graphics.OpenGL4;
using OpenTK.Mathematics;
using OpenTK.Windowing.Common;
using OpenTK.Windowing.Desktop;
using OpenTK.Windowing.GraphicsLibraryFramework;
using System;
using TS.NET;

// https://github.com/opentk/LearnOpenTK/blob/master/Chapter1/2-HelloTriangle/Window.cs
// https://github.com/jbentham/streaming/blob/main/rpi_opengl_graph.c
// https://iosoft.blog/2020/12/15/oscilloscope-display-opengl-raspberry-pi/
// https://vitaliburkov.wordpress.com/2016/09/17/simple-and-fast-high-quality-antialiased-lines-with-opengl/

namespace PlayingWithShaders
{
    public class OscilloscopeDisplay : GameWindow
    {
        private ILoggerFactory loggerFactory = LoggerFactory.Create(builder => builder.AddConsole());
        private ShaderProgram shader;
        ThunderscopeBridgeReader bridge;
        IInterprocessSemaphoreWaiter bridgeReadSemaphore;
        int vbo;
        int vao;

        public OscilloscopeDisplay(GameWindowSettings gameWindowSettings, NativeWindowSettings nativeWindowSettings) : base(gameWindowSettings, nativeWindowSettings) { }

        protected override void OnLoad()
        {
            base.OnLoad();

            uint bufferLength = 4 * 100 * 1000 * 1000;      //Maximum record length = 100M samples per channel
            bridge = new(new ThunderscopeBridgeOptions("ThunderScope.1", bufferLength), loggerFactory);
            bridgeReadSemaphore = bridge.GetReaderSemaphore();
            int channelLength = bridge.Configuration.ChannelLength;

            shader = GLFactory.Shader.EmbeddedResVertFrag("Graph", "graph2.vertex.glsl", "graph.fragment.glsl");
            GL.Hint(HintTarget.LineSmoothHint, HintMode.Nicest);
            GL.Enable(EnableCap.Blend);
            GL.BlendFunc(BlendingFactor.SrcAlpha, BlendingFactor.OneMinusSrcAlpha);
            GL.ClearColor(new Color4(0x21, 0x21, 0x21, 0xff));

            //====== var buffer = GLFactory.Buffer.ArrayBuffer("Channel1", graph); ======
            vbo = GL.GenBuffer();
            //var label = $"Buffer: {name}";
            GL.BindBuffer(BufferTarget.ArrayBuffer, vbo);
            //GL.ObjectLabel(ObjectLabelIdentifier.Buffer, vbo, label.Length, label);
            int elemSize;
            unsafe
            {
                elemSize = sizeof(byte);
            }
            //GL.BufferData(BufferTarget.ArrayBuffer, elemSize * graph.Length, graph, BufferUsageHint.DynamicRead);
            GL.BufferData(BufferTarget.ArrayBuffer, elemSize * channelLength, bridge.DataPointer, BufferUsageHint.DynamicRead);
            GL.BindBuffer(BufferTarget.ArrayBuffer, 0);
            // ============================================================


            // ====== vertexArray = GLFactory.VertexArray.FromBuffers("Channel1", buffer); ======
            vao = GL.GenVertexArray();
            //var label = $"VertexArray: {name}";
            GL.BindVertexArray(vao);
            //GL.ObjectLabel(ObjectLabelIdentifier.VertexArray, vao, name.Length, label);

            GL.BindBuffer(BufferTarget.ArrayBuffer, vbo);
            GL.EnableVertexAttribArray(0);
            //GL.VertexAttribPointer(0, 1, VertexAttribPointerType.Int, false, elemSize, 0);
            GL.VertexAttribIPointer(0, 1, VertexAttribIntegerType.UnsignedByte, elemSize, IntPtr.Zero);

            // clean up:
            GL.BindBuffer(BufferTarget.ArrayBuffer, 0);
            GL.BindVertexArray(0);
            //=========================
        }

        protected unsafe override void OnRenderFrame(FrameEventArgs args)
        {
            base.OnRenderFrame(args);

            if (bridgeReadSemaphore.Wait(500))
            {
                int channelLength = bridge.Configuration.ChannelLength;


                GL.UseProgram(shader.Handle);

                //GL.Uniform1(shader.Uniforms["ScaleX"].Location, 1.0f);
                //GL.Uniform1(shader.Uniforms["OffsetX"].Location, 0.0f);
                var scale = 1.0f / 128.0f;
                GL.Uniform1(shader.Uniforms["ScaleY"].Location, scale);
                GL.Uniform1(shader.Uniforms["OffsetY"].Location, -1f);     //The scaling required to map input space to opengl space
                GL.Uniform4(shader.Uniforms["Color"].Location, Color4.Red);

                GL.BindBuffer(BufferTarget.ArrayBuffer, vbo);
                GL.BufferData(BufferTarget.ArrayBuffer, 1 * channelLength, bridge.DataPointer, BufferUsageHint.DynamicRead);
                GL.BindBuffer(BufferTarget.ArrayBuffer, 0);

                GL.Clear(ClearBufferMask.ColorBufferBit | ClearBufferMask.DepthBufferBit);

                //GL.BindVertexArray(vertexArray.Handle);
                GL.BindVertexArray(vao);
                // This is old OpenGL. Consider modern OpenGL at some point https://stackoverflow.com/questions/3484260/opengl-line-width
                GL.LineWidth(1.0f);
                GL.DrawArrays(PrimitiveType.LineStrip, 0, channelLength);
                GL.BindVertexArray(0);

                GL.UseProgram(0);
                SwapBuffers();
                bridge.DataRead();
            }
        }

        protected override void OnUpdateFrame(FrameEventArgs e)
        {
            base.OnUpdateFrame(e);

            if (KeyboardState.IsKeyDown(Keys.Escape))
            {
                Close();
            }
        }

        protected override void OnResize(ResizeEventArgs e)
        {
            base.OnResize(e);

            GL.Viewport(0, 0, Size.X, Size.Y);
        }
    }
}
