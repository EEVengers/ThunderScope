import React from 'react';
import './App.css';
import Graph from './components/graph/graph';
import BottomBar from './components/bottombar/bottombar';
import Sidebar from './components/sidebar/sidebar';

class App extends React.Component {
  render() {
    return (
      <div className="App">
        <header
          className="App-header">
        </header>
        <Graph />
        <BottomBar />
        <Sidebar />
      </div>
      );
    }
}

export default App;
