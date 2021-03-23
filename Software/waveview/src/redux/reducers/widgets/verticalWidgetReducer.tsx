import ControlMode from '../../../configuration/enums/controlMode';
import ProbeMode from '../../../configuration/enums/probeMode';
import DefaultValues from '../../../configuration/defaultValues';
import VerticalWidgetInitialState from '../../initialStates/verticalWidgetInitialState';

export default function(state = VerticalWidgetInitialState, action: {type: any, payload: any}) {
  var channelIndex = state.activeChannel - 1;
  var tmp;
  var tmp2;
  var tmp3;

  switch(action.type) {
    case "vertical/changeControlMode":
      tmp = state.settings;

      tmp[channelIndex].controlMode = action.payload;

      tmp2 = state.verticalOffset;

      tmp2[channelIndex].unit = action.payload === ControlMode.Fine ? state.timePerDivision[channelIndex].fine.unit : state.timePerDivision[channelIndex].course.unit;
      return {
        ...state,
        settings: tmp,
        verticalOffset: tmp2
      };
    case "vertical/changeChannel":
      return {
        ...state,
        activeChannel: action.payload
      };
    case "vertical/changeDivisionUnit":
      tmp = state.timePerDivision;

      tmp[channelIndex].fine.unit = action.payload;

      tmp2 = state.verticalOffset;

      tmp2[channelIndex].unit = action.payload;
      return {
        ...state,
        timePerDivision: tmp,
        verticalOffset: tmp2
      };
    case "vertical/changeCouplingMode":
      tmp = state.settings;

      tmp[channelIndex].coupling = action.payload;
      return {
        ...state,
        settings: tmp
      };
    case "vertical/changeProbeMode":
      tmp = state.settings;

      tmp[channelIndex].probeMode = action.payload;

      tmp2 = state.timePerDivision;

      tmp2[channelIndex].course.value = action.payload === ProbeMode.x1
        ? DefaultValues.x1ProbeValues[state.timePerDivision[channelIndex].index].value
        : DefaultValues.x10ProbeValues[state.timePerDivision[channelIndex].index].value;
      tmp2[channelIndex].course.unit = action.payload === ProbeMode.x1
        ? DefaultValues.x1ProbeValues[state.timePerDivision[channelIndex].index].unit
        : DefaultValues.x10ProbeValues[state.timePerDivision[channelIndex].index].unit;

      tmp3 = state.verticalOffset;

      tmp3[channelIndex].unit = tmp2[channelIndex].course.unit;
      return {
        ...state,
        settings: tmp,
        timePerDivision: tmp2,
        verticalOffset: tmp3
      };
    case "vertical/changeBandwidth":
      tmp = state.settings;

      tmp[channelIndex].bandwidth = action.payload;
      return {
        ...state,
        settings: tmp
      };
    case "vertical/changeChannelStatus":
      tmp = state.settings;
      var newTotalChannelsUsed = state.totalChannelsUsed;

      if (tmp[action.payload].status === 0) {
        tmp[action.payload].status = 1;
        newTotalChannelsUsed++;
      }
      else {
        tmp[action.payload].status = 0;
        newTotalChannelsUsed--;
      }
      return {
        ...state,
        totalChannelsUsed: newTotalChannelsUsed,
        settings: tmp
      };
    case "vertical/increaseVerticalOffset":
      tmp = state.verticalOffset;

      tmp[channelIndex].value = state.verticalOffset[channelIndex].value + 1;
      return {
        ...state,
        verticalOffset: tmp
      }
    case "vertical/decreaseVerticalOffset":
      tmp = state.verticalOffset;

      tmp[channelIndex].value = state.verticalOffset[channelIndex].value - 1;
      return {
        ...state,
        verticalOffset: tmp
      }
    case "vertical/increaseTimePerDivision":
      if (state.timePerDivision[state.activeChannel - 1].index === 0) {
        return { ...state }
      };
      tmp = state.timePerDivision;

      tmp[channelIndex].index = state.timePerDivision[channelIndex].index - 1;
      tmp[channelIndex].course.value = state.settings[channelIndex].probeMode === ProbeMode.x1
        ? DefaultValues.x1ProbeValues[tmp[channelIndex].index].value
        : DefaultValues.x10ProbeValues[tmp[channelIndex].index].value;
      tmp[channelIndex].course.unit = state.settings[channelIndex].probeMode === ProbeMode.x1
        ? DefaultValues.x1ProbeValues[tmp[channelIndex].index].unit
        : DefaultValues.x10ProbeValues[tmp[channelIndex].index].unit;

      tmp2 = state.verticalOffset;

      tmp2[channelIndex].unit = tmp[channelIndex].course.unit;
      return {
        ...state,
        timePerDivision: tmp,
        verticalOffset: tmp2
      }
    case "vertical/decreaseTimePerDivision":
      if (state.timePerDivision[state.activeChannel - 1].index >= 12) {
        return { ...state }
      };
      tmp = state.timePerDivision;

      tmp[channelIndex].index = state.timePerDivision[channelIndex].index + 1;
      tmp[channelIndex].course.value = state.settings[channelIndex].probeMode === ProbeMode.x1
        ? DefaultValues.x1ProbeValues[tmp[channelIndex].index].value
        : DefaultValues.x10ProbeValues[tmp[channelIndex].index].value;
      tmp[channelIndex].course.unit = state.settings[channelIndex].probeMode === ProbeMode.x1
        ? DefaultValues.x1ProbeValues[tmp[channelIndex].index].unit
        : DefaultValues.x10ProbeValues[tmp[channelIndex].index].unit;

      tmp2 = state.verticalOffset;

      tmp2[channelIndex].unit = tmp[channelIndex].course.unit;
      return {
        ...state,
        timePerDivision: tmp,
        verticalOffset: tmp2
      }
    case "vertical/increaseTimePerDivisionFine":
      tmp = state.timePerDivision;

      tmp[channelIndex].fine.value = Number((state.timePerDivision[channelIndex].fine.value + 0.1).toFixed(1));
      tmp[channelIndex].fine.x10value = Number((tmp[channelIndex].fine.value*10).toFixed(1));
      return {
        ...state,
        timePerDivision: tmp
      };
    case "vertical/decreaseTimePerDivisionFine":
      tmp = state.timePerDivision;

      tmp[channelIndex].fine.value = Number((state.timePerDivision[channelIndex].fine.value - 0.1).toFixed(1));
      tmp[channelIndex].fine.x10value = Number((tmp[channelIndex].fine.value*10).toFixed(1));
      return {
        ...state,
        timePerDivision: tmp
      };
    case "vertical/toggleMathWaveform":
      tmp = state.settings;
      var newStatus = (state.settings[4].status === 1) ? 0 : 1;

      state.settings[4].status = newStatus;
      return {
        ...state,
        settings: tmp
      }
    case "vertical/setChannelOrder":
      return {
        ...state,
        getDataChannelOrder: action.payload
      }
    default:
      return state;
  }
}