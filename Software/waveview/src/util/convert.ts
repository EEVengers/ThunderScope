import VoltageUnit from '../configuration/enums/voltageUnit';
import TimeUnit from '../configuration/enums/timeUnit';

function convertVoltage(x: number, from: VoltageUnit, to: VoltageUnit) {
  let power = {
    [VoltageUnit.NanoVolt]: -9,
    [VoltageUnit.MicroVolt]: -6,
    [VoltageUnit.MilliVolt]: -3,
    [VoltageUnit.Volt]: 0
  }
  return x * Math.pow(10, power[from] - power[to]);
}

function convertTime(x: number, from: TimeUnit, to: TimeUnit) {
  let power = {
    [TimeUnit.NanoSecond]: -9,
    [TimeUnit.MicroSecond]: -6,
    [TimeUnit.MilliSecond]: -3,
    [TimeUnit.Second]: 0
  }
  return x * Math.pow(10, power[from] - power[to]);
}

export {convertVoltage, convertTime}