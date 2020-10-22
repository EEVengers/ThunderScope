import { IWidget } from '../../../../interfaces/sidebar/sidebarInterfaces';

let MeasurementsWidget: IWidget =
{
  "title": "Measurements",
  "blocks": [
    {
      "blockType": "DisplayValue",
      "data": {
        "leftValue": "X1->X2",
        "rightValue": "500ns"
      }
    },
    {
      "blockType": "DisplayValue",
      "data": {
        "leftValue": "Y1->Y2",
        "rightValue": "300mV"
      }
    }
  ]
}

export default MeasurementsWidget;