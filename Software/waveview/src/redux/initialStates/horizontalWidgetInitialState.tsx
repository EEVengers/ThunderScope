import DefaultValues from '../../configuration/defaultValues';
import TimeUnit from '../../configuration/enums/timeUnit';
import ControlMode from '../../configuration/enums/controlMode';

const HorizontalWidgetInitialState = {
  horizontalTimeBase: {
    mode: ControlMode.Course,
    index: 15,
    course: {
      value: DefaultValues.horizontalTimeBases[3].value, //originally index 15
      unit: DefaultValues.horizontalTimeBases[3].unit //originally index 15
    },
    fine: {
      value: 0,
      unit: TimeUnit.MicroSecond
    }
  },
  horizontalOffset: {
    value: 0,
    unit: TimeUnit.MicroSecond
  }
};

export default HorizontalWidgetInitialState;