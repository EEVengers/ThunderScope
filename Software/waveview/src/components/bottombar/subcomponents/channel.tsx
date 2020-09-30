import React from 'react';
import './channel.css';

function Channel(props: any) {
  return (
    <div className={props.channelClass} style={{color:props.channelColor}}>
      <label>
        CH{props.channelNumber}: {props.voltsPerDiv}V/div, {props.voltageValue}{props.voltageUnit}, {props.measurementType}
      </label>
    </div>
  )
}
  
export default Channel;
  