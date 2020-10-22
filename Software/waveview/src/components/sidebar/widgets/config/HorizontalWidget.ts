import { IWidget } from '../../../../interfaces/sidebar/sidebarInterfaces';

let HorizontalWidget : IWidget = {
  title: "Horizontal",
  blocks: [
    {
      blockType: "AdjustValue",
      data: {
        value: 10,
        unit: "ns",
        showPerDiv: true
      }
    },
    {
      blockType: "AdjustValue",
      data: {
        value: -10,
        unit: "ms",
        showPerDiv: false
      }
    }
  ]
}

export default HorizontalWidget;