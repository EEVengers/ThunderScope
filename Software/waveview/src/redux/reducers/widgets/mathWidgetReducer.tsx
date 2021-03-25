import MathWidgetInitialState from '../../initialStates/mathWidgetInitialState';

export default function MathWidgetReducer(state = MathWidgetInitialState, action: {type: any, payload: any}) {
  switch(action.type) {
    case "math/toggleMathMode":
      return {
        ...state,
        mathEnabled: action.payload
      };
    case "math/changeChannel1":
      if (action.payload === state.channel2) {
        return state;
      }
      return {
        ...state,
        channel1: action.payload
      };
    case "math/changeChannel2":
      if (action.payload === state.channel1) {
        return state;
      }
      return {
        ...state,
        channel2: action.payload
      };
    case "math/changeOperator":
      return {
        ...state,
        mathOperator: action.payload
      };
    case "math/addChannels":
      return state;
    case "math/subtractChannels":
      return state;
    default:
      return state;
  }
}