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
  timerID: number = 0;
  state: IAppState;
  generatorList: TestPoints[];
  channelList: {color: string, className:string}[];
  
  constructor(props: any) {
    super(props);
    this.state = initialState;
    this.generatorList = [
      new TestPoints(1000, 300, "sinc"),
      new TestPoints(1000, 300, "sine")
    ];
    this.channelList = [
      {color: "yellow", className: "Channel1"},
      {color: "magenta", className: "Channel2"}
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
        <BottomBar channelList={this.channelList}/>
        <Sidebar />
      </div>
      );
    }
}

export default App;
