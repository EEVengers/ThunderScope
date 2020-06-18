import React from 'react';
import './App.css';
import {
  FlexibleXYPlot,
  XAxis,
  YAxis,
  HorizontalGridLines,
  VerticalGridLines,
  LineSeries
} from 'react-vis';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <div>
          <div className="graph_view">
              <FlexibleXYPlot>
                <HorizontalGridLines style={{stroke: '#B7E9ED'}} />
                <VerticalGridLines style={{stroke: '#B7E9ED'}} />
                <XAxis
                  title="X Axis"
                />
                <YAxis 
                  title="Y Axis" 
                />
                <LineSeries
                  className="data-series"
                  data={[{x: 1, y: 3}, {x: 2, y: 5}, {x: 3, y: 15}, {x: 4, y: 12}]}
                />
              </FlexibleXYPlot>
          </div>
        </div>
      </header>
    </div>
  );
}

export default App;
