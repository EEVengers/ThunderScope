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
  
  constructor(props: any) {
    super(props);
    this.state = initialState;
    this.generatorList = [
      new TestPoints(1000, 20, "sinc")
    ];
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
      33.33
    )
  }

  componentWillUnmount() {
    clearInterval(this.timerID)
  }

  tick() {
    let tickCount = this.state.tickCount + 1;
    for(let generator of this.generatorList)
    {
      generator.update();
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
        <BottomBar />
        <Sidebar />
      </div>
      );
    }
}

export default App;
