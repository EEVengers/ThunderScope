import DefaultChannelColor from '../../configuration/enums/defaultChannelColor';

const SettingsInitialState = {
  colors: {
    channel: [
      DefaultChannelColor.Channel1, 
      DefaultChannelColor.Channel2, 
      DefaultChannelColor.Channel3, 
      DefaultChannelColor.Channel4
    ],
    math: DefaultChannelColor.Math
  }
};

export default SettingsInitialState;