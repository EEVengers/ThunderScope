using System;

namespace TS.NET.Semaphore.Posix
{
    internal class PosixSempahoreException
        : Exception
    {
        public PosixSempahoreException(string message)
            : base(message)
        {
        }

        public PosixSempahoreException(int errorCode)
            : base($"Semaphore exception with inner code = {errorCode}")
        {
        }
    }

    internal class InvalidPosixSempahoreException : PosixSempahoreException
    {
        public InvalidPosixSempahoreException()
            : base($"The specified semaphore does not exist or it is invalid.")
        {
        }
    }

    internal class PosixSempahoreNotExistsException : PosixSempahoreException
    {
        public PosixSempahoreNotExistsException()
            : base($"The specified semaphore does not exist.")
        {
        }
    }

    internal class PosixSempahoreExistsException : PosixSempahoreException
    {
        public PosixSempahoreExistsException()
            : base("A sempahore with this name already exists")
        {
        }
    }

    internal class PosixSempahoreUnauthorizedAccessException : PosixSempahoreException
    {
        public PosixSempahoreUnauthorizedAccessException()
            : base("The semaphore exists, but the caller does not have permission to open it.")
        {
        }
    }
}