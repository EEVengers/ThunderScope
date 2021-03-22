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
  generator: TestPoints;

  constructor(props: any) {
    super(props);
    this.state = initialState;
    this.generator = new TestPoints(50, 50);
  }

  componentDidMount() {
    this.timerID = window.setInterval(
      () => this.tick(),
      16.67
    );
    this.generator.mountCalls();
  }

  componentWillUnmount() {
    clearInterval(this.timerID)
  }

  tick() {
    let tickCount = this.state.tickCount + 1;
    this.generator.update();
    if(tickCount % 100 === 0) {
      console.log(tickCount);
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
          />
        <BottomBar />
        <Sidebar />
      </div>
      );
    }
}

export default App;
