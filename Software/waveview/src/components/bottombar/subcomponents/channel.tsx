import React, {CSSProperties} from 'react';
import './channel.css';

function Channel(props: any) {
  return (
  <div className={props.channelClass}>
    <label>
      CH{props.channelNumber}: {props.voltsPerDiv}V/div, {props.voltageValue}{props.voltageUnit}, {props.measurementType}
    </label>
  </div>
  )
}
  
export default Channel;
  