using System.Reflection;
using ObjectTK;
using ObjectTK.GLObjects;

namespace PlayingWithShaders {
    public static class ShaderExtensions {

        private static readonly Dictionary<string, string> _readCache = new Dictionary<string, string>();

        private static string LoadFromRes(string name) {
            if (_readCache.TryGetValue(name, out var res)) {
                return res;
            }
            // retrieves THIS assembly, not the one that started the process.
            // in this way, it's always certain to load from here.
            var assembly = Assembly.GetExecutingAssembly();
            var resources = assembly.GetManifestResourceNames();
            var resourceName = resources.Single(s => s.EndsWith(name));

            using var stream = assembly.GetManifestResourceStream(resourceName);
            using var reader = new StreamReader(stream!);
            var result = reader.ReadToEnd();
            _readCache[name] = result;
            return result;
        }
        
        /// Loads a vertex and fragment shader from an embedded resource in the executing assembly.
        public static ShaderProgram EmbeddedResVertFrag(this GLShaderFactory fact, string name, string vertName, string fragName) {
            var vertSrc = LoadFromRes(vertName);
            var fragSrc = LoadFromRes(fragName);

            return fact.VertexFrag(name, vertSrc, fragSrc);
        }
        
    }
}
