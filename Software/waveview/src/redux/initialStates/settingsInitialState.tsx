import DefaultColors from '../../configuration/enums/defaultColors';

const SettingsInitialState = {
  colors: {
    channel: [
      DefaultColors.Channel1, 
      DefaultColors.Channel2, 
      DefaultColors.Channel3, 
      DefaultColors.Channel4
    ],
    math: DefaultColors.Math
  }
};

export default SettingsInitialState;