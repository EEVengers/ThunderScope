import React from 'react';
import StopButton from './core/stopButton';
import SingleButton from './core/singleButton';
import './../../css/sidebar/sidebar.css';
import HorizontalWidget from './widgets/horizontalWidget';
import VerticalWidget from './widgets/verticalWidget';
import MeasurementsWidget from './widgets/measurementsWidget';
import TriggerWidget from './widgets/triggerWidget';

class SideBar extends React.Component {

  render() {
    return (
      <div className="SideBarComponent">
        <StopButton />
        <SingleButton />
        <HorizontalWidget />
        <VerticalWidget />
        <TriggerWidget />
        <MeasurementsWidget />
      </div>
    )
  }
}

export default SideBar;
