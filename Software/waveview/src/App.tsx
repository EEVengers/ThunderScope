import React from 'react';
import './App.css';
import Graph from './components/graph/graph';
import BottomBar from './components/bottombar/bottombar';
import Sidebar from './components/sidebar/sidebar';
import TestPoints from './util/testpoints';

interface IAppState {
  tickCount: number;
}

let initialState: IAppState = {tickCount: 0};

class App extends React.Component {
  state: IAppState;
  timerID: number = 0;
  generatorList: TestPoints[];
  channelList: {
    color: string, 
    className:string
  }[];
  triggerInformation: {
    channel: string, 
    mode: string
  };
  timePerDivisionInformation: { 
    timeValue: number, 
    timeUnit: string 
  }
  
  constructor(props: any) {
    super(props);
    this.state = initialState;
    this.generatorList = [
      new TestPoints(1000, 300, "sinc"),
      new TestPoints(1000, 300, "sine")
    ];
    this.channelList = [
      {color: "yellow", className: "Channel1"},
      {color: "chartreuse", className: "Channel2"},
      {color: "blue", className: "Channel3"},
      {color: "red", className: "Channel4"}
    ]
    this.triggerInformation = {
      channel: "CH1",
      mode: "RisingEdge"
    }
    this.timePerDivisionInformation = { 
      timeValue: 10, 
      timeUnit: "ns" 
    }
  }

  componentDidMount() {
    this.timerID = window.setInterval(
      () => this.tick(),
      16.67
    )
  }

  componentWillUnmount() {
    clearInterval(this.timerID)
  }

  tick() {
    let tickCount = this.state.tickCount + 1;
    for(let generator of this.generatorList)
    {
      generator.update(tickCount);
    }
    this.setState({tickCount: tickCount});
  }

  render() {
    return (
      <div className="App">
        <header 
          className="App-header">
        </header>
        <Graph
          yDomain={this.generatorList[0].y.getDomain()}
          xDomain={this.generatorList[0].x.getDomain()}
          dataSeries={this.generatorList.map((gen, idx) => gen.getData())}
          colorSeries={this.channelList.map((c, i) => c.color)}
          />
        <BottomBar 
          channelList={this.channelList}
          triggerInformation={this.triggerInformation}
          timePerDivisionInformation={this.timePerDivisionInformation}
          />
        <Sidebar />
      </div>
      );
    }
}

export default App;
