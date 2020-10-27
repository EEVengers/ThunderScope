import { IWidget } from '../../../../interfaces/sidebar/sidebarInterfaces';
import BlockType from '../../../../interfaces/sidebar/blockType';

let MeasurementsWidget: IWidget = {
  "title": "Vertical",
  "blocks": [
    {
      "blockType": BlockType.AdjustChannel,
      "data": {
        "channel": 1
      }
    },
    {
      "blockType": BlockType.AdjustValue,
      "data": {
        "value": 1,
        "unit": "V",
        "showPerDiv": true
      }
    },
    {
      "blockType": BlockType.AdjustValue,
      "data": {
        "value": 0,
        "unit": "mV",
        "showPerDiv": false
      }
    }
  ]
}

export default MeasurementsWidget;