import React from 'react';
import './widget.css';
import AdjustValueBlock from './adjustValueBlock';

function Widget(props: any) {
  let AdjustValueBlockProps = {
    value: 10,
    unit: "ms",
    perUnit: "/div"
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
    </div>
  )
}

export default Widget;
