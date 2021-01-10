import React from 'react';
import Channel from './subcomponents/channel';
import TimePerDivision from './subcomponents/timeperdivision';
import Trigger from './subcomponents/trigger';
import './../../css/bottombar/bottombar.css';

interface IBottomBarProps {
  channelList: {
    color: string, 
    className: string
  }[]
  triggerInformation: {
    channel: string, 
    mode: string
  };
  timePerDivisionInformation: { 
    timeValue: number, 
    timeUnit: string 
  }
}

function BottomBar(props: IBottomBarProps) {
  return (
    <div className="BottomBarComponent">
      {
        props.channelList.map((c, i) => {
          return (
            <Channel
              channelNumber={i+1}
              voltsPerDiv={1}
              voltageValue={5}
              voltageUnit="mV"
              measurementType="DC"
              channelClass={c.className}
              channelColor={c.color}
            />
          )
        })
      }
      <TimePerDivision 
        timeValue={props.timePerDivisionInformation.timeValue}
        timeUnit={props.timePerDivisionInformation.timeUnit}
      />
      <Trigger
        channel={props.triggerInformation.channel}
        mode={props.triggerInformation.mode}
      />
    
    </div>
  )
}

export default BottomBar;
