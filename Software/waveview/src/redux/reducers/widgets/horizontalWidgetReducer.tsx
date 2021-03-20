import DefaultValues from '../../../configuration/defaultValues';
import ControlMode from '../../../configuration/enums/controlMode';
import HorizontalWidgetInitialState from '../../initialStates/horizontalWidgetInitialState';

export default function(state = HorizontalWidgetInitialState, action: {type: any, payload: any}) {
  switch(action.type) {
    case "horizontal/changeTimeBaseMode":
      return {
        ...state,
        horizontalTimeBase: {
          ...state.horizontalTimeBase,
          mode: action.payload
        },
        horizontalOffset: {
          ...state.horizontalOffset,
          unit: action.payload == ControlMode.Fine ? state.horizontalTimeBase.fine.unit : state.horizontalTimeBase.course.unit
        }
      }
    case "horizontal/changeTimeBaseUnit":
      return {
        ...state,
        horizontalTimeBase: {
          ...state.horizontalTimeBase,
          fine: {
            ...state.horizontalTimeBase.fine,
            unit: action.payload
          }
        },
        horizontalOffset: {
          ...state.horizontalOffset,
          unit: action.payload
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
          course: {
            value: DefaultValues.horizontalTimeBases_New[state.horizontalTimeBase.index + 1].value,
            unit: DefaultValues.horizontalTimeBases_New[state.horizontalTimeBase.index + 1].unit
          },
          index: state.horizontalTimeBase.index + 1
        },
        horizontalOffset: {
          ...state.horizontalOffset,
          unit: DefaultValues.horizontalTimeBases_New[state.horizontalTimeBase.index + 1].unit
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
          course: {
            value: DefaultValues.horizontalTimeBases_New[state.horizontalTimeBase.index - 1].value,
            unit: DefaultValues.horizontalTimeBases_New[state.horizontalTimeBase.index - 1].unit
          },
          index: state.horizontalTimeBase.index - 1
        },
        horizontalOffset: {
          ...state.horizontalOffset,
          unit: DefaultValues.horizontalTimeBases_New[state.horizontalTimeBase.index - 1].unit
        }
      }
    case "horizontal/increaseTimeBaseFine":
      return {
        ...state,
        horizontalTimeBase: {
          ...state.horizontalTimeBase,
          fine: {
            ...state.horizontalTimeBase.fine,
            value: Number((state.horizontalTimeBase.fine.value + 0.1).toFixed(1))
          }
        }
      };
    case "horizontal/decreaseTimeBaseFine":
      return {
        ...state,
        horizontalTimeBase: {
          ...state.horizontalTimeBase,
          fine: {
            ...state.horizontalTimeBase.fine,
            value: Number((state.horizontalTimeBase.fine.value - 0.1).toFixed(1))
          }
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