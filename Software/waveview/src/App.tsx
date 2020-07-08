import React from 'react';
import './App.css';
import Graph from './components/graph/graph';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <Graph>
          Some props to pass in
        </Graph>
      </header>
    </div>
  );
}

export default App;
