import React from 'react';
import { connect } from 'react-redux';
import './horizontalWidget.css';

class HorizontalWidget extends React.Component<any, any> { 

  increment = (value: any) => {
    this.props.dispatch({ type: 'horizontal/increaseValue', payload: value});
  }

  decrement = (value: any) => {
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
            onClick={() => this.decrement(1)}>
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
            onClick={() => this.increment(1)}>
            +
          </button>
            </div>
            <div className="HorizontalWidgetAdjustBlock-Value2">
            <button 
              className="MinusButton"
              onClick={() => this.decrement(2)}>
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
              onClick={() => this.increment(2)}>
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
