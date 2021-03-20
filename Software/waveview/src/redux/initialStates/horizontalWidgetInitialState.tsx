import DefaultValues from '../../configuration/defaultValues';
import TimeUnit from '../../configuration/enums/timeUnit';
import ControlMode from '../../configuration/enums/controlMode';

const HorizontalWidgetInitialState = {
  horizontalTimeBase: {
    mode: ControlMode.Course,
    index: 15,
    course: {
      value: DefaultValues.horizontalTimeBases_New[15].value,
      unit: DefaultValues.horizontalTimeBases_New[15].unit
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