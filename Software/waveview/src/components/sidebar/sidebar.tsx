import React from 'react';
import Search from './search';
import StopButton from './stopButton';
import SingleButton from './singleButton';
import Widget from './widgets/widget';
import './sidebar.css';
import HorizontalData from './widgets/config/HorizontalWidget';
import VerticalData from './widgets/config/VerticalWidget';
import MeasurementsData from './widgets/config/MeasurementsWidget';
import {IWidget} from '../../interfaces/sidebar/widgets/sidebarInterfaces';

class SideBar extends React.Component {
  widgetList: IWidget[]

  constructor(props: any) {
    super(props);
    this.widgetList = [
      HorizontalData, 
      VerticalData, 
      MeasurementsData
    ]
  }

  render() {
    return (
      <div className="SideBarComponent">
        <Search />
        <StopButton />
        <SingleButton />
        {
          this.widgetList.map((w) => {
            return (
              <Widget
                title= {w.title}
                blocks = {w.blocks}
              />
            )
          })
        }
      </div>
    )
  }
}

export default SideBar;
