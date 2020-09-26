import React from 'react';
import Channel from './subcomponents/channel';
import './bottombar.css';

interface BottomBarProps {
  channelList: any[]
}

function BottomBar(props: BottomBarProps) {
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
    </div>
  )
}

export default BottomBar;
