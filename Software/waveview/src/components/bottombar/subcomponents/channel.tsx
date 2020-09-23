import React, {CSSProperties} from 'react';
import './channel.css';

interface IChannelState {
  channelNumber: number
  voltsPerDiv: number
  voltageValue: number
  voltageUnit: string
  measurementType: string
  textColour: string
}

let initialState: IChannelState = {
  channelNumber: 1, 
  voltsPerDiv: 1,
  voltageValue: 5,
  voltageUnit: "mV",
  measurementType: "DC",
  textColour: ""
};

class Channel extends React.Component {
  constructor(props: any) {
    super(props);
    this.state = initialState; 
  }

  state = initialState;
    
  render() {
    return (
      <div className="ChannelComponent">
        <label>
          CH{this.state.channelNumber}: {this.state.voltsPerDiv}V/div, {this.state.voltageValue}{this.state.voltageUnit}, {this.state.measurementType}
        </label>
      </div>
    )
  }
}
  
export default Channel;
  