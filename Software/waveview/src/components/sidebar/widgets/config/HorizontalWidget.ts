import { IWidget } from '../../../../interfaces/sidebar/widgets/sidebarInterfaces';
import BlockType from '../../../../enums/sidebar/widgets/blockType';

let HorizontalWidget : IWidget = {
  title: "Horizontal",
  blocks: [
    {
      blockType: BlockType.AdjustValue,
      data: {
        value: 10,
        unit: "ns",
        showPerDiv: true,
        color: "white"
      }
    },
    {
      blockType: BlockType.AdjustValue,
      data: {
        value: -10,
        unit: "ms",
        showPerDiv: false,
        color: "white"
      }
    }
  ]
}

export default HorizontalWidget;