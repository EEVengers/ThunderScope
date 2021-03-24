import DefaultValues from '../../configuration/defaultValues';
import TimeUnit from '../../configuration/enums/timeUnit';
import ControlMode from '../../configuration/enums/controlMode';

let index = 3; //originally 15

const HorizontalWidgetInitialState = {
  horizontalTimeBase: {
    mode: ControlMode.Course,
    index: index,
    course: {
      value: DefaultValues.horizontalTimeBases[index].value, //originally index 15
      unit: DefaultValues.horizontalTimeBases[index].unit //originally index 15
    },
    fine: {
      value: 0,
      unit: TimeUnit.MicroSecond
    }
  },
  horizontalOffset: {
    value: 0,
    unit: TimeUnit.NanoSecond
  }
};

export default HorizontalWidgetInitialState;