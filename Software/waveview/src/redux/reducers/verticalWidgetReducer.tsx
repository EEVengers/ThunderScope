import DefaultValues from '../../configuration/defaultValues';
import MeasurementType from '../../configuration/enums/measurementType';

const initialState = {
  activeChannel: 1,
  channelColorsList: [
    "#EBFF00", 
    "#00FF19", 
    "#0075FF", 
    "#FF0000"
  ],
  timePerDivision: [
    {value: DefaultValues.x1ProbeValues[6], index: 6}, 
    {value: DefaultValues.x1ProbeValues[6], index: 6}, 
    {value: DefaultValues.x1ProbeValues[6], index: 6}, 
    {value: DefaultValues.x1ProbeValues[6], index: 6}
  ],
  verticalOffset: [
    {value: 0, unit: "mV"},
    {value: 0, unit: "mV"},
    {value: 0, unit: "mV"},
    {value: 0, unit: "mV"}
  ],
  measurementType: [
    MeasurementType.DC,
    MeasurementType.DC,
    MeasurementType.DC,
    MeasurementType.DC
  ]
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
      if (state.activeChannel === 1) {
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
      if (state.timePerDivision[state.activeChannel - 1].index >= 12) {
        return { ...state }
      };
      break;
      // Increase time per division
    case "vertical/decreaseTimePerDivision":
      if (state.timePerDivision[state.activeChannel - 1].index === 0) {
        return { ...state }
      };
      // Decrease time per division
      break;
    default:
      return state;
  }
}