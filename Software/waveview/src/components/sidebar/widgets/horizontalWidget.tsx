import React from 'react';
import { connect } from 'react-redux';
import './horizontalWidget.css';

class HorizontalWidget extends React.Component<any, any> { 

  incrementValue = (value: any) => {
    this.props.dispatch({ type: 'horizontal/increaseValue', payload: value});
  }

  decrementValue = (value: any) => {
    this.props.dispatch({ type: 'horizontal/decreaseValue' , payload: value});
  }

  render() {
    return (
      <div className="HorizontalWidget">
        <div className="WidgetTitle">
          Horizontal
        </div>
        
        <div className="HorizontalWidgetAdjustBlock-Value1">
          <button 
            className="MinusButton"
            onClick={() => this.decrementValue(1)}>
            -
          </button>
          <label 
            className="AdjustValueBlockValue1"
            style={{color: "white"}}
          >
            {this.props.horizontalWidget.value1.toString()}{"ns/div"}
          </label>
          <button 
            className="PlusButton"
            onClick={() => this.incrementValue(1)}>
            +
          </button>
        </div>

        <div className="HorizontalWidgetAdjustBlock-Value2">
          <button 
            className="MinusButton"
            onClick={() => this.decrementValue(2)}>
            -
          </button>
          <label 
            className="AdjustValueBlockValue2"
            style={{color: "white"}}
          >
            {this.props.horizontalWidget.value2.toString()}{"ms"}
          </label>
          <button 
            className="PlusButton"
            onClick={() => this.incrementValue(2)}>
            +
          </button>
        </div>
        
      </div>
    )
  }
}

function mapStateToProps(state: { horizontalWidget: any; }) {
  return {
    horizontalWidget: state.horizontalWidget
  };
}

export default connect(mapStateToProps)(HorizontalWidget);
