const initialState = {
  value1: 0,
  value2: 0
};

export default function(state = initialState, action: {type: any, payload: any}) {
  switch(action.type) {
    case "horizontal/increaseValue":
      if (action.payload == 1) {
        return {
          value1: state.value1 + 1,
          value2: state.value2
        }
      }
      else if (action.payload == 2) {
        return {
          value1: state.value1,
          value2: state.value2 + 1
        }
      }
      else return {
        value1: state.value1,
        value2: state.value2
      };
    case "horizontal/decreaseValue":
      if (action.payload == 1) {
        return {
          value1: state.value1 - 1,
          value2: state.value2
        }
      }
      else if (action.payload == 2) {
        return {
          value1: state.value1,
          value2: state.value2 - 1
        }
      }
      else return {
        value1: state.value1,
        value2: state.value2
      };
    default:
      return state;
  }
}