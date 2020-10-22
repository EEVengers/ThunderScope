import { IWidget } from '../../../../interfaces/sidebar/sidebarInterfaces';
import BlockType from '../../../../interfaces/sidebar/blockType';

let HorizontalWidget : IWidget = {
  title: "Horizontal",
  blocks: [
    {
      blockType: BlockType.AdjustValue,
      data: {
        value: 10,
        unit: "ns",
        showPerDiv: true
      }
    },
    {
      blockType: BlockType.AdjustValue,
      data: {
        value: -10,
        unit: "ms",
        showPerDiv: false
      }
    }
  ]
}

export default HorizontalWidget;