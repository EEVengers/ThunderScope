using System;
using ObjectTK;
using ObjectTK.GLObjects;
using OpenTK.Mathematics;

namespace PlayingWithShaders {
    public static class Primitives {
         
        private static readonly Vector2[] quadVertices = {
            new Vector2(-1, -1),
            new Vector2(-1,  1),
            new Vector2( 1,  1),
            new Vector2( 1, -1),
        };

        private static readonly int[] quadIndices = {
            2, 1, 0,
            2, 3, 0
        };

        private static readonly Lazy<Buffer<Vector2>> _quadPositionBuffer = new Lazy<Buffer<Vector2>>(() => GLFactory.Buffer.ArrayBuffer("Quad Positions", quadVertices));
        private static readonly Lazy<Buffer<int>> _quadIndexBuffer = new Lazy<Buffer<int>>(() => GLFactory.Buffer.ArrayBuffer("Quad Indices", quadIndices));
        private static readonly Lazy<VertexArray> _quadVertexArray = 
            new Lazy<VertexArray>(() =>
                GLFactory.VertexArray.IndexAndVertexBuffers("Quad", _quadIndexBuffer.Value, _quadPositionBuffer.Value)
            );

        /// A vertex array with a simple quad from (-1.-1) to (1,1).
        public static VertexArray Quad => _quadVertexArray.Value;


    }
}
