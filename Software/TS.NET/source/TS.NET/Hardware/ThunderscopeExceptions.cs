using System;
namespace TS.NET
{
    public class ThunderscopeException : Exception
    {
        public ThunderscopeException(string v) : base(v) { }
    }

    public class ThunderscopeNotRunningException : ThunderscopeException
    {
        public ThunderscopeNotRunningException(string v) : base(v) { }
    }

    public class ThunderscopeRecoverableOverflowException : ThunderscopeException
    {
        public ThunderscopeRecoverableOverflowException(string v) : base(v) { }
    }

    public class ThunderscopeMemoryOutOfMemoryException : ThunderscopeRecoverableOverflowException
    {
        public ThunderscopeMemoryOutOfMemoryException(string v) : base(v) { }
    }

    public class ThunderscopeFIFOOverflowException : ThunderscopeRecoverableOverflowException
    {
        public ThunderscopeFIFOOverflowException(string v) : base(v) { }
    }
}