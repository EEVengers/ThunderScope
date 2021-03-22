import VoltageUnit from '../../configuration/enums/voltageUnit';

const MeasurementsWidgetInitialState = {
  displayChannel: [
    false,
    false,
    false,
    false
  ],
  max: [
    {
      value: 100,
      unit: VoltageUnit.MicroVolt,
      display: false
    },
    {
      value: 200,
      unit: VoltageUnit.NanoVolt,
      display: false
    },
    {
      value: 300,
      unit: VoltageUnit.MilliVolt,
      display: false
    },
    {
      value: 400,
      unit: VoltageUnit.Volt,
      display: false
    }
  ],
  min: [
    {
      value: 10,
      unit: VoltageUnit.MicroVolt,
      display: false
    },
    {
      value: 20,
      unit: VoltageUnit.NanoVolt,
      display: false
    },
    {
      value: 30,
      unit: VoltageUnit.MilliVolt,
      display: false
    },
    {
      value: 40,
      unit: VoltageUnit.Volt,
      display: false
    }
  ],
  tickCount: 0
};

export default MeasurementsWidgetInitialState;
