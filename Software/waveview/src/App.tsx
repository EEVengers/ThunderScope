import React from 'react';
import './App.css';
import Graph from './components/graph/graph';
import BottomBar from './components/bottombar/bottombar';
import Sidebar from './components/sidebar/sidebar';

function App() {
  return (
    <div className="App">
      <header 
        className="App-header">
      </header>
      <Graph>
          Some props to pass in
      </Graph>
      <BottomBar>
          BottomBitch
      </BottomBar>
      <Sidebar>
          Sidebar
      </Sidebar>
    </div>
    
  );
}

export default App;
