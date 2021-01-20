import React from 'react';
import Channel from './subcomponents/channel';
import TimePerDivision from './subcomponents/timeperdivision';
import Trigger from './subcomponents/trigger';
import './../../css/bottombar/bottombar.css';

function BottomBar() {
  return (
    <div className="BottomBarComponent">
      <Channel channelNumber={1}/>
      <Channel channelNumber={2}/>
      <Channel channelNumber={3}/>
      <Channel channelNumber={4}/>
      <TimePerDivision />
      <Trigger />
    </div>
  )
}

export default BottomBar;
