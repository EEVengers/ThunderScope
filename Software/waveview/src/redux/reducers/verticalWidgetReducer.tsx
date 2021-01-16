import DefaultValues from '../../configuration/defaultValues';

const initialState = {
  activeChannel: 1,
  channelColorsList: ["#EBFF00", "#00FF19", "#0075FF", "#FF0000"],
  timePerDivision: [DefaultValues.x1ProbeValues[6], DefaultValues.x1ProbeValues[6], DefaultValues.x1ProbeValues[6], DefaultValues.x1ProbeValues[6]],
  timePerDivisionIndex: [6, 6, 6, 6],
  verticalOffset: [0, 0, 0, 0]
};

export default function(state = initialState, action: {type: any, payload: any}) {
  switch(action.type) {
    case "vertical/increaseChannel":
      if (state.activeChannel >= 4) {
        return { ...state }
      }
      return {
        ...state,
        activeChannel: state.activeChannel + 1
      };
    case "vertical/decreaseChannel":
      if (state.activeChannel == 1) {
        return { ...state }
      }
      return {
        ...state,
        activeChannel: state.activeChannel - 1
      };
    case "vertical/increaseVerticalOffset":
      return { ...state }
      // Decrease vertical offset
    case "vertical/decreaseVerticalOffset":
      return { ...state }
      // Decrease vertical offset
    case "vertical/increaseTimePerDivision":
      if (state.timePerDivisionIndex[state.activeChannel - 1] >= 12) {
        return { ...state }
      };
      // Increase time per division
    case "vertical/decreaseTimePerDivision":
      if (state.timePerDivisionIndex[state.activeChannel - 1] == 0) {
        return { ...state }
      };
      // Decrease time per division
    default:
      return state;
  }
}