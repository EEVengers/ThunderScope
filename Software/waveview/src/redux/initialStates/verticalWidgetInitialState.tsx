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
      course: {
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
      course: {
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
      course: {
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
      course: {
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
      controlMode: ControlMode.Course,
      probeMode: ProbeMode.x1,
      coupling: MeasurementType.DC,
      bandwidth: 100,
      status: 1
    },
    {
      controlMode: ControlMode.Course,
      probeMode: ProbeMode.x1,
      coupling: MeasurementType.DC,
      bandwidth: 100,
      status: 1
    },
    {
      controlMode: ControlMode.Course,
      probeMode: ProbeMode.x1,
      coupling: MeasurementType.DC,
      bandwidth: 100,
      status: 1
    },
    {
      controlMode: ControlMode.Course,
      probeMode: ProbeMode.x1,
      coupling: MeasurementType.DC,
      bandwidth: 100,
      status: 1
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
  ]
};

export default VerticalWidgetInitialState;