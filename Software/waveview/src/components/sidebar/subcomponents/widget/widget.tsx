import React from 'react';
import './widget.css';
import AdjustValueBlock from './adjustValueBlock';
import DisplayValueBlock from './displayValueBlock';

function Widget(props: any) {
  let AdjustValueBlockProps = {
    value: 10,
    unit: "ms",
    perUnit: "/div"
  }

  let DisplayValueBlockProps = {
    leftValue: "X1->X2",
    rightValue: "500ms"
  }

  return (
    <div className={props.widgetClassName}>
      <div className="WidgetTitle">
        {props.widgetTitle}
      </div>
        <AdjustValueBlock 
          value={AdjustValueBlockProps.value}
          unit={AdjustValueBlockProps.unit}
          perUnit={AdjustValueBlockProps.perUnit}
        />
        <DisplayValueBlock 
          leftValue={DisplayValueBlockProps.leftValue}
          rightValue={DisplayValueBlockProps.rightValue}
        />
    </div>
  )
}

export default Widget;
