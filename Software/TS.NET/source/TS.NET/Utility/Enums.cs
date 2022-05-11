namespace TS.NET;

public enum Channels : byte
{
    None = 0,
    One = 1,
    Two = 2,
    Three = 3,
    Four = 4
}

public enum ChannelLength : ulong
{
    OneK = 1000,
    OneHundredM = 100000000
}

public enum HorizontalSumLength
{
    None = 1,
    By2 = 2,
    By4 = 3,
    By8 = 4,
    By16 = 5,
    By32 = 6,
    By64 = 7,
    By128 = 8,
    By256 = 9,
    By512 = 10,
    By1024 = 11,
    By2048 = 12,
    By4096 = 13,
    By8192 = 14,
    By16384 = 15,
    By32768 = 16,
    By65536 = 17,
    By131072 = 18,
    By262144 = 19,
    By524288 = 20,
    By1048576 = 21,
    By2097152 = 22,
    By4194304 = 23,
    By8388608 = 24
};

public enum TriggerChannel : byte
{
    None = 0,
    One = 1,
    Two = 2,
    Three = 3,
    Four = 4
}

public enum TriggerMode : byte
{
    Auto = 1,
    Normal = 2,
    Single_Unarmed = 3,
    Single_Armed = 4,
}
public enum ThunderscopeChannelDataType : byte
{
    Byte = 1,
    Int16 = 2,
    Int32 = 3
}

public static class HorizontalSumUtility
{
    public static int ToDivisor(HorizontalSumLength horizontalSumLength)
    {
        return horizontalSumLength switch
        {
            HorizontalSumLength.None => 1,
            HorizontalSumLength.By2 => 2,
            HorizontalSumLength.By4 => 4,
            HorizontalSumLength.By8 => 8,
            HorizontalSumLength.By16 => 4,
            HorizontalSumLength.By32 => 5,
            HorizontalSumLength.By64 => 6,
            HorizontalSumLength.By128 => 7,
            HorizontalSumLength.By256 => 8,
            HorizontalSumLength.By512 => 9,
            HorizontalSumLength.By1024 => 10,
            HorizontalSumLength.By2048 => 11,
            HorizontalSumLength.By4096 => 12,
            HorizontalSumLength.By8192 => 13,
            HorizontalSumLength.By16384 => 14,
            HorizontalSumLength.By32768 => 15,
            HorizontalSumLength.By65536 => 16,
            HorizontalSumLength.By131072 => 17,
            HorizontalSumLength.By262144 => 18,
            HorizontalSumLength.By524288 => 19,
            HorizontalSumLength.By1048576 => 20,
            HorizontalSumLength.By2097152 => 21,
            HorizontalSumLength.By4194304 => 22,
            HorizontalSumLength.By8388608 => 23,
            _ => 1
        };
    }
}
