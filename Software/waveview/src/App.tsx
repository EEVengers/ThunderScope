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
  points: TestPoints;
  
  constructor(props: any) {
    super(props);
    this.state = initialState;
    this.points = new TestPoints();
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
    this.points.update(tickCount);
    this.setState({tickCount: tickCount});
  }

  render() {
    return (
      <div className="App">
        <header 
          className="App-header">
        </header>
        <Graph
          yDomain={this.points.y.getDomain()}
          xDomain={this.points.x.getDomain()}
          data={this.points.getData()}
          />
        <BottomBar />
        <Sidebar />
      </div>
      );
    }
}

export default App;
