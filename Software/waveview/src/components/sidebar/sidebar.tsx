import React from 'react';
import Search from './search';
import LargeButton from './largebutton';
import Widget from './widgets/widget';
import './sidebar.css';
import HorizontalData from './widgets/config/HorizontalWidget.json';
import VerticalData from './widgets/config/VerticalWidget.json';
import MeasurementsData from './widgets/config/MeasurementsWidget.json';
import {IButton, IWidget} from './interfaces/sidebarInterfaces';

class SideBar extends React.Component {
  buttonList: IButton[]
  widgetList: IWidget[]

  constructor(props: any) {
    super(props);
    this.buttonList = [
      {color: "red", className: "StopButton", text: "Stop"},
      {color: "yellow", className: "SingleButton", text: "Single"}
    ]
    this.widgetList = [
      HorizontalData.widgets, 
      VerticalData.widgets, 
      MeasurementsData.widgets]
  }

  render() {
    return (
      <div className="SideBarComponent">
        <Search />
        {
        this.buttonList.map((b) => {
          return (
            <LargeButton
              buttonColor = {b.color}
              buttonClassName = {b.className}
              buttonText = {b.text}
            />
          )
        })
        }
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
