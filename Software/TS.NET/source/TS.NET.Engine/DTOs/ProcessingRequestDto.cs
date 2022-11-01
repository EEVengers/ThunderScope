using System;

namespace TS.NET.Engine
{
    public abstract record ProcessingRequestDto();

    public record ProcessingStartTriggerDto(bool ForceTrigger, bool OneShot) : ProcessingRequestDto;
    public record ProcessingStopTriggerDto() : ProcessingRequestDto;

    public record ProcessingSetDepthDto(long Samples) : ProcessingRequestDto;
    public record ProcessingSetRateDto(long SamplingHz) : ProcessingRequestDto;

    public record ProcessingSetTriggerSourceDto(TriggerChannel Channel) : ProcessingRequestDto;
    public record ProcessingSetTriggerDelayDto(long Femtoseconds) : ProcessingRequestDto;
    public record ProcessingSetTriggerLevelDto(double Level) : ProcessingRequestDto;
    public record ProcessingSetTriggerEdgeDirectionDto() : ProcessingRequestDto;

}
