import React from 'react';
import RunStopButton from './core/runStopButton';
import SingleButton from './core/singleButton';
import './../../css/sidebar/sidebar.css';
import HorizontalWidget from './widgets/horizontalWidget';
import VerticalWidget from './widgets/verticalWidget';
import MeasurementsWidget from './widgets/measurementsWidget';
import TriggerWidget from './widgets/triggerWidget';
import MathWidget from './widgets/mathWidget';

class SideBar extends React.Component {

  render() {
    return (
      <div className="SideBarComponent">
        <RunStopButton />
        <SingleButton />
        <HorizontalWidget />
        <VerticalWidget />
        <TriggerWidget />
        <MathWidget />
        <MeasurementsWidget />
      </div>
    )
  }
}

export default SideBar;
