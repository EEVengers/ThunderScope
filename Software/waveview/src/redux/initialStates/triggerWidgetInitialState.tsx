import TriggerType from '../../configuration/enums/triggerType';
import DefaultChannelColor from '../../configuration/enums/defaultChannelColor';
import VoltageUnit from '../../configuration/enums/voltageUnit';

const TriggerWidgetInitialState = {
  triggerChannel: 1,
  channelColorsList: [
    DefaultChannelColor.Channel1, 
    DefaultChannelColor.Channel2, 
    DefaultChannelColor.Channel3, 
    DefaultChannelColor.Channel4
  ],
  triggerType: [
    TriggerType.RisingEdge,
    TriggerType.RisingEdge,
    TriggerType.RisingEdge,
    TriggerType.RisingEdge
  ],
  triggerLevel: [
    {
      value: 0.0, 
      unit: VoltageUnit.MilliVolt
    },
    {
      value: 0.0, 
      unit: VoltageUnit.MilliVolt
    },
    {
      value: 0.0, 
      unit: VoltageUnit.MilliVolt
    },
    {
      value: 0.0, 
      unit: VoltageUnit.MilliVolt
    }
  ]
};

export default TriggerWidgetInitialState;