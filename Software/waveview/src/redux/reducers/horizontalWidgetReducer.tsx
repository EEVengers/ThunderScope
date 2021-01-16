const initialState = {
  horizontalTimeBase: {value: 0, unit: "ns/div"},
  horizontalOffset: {value: 0, unit: "ms"}
};

export default function(state = initialState, action: {type: any, payload: any}) {
  switch(action.type) {
    case "horizontal/increaseTimeBase":
      return {
        ...state,
        horizontalTimeBase: {
          value: state.horizontalTimeBase.value + 1,
          unit: state.horizontalTimeBase.unit
        }
      }
    case "horizontal/decreaseTimeBase":
      return {
        ...state,
        horizontalTimeBase: {
          value: state.horizontalTimeBase.value - 1,
          unit: state.horizontalTimeBase.unit
        }
      }
    case "horizontal/increaseOffset":
      return {
        ...state,
        horizontalOffset: {
          value: state.horizontalOffset.value + 1,
          unit: state.horizontalOffset.unit
        }
      }
    case "horizontal/decreaseOffset":
      return {
        ...state,
        horizontalOffset: {
          value: state.horizontalOffset.value - 1,
          unit: state.horizontalOffset.unit
        }
      }
    default:
      return state;
  }
}