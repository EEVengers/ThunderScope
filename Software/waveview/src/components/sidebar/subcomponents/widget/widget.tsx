import React from 'react';
import './widget.css';

function Widget(props: any) {
  return (
    <div className={props.widgetClassName}>
      {props.widgetTitle}
    </div>
  )
}

export default Widget;
