import React from 'react';
import './channel.css';

interface IChannelProps {
  channelNumber: number
  voltsPerDiv: number
  voltageValue: number
  voltageUnit: string
  measurementType: string
  channelClass: string
  channelColor: string
};

function Channel(props: IChannelProps) {
  return (
    <div className={props.channelClass} style={{color:props.channelColor}}>
      <label>
        CH{props.channelNumber}: {props.voltsPerDiv}V/div, {props.voltageValue}{props.voltageUnit}, {props.measurementType}
      </label>
    </div>
  )
}
  
export default Channel;
  