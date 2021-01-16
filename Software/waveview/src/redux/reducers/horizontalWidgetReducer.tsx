import DefaultValues from '../../configuration/defaultValues';

const initialState = {
  horizontalTimeBase: {
    value: DefaultValues.horizontalTimeBases[15], 
    index: 15
  },
  horizontalOffset: {
    value: 0, 
    unit: "ms"
  }
};

export default function(state = initialState, action: {type: any, payload: any}) {
  switch(action.type) {
    case "horizontal/increaseTimeBase":
      if (state.horizontalTimeBase.index >= 30) {
        return { ...state };
      }
      return {
        ...state,
        horizontalTimeBase: {
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
          value: DefaultValues.horizontalTimeBases[state.horizontalTimeBase.index - 1],
          index: state.horizontalTimeBase.index - 1
        }
      }
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