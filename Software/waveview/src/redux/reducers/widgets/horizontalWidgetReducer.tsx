import DefaultValues from '../../../configuration/defaultValues';
import TimeUnit from '../../../configuration/enums/timeUnit';
import ControlMode from '../../../configuration/enums/controlMode';

const initialState = {
  horizontalTimeBase: {
    mode: ControlMode.Course,
    value: DefaultValues.horizontalTimeBases[15], 
    index: 15,
    fineValue: 0,
    fineUnit: TimeUnit.MicroSecond
  },
  horizontalOffset: {
    value: 0, 
    unit: TimeUnit.MilliSecond
  }
};

export default function(state = initialState, action: {type: any, payload: any}) {
  var tmp;

  switch(action.type) {
    case "horizontal/changeTimeBaseMode":
      return {
        ...state,
        horizontalTimeBase: {
          ...state.horizontalTimeBase,
          mode: action.payload
        }
      }
    case "horizontal/changeTimeBaseUnit":
      return {
        ...state,
        horizontalTimeBase: {
          ...state.horizontalTimeBase,
          fineUnit: action.payload
        }
      }
    case "horizontal/increaseTimeBase":
      if (state.horizontalTimeBase.index >= 30) {
        return { ...state };
      }
      return {
        ...state,
        horizontalTimeBase: {
          ...state.horizontalTimeBase,
          value: DefaultValues.horizontalTimeBases[state.horizontalTimeBase.index + 1],
          index: state.horizontalTimeBase.index + 1
        }
      }
    case "horizontal/decreaseTimeBase":
      if (state.horizontalTimeBase.index === 0) {
        return { ...state };
      }
      return {
        ...state,
        horizontalTimeBase: {
          ...state.horizontalTimeBase,
          value: DefaultValues.horizontalTimeBases[state.horizontalTimeBase.index - 1],
          index: state.horizontalTimeBase.index - 1
        }
      }
    case "horizontal/increaseTimeBaseFine":
      return {
        ...state,
        horizontalTimeBase: {
          ...state.horizontalTimeBase,
          fineValue: Number((state.horizontalTimeBase.fineValue + 0.1).toFixed(1))
        }
      };
    case "horizontal/decreaseTimeBaseFine":
      return {
        ...state,
        horizontalTimeBase: {
          ...state.horizontalTimeBase,
          fineValue: Number((state.horizontalTimeBase.fineValue - 0.1).toFixed(1))
        }
      };
    case "horizontal/increaseOffset":
      return {
        ...state,
        horizontalOffset: {
          ...state.horizontalOffset,
          value: state.horizontalOffset.value + 1
        }
      }
    case "horizontal/decreaseOffset":
      return {
        ...state,
        horizontalOffset: {
          ...state.horizontalOffset,
          value: state.horizontalOffset.value - 1
        }
      }
    default:
      return state;
  }
}