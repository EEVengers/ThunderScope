import React from 'react';
import './App.css';
import Graph from './components/graph/graph';
import BottomBar from './components/bottombar/bottombar';
import Sidebar from './components/sidebar/sidebar';
import TestPoints from './util/testpoints';
import TestConf from './util/testconf';

interface IAppState {
  tickCount: number;
}

let initialState: IAppState = {tickCount: 0};

class App extends React.Component {
  state: IAppState;
  timerID: number = 0;
  generator: TestPoints;
  conf: TestConf;
  channelList: {
    color: string, 
    className:string
  }[];
  
  constructor(props: any) {
    super(props);
    this.state = initialState;
    this.generator = new TestPoints(1000, 20);
    this.conf = new TestConf();
    this.channelList = [
      {color: "#EBFF00", className: "Channel1"},
      {color: "#00FF19", className: "Channel2"},
      {color: "#0075FF", className: "Channel3"},
      {color: "#FF0000", className: "Channel4"}
    ]
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
    this.generator.update();
    if(tickCount % 100 == 0) {
      this.conf.update(true);
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
          yDomain={this.generator.y.getDomain()}
          xDomain={this.generator.x.getDomain()}
          dataSeries={this.generator.getData()}
          colorSeries={this.channelList.map((c, i) => c.color)}
          />
        <BottomBar />
        <Sidebar />
      </div>
      );
    }
}

export default App;
