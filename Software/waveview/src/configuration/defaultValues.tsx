import VoltageUnit from './enums/voltageUnit';
import TimeUnit from './enums/timeUnit';

const x1ProbeValues = [
  "10V/div", 
  "5V/div", 
  "2V/div", 
  "1V/div",
  "500mV/div",
  "200mV/div",
  "100mV/div",
  "50mV/div",
  "20mV/div",
  "10mV/div",
  "5mV/div",
  "2mV/div",
  "1mV/div"
];

const x1ProbeValues_New = [
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
  "100V/div", 
  "50V/div", 
  "20V/div", 
  "10V/div",
  "5V/div",
  "2V/div",
  "1V/div",
  "500mV/div",
  "200mV/div",
  "100mV/div",
  "50mV/div",
  "20mV/div",
  "10mV/div"
];

const x10ProbeValues_New = [
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
  "1ns/div",
  "2ns/div",
  "5ns/div",
  "10ns/div",
  "20ns/div",
  "50ns/div",
  "100ns/div",
  "200ns/div",
  "500ns/div",
  "1µs/div",
  "2µs/div",
  "5µs/div",
  "10µs/div",
  "20µs/div",
  "50µs/div",
  "100µs/div",
  "200µs/div",
  "500µs/div",
  "1ms/div",
  "2ms/div",
  "5ms/div",
  "10ms/div",
  "20ms/div",
  "50ms/div",
  "100ms/div",
  "200ms/div",
  "500ms/div",
  "1s/div",
  "2s/div",
  "5s/div",
  "10s/div"
];

const horizontalTimeBases_New = [
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

export default {
  x1ProbeValues, 
  x10ProbeValues,
  horizontalTimeBases,
  x1ProbeValues_New,
  x10ProbeValues_New,
  horizontalTimeBases_New
};