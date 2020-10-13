import React from 'react';
import Search from './subcomponents/search';
import LargeButton from './subcomponents/largebutton';
import './sidebar.css';

class SideBar extends React.Component {
  buttonList: {
    color: string, 
    className: string, 
    text: string
  }[];

  constructor(props: any) {
    super(props);
    this.buttonList = [
      {color: "red", className: "StopButton", text: "Stop"},
      {color: "yellow", className: "SingleButton", text: "Single"}
    ]
  }

  render() {
    return (
      <div className="SideBarComponent">
        <Search>

        </Search>
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
      </div>
    )
  }
}

export default SideBar;
