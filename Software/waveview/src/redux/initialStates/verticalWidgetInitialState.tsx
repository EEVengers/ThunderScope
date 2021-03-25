import MeasurementType from '../../configuration/enums/measurementType';
import VoltageUnit from '../../configuration/enums/voltageUnit';
import ControlMode from '../../configuration/enums/controlMode';
import ProbeMode from '../../configuration/enums/probeMode';
import DefaultValues from '../../configuration/defaultValues';

const VerticalWidgetInitialState = {
  activeChannel: 1,
  totalChannelsUsed: 4,
  timePerDivision: [
    {
      coarse: {
        value: DefaultValues.x1ProbeValues[6].value,
        unit: DefaultValues.x1ProbeValues[6].unit
      },
      fine: {
        value: 0,
        x10value: 0,
        unit: VoltageUnit.MilliVolt
      },
      index: 6
    },
    {
      coarse: {
        value: DefaultValues.x1ProbeValues[6].value,
        unit: DefaultValues.x1ProbeValues[6].unit
      },
      fine: {
        value: 0,
        x10value: 0,
        unit: VoltageUnit.MilliVolt
      },
      index: 6
    },
    {
      coarse: {
        value: DefaultValues.x1ProbeValues[6].value,
        unit: DefaultValues.x1ProbeValues[6].unit
      },
      fine: {
        value: 0,
        x10value: 0,
        unit: VoltageUnit.MilliVolt
      },
      index: 6
    },
    {
      coarse: {
        value: DefaultValues.x1ProbeValues[6].value,
        unit: DefaultValues.x1ProbeValues[6].unit
      },
      fine: {
        value: 0,
        x10value: 0,
        unit: VoltageUnit.MilliVolt
      },
      index: 6
    }
  ],
  settings: [
    {
      controlMode: ControlMode.Coarse,
      probeMode: ProbeMode.x1,
      coupling: MeasurementType.DC,
      bandwidth: 100,
      status: 1
    },
    {
      controlMode: ControlMode.Coarse,
      probeMode: ProbeMode.x1,
      coupling: MeasurementType.DC,
      bandwidth: 100,
      status: 0
    },
    {
      controlMode: ControlMode.Coarse,
      probeMode: ProbeMode.x1,
      coupling: MeasurementType.DC,
      bandwidth: 100,
      status: 0
    },
    {
      controlMode: ControlMode.Coarse,
      probeMode: ProbeMode.x1,
      coupling: MeasurementType.DC,
      bandwidth: 100,
      status: 0
    },
    {
      status: 0
    }
  ],
  verticalOffset: [
    {
      value: 0,
      unit: VoltageUnit.MilliVolt
    },
    {
      value: 0,
      unit: VoltageUnit.MilliVolt
    },
    {
      value: 0,
      unit: VoltageUnit.MilliVolt
    },
    {
      value: 0,
      unit: VoltageUnit.MilliVolt
    }
  ],
  getDataChannelOrder: [1]
};

export default VerticalWidgetInitialState;