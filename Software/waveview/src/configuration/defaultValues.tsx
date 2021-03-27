import VoltageUnit from './enums/voltageUnit';
import TimeUnit from './enums/timeUnit';

const x1ProbeValues = [
  {
    value: 10,
    unit: VoltageUnit.Volt
  },
  {
    value: 5,
    unit: VoltageUnit.Volt
  },
  {
    value: 2,
    unit: VoltageUnit.Volt
  },
  {
    value: 1,
    unit: VoltageUnit.Volt
  },
  {
    value: 500,
    unit: VoltageUnit.MilliVolt
  },
  {
    value: 200,
    unit: VoltageUnit.MilliVolt
  },
  {
    value: 100,
    unit: VoltageUnit.MilliVolt
  },
  {
    value: 50,
    unit: VoltageUnit.MilliVolt
  },
  {
    value: 20,
    unit: VoltageUnit.MilliVolt
  },
  {
    value: 10,
    unit: VoltageUnit.MilliVolt
  },
  {
    value: 5,
    unit: VoltageUnit.MilliVolt
  },
  {
    value: 2,
    unit: VoltageUnit.MilliVolt
  },
  {
    value: 1,
    unit: VoltageUnit.MilliVolt
  }
];

const x10ProbeValues = [
  {
    value: 100,
    unit: VoltageUnit.Volt
  },
  {
    value: 50,
    unit: VoltageUnit.Volt
  },
  {
    value: 20,
    unit: VoltageUnit.Volt
  },
  {
    value: 10,
    unit: VoltageUnit.Volt
  },
  {
    value: 5,
    unit: VoltageUnit.Volt
  },
  {
    value: 2,
    unit: VoltageUnit.Volt
  },
  {
    value: 1,
    unit: VoltageUnit.Volt
  },
  {
    value: 500,
    unit: VoltageUnit.MilliVolt
  },
  {
    value: 200,
    unit: VoltageUnit.MilliVolt
  },
  {
    value: 100,
    unit: VoltageUnit.MilliVolt
  },
  {
    value: 50,
    unit: VoltageUnit.MilliVolt
  },
  {
    value: 20,
    unit: VoltageUnit.MilliVolt
  },
  {
    value: 10,
    unit: VoltageUnit.MilliVolt
  }
];

// 13 different voltages per divison presets
// Start at x1ProbeValues[6] and change accordingly

const horizontalTimeBases = [
  {
    value: 1,
    unit: TimeUnit.NanoSecond
  },
  {
    value: 2,
    unit: TimeUnit.NanoSecond
  },
  {
    value: 5,
    unit: TimeUnit.NanoSecond
  },
  {
    value: 10,
    unit: TimeUnit.NanoSecond
  },
  {
    value: 20,
    unit: TimeUnit.NanoSecond
  },
  {
    value: 50,
    unit: TimeUnit.NanoSecond
  },
  {
    value: 100,
    unit: TimeUnit.NanoSecond
  },
  {
    value: 200,
    unit: TimeUnit.NanoSecond
  },
  {
    value: 500,
    unit: TimeUnit.NanoSecond
  },
  {
    value: 1,
    unit: TimeUnit.MicroSecond
  },
  {
    value: 2,
    unit: TimeUnit.MicroSecond
  },
  {
    value: 5,
    unit: TimeUnit.MicroSecond
  },
  {
    value: 10,
    unit: TimeUnit.MicroSecond
  },
  {
    value: 20,
    unit: TimeUnit.MicroSecond
  },
  {
    value: 50,
    unit: TimeUnit.MicroSecond
  },
  {
    value: 100,
    unit: TimeUnit.MicroSecond
  },
  {
    value: 200,
    unit: TimeUnit.MicroSecond
  },
  {
    value: 500,
    unit: TimeUnit.MicroSecond
  },
  {
    value: 1,
    unit: TimeUnit.MilliSecond
  },
  {
    value: 2,
    unit: TimeUnit.MilliSecond
  },
  {
    value: 5,
    unit: TimeUnit.MilliSecond
  },
  {
    value: 10,
    unit: TimeUnit.MilliSecond
  },
  {
    value: 20,
    unit: TimeUnit.MilliSecond
  },
  {
    value: 50,
    unit: TimeUnit.MilliSecond
  },
  {
    value: 100,
    unit: TimeUnit.MilliSecond
  },
  {
    value: 200,
    unit: TimeUnit.MilliSecond
  },
  {
    value: 500,
    unit: TimeUnit.MilliSecond
  },
  {
    value: 1,
    unit: TimeUnit.Second
  },
  {
    value: 2,
    unit: TimeUnit.Second
  },
  {
    value: 5,
    unit: TimeUnit.Second
  },
  {
    value: 10,
    unit: TimeUnit.Second
  }
];
// 31 different voltages per division presets
// Start at horizontalTimeBases[15] and change accordingly

let divisions = {
  voltage: 8,
  time: 10
}

let DefaultValues = {
  x1ProbeValues,
  x10ProbeValues,
  horizontalTimeBases,
  divisions
}

export default DefaultValues;