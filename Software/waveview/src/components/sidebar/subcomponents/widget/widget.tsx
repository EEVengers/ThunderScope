import React from 'react';
import './widget.css';
import AdjustValueBlock from './adjustValueBlock';

function Widget(props: any) {

  return (
    <div className={props.widgetClassName}>
      <div className="WidgetTitle">
        {props.widgetTitle}
      </div>
        <AdjustValueBlock>

        </AdjustValueBlock>
    </div>
  )
}

export default Widget;
