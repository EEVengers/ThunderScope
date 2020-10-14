import React from 'react';
import Search from './subcomponents/search';
import LargeButton from './subcomponents/largebutton';
import Widget from './subcomponents/widget/widget';
import './sidebar.css';

class SideBar extends React.Component {
  buttonList: {
    color: string, 
    className: string, 
    text: string
  }[];
  widgetList: {
    title: string,
    className: string
  }[];

  constructor(props: any) {
    super(props);
    this.buttonList = [
      {color: "red", className: "StopButton", text: "Stop"},
      {color: "yellow", className: "SingleButton", text: "Single"}
    ]
    this.widgetList = [
      {title: "Horizontal", className: "HorizontalWidget"},
      {title: "Vertical", className: "VerticalWidget"},
      {title: "Measurements", className: "MeasurementWidget"}
    ]
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
              <Widget>

              </Widget>
            )
          })
        }
      </div>
    )
  }
}

export default SideBar;
