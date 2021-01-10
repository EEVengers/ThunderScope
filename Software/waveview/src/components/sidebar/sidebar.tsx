import React from 'react';
import Search from './core/search';
import StopButton from './core/stopButton';
import SingleButton from './core/singleButton';
import './../../css/sidebar/sidebar.css';
import HorizontalWidget from './widgets/horizontalWidget';
import VerticalWidget from './widgets/verticalWidget';
import MeasurementsWidget from './widgets/measurementsWidget';

class SideBar extends React.Component {

  render() {
    return (
      <div className="SideBarComponent">
        <Search />
        <StopButton />
        <SingleButton />
        <HorizontalWidget />
        <VerticalWidget />
        <MeasurementsWidget />
      </div>
    )
  }
}

export default SideBar;
