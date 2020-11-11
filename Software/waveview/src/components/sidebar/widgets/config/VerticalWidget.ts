import { IWidget } from '../../../../interfaces/sidebar/widgets/sidebarInterfaces';
import BlockType from '../../../../enums/sidebar/widgets/blockType';

let MeasurementsWidget: IWidget = {
  title: "Vertical",
  blocks: [
    {
      blockType: BlockType.AdjustChannel,
      data: {
        channel: 1,
        color: "yellow"
      }
    },
    {
      blockType: BlockType.AdjustValue,
      data: {
        value: 1,
        unit: "V",
        showPerDiv: true,
        color: "yellow"
      }
    },
    {
      blockType: BlockType.AdjustValue,
      data: {
        value: 0,
        unit: "mV",
        showPerDiv: false,
        color: "yellow"
      }
    }
  ]
}

export default MeasurementsWidget;