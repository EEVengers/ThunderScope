import React from 'react';
import Channel from './subcomponents/channel';
import './bottombar.css';

function BottomBar() {
  return (
    <div className="BottomBarComponent">
      <Channel
        channelNumber={1}
        voltsPerDiv={1}
        voltageValue={5}
        voltageUnit="mV"
        measurementType="DC"
        channelClass="Channel1"
        />
    </div>
  )
}

export default BottomBar;
