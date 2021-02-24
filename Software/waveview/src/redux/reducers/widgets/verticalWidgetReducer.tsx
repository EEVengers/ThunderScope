import DefaultValues from '../../../configuration/defaultValues';
import DefaultChannelColor from '../../../configuration/enums/defaultChannelColor';
import MeasurementType from '../../../configuration/enums/measurementType';
import VoltageUnit from '../../../configuration/enums/voltageUnit';
import ControlMode from '../../../configuration/enums/controlMode';
import ProbeMode from '../../../configuration/enums/probeMode';

const initialState = {
  activeChannel: 1,
  totalChannelsUsed: 1,
  channelColorsList: [
    DefaultChannelColor.Channel1, 
    DefaultChannelColor.Channel2, 
    DefaultChannelColor.Channel3, 
    DefaultChannelColor.Channel4
  ],
  timePerDivision: [
    {
      fineValue: 0,
      fineUnit: VoltageUnit.MilliVolt,
      index: 6
    }, 
    {
      fineValue: 0,
      fineUnit: VoltageUnit.MilliVolt,
      index: 6
    }, 
    {
      fineValue: 0,
      fineUnit: VoltageUnit.MilliVolt,
      index: 6
    }, 
    {
      fineValue: 0,
      fineUnit: VoltageUnit.MilliVolt,
      index: 6
    }
  ],
  settings: [
    {
      controlMode: ControlMode.Course,
      probeMode: ProbeMode.x1,
      coupling: MeasurementType.DC,
      bandwidth: 100,
      status: 1
    },
    {
      controlMode: ControlMode.Course,
      probeMode: ProbeMode.x1,
      coupling: MeasurementType.DC,
      bandwidth: 100,
      status: 0
    },
    {
      controlMode: ControlMode.Course,
      probeMode: ProbeMode.x1,
      coupling: MeasurementType.DC,
      bandwidth: 100,
      status: 0
    },
    {
      controlMode: ControlMode.Course,
      probeMode: ProbeMode.x1,
      coupling: MeasurementType.DC,
      bandwidth: 100,
      status: 0
    }
  ],
  verticalOffset: [
    {value: 0, unit: VoltageUnit.MilliVolt},
    {value: 0, unit: VoltageUnit.MilliVolt},
    {value: 0, unit: VoltageUnit.MilliVolt},
    {value: 0, unit: VoltageUnit.MilliVolt}
  ]
};

export default function(state = initialState, action: {type: any, payload: any}) {
  var channelIndex = state.activeChannel - 1;
  var tmp;

  switch(action.type) {
    case "vertical/changeControlMode":
      tmp = state.settings;

      tmp[channelIndex].controlMode = action.payload;
      return {
        ...state,
        settings: tmp
      };
    case "vertical/changeChannel":
      return {
        ...state,
        activeChannel: action.payload
      };
    case "vertical/changeDivisionUnit":
      tmp = state.timePerDivision;

      tmp[channelIndex].fineUnit = action.payload;
      return {
        ...state,
        timePerDivision: tmp
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
      return {
        ...state,
        settings: tmp
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

      if (tmp[action.payload].status == 0) {
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
      return { 
        ...state,
        timePerDivision: tmp
      }
    case "vertical/decreaseTimePerDivision":
      if (state.timePerDivision[state.activeChannel - 1].index >= 12) {
        return { ...state }
      };
      tmp = state.timePerDivision;

      tmp[channelIndex].index = state.timePerDivision[channelIndex].index + 1;
      return { 
        ...state,
        timePerDivision: tmp
      }
    case "vertical/increaseTimePerDivisionFine":
      tmp = state.timePerDivision;

      tmp[channelIndex].fineValue = Number((state.timePerDivision[channelIndex].fineValue + 0.1).toFixed(1));
      return {
        ...state,
        timePerDivision: tmp
      };
    case "vertical/decreaseTimePerDivisionFine":
      tmp = state.timePerDivision;

      tmp[channelIndex].fineValue = Number((state.timePerDivision[channelIndex].fineValue - 0.1).toFixed(1));
      return {
        ...state,
        timePerDivision: tmp
      };
    default:
      return state;
  }
}