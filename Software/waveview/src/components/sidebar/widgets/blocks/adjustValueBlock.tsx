import React from 'react';
import './adjustValueBlock.css';
import {IAdjustValueBlockProps} from '../../../../interfaces/sidebar/widgets/blockInterfaces';
import { connect } from 'react-redux';

class AdjustValueBlock extends React.Component<any, any> {
  constructor(props: any) {
    super(props);
    this.state = {
      data: this.props.data as IAdjustValueBlockProps
    }
  }

  increment = () => {
    this.props.dispatch({ type: 'horizontal/increaseValue', payload: 2});
  }

  decrement = () => {
    this.props.dispatch({ type: 'horizontal/decreaseValue' , payload: 1});
  }

  // TODO: Could move the perDivisionText logic to a helper method
  render() {
    let perDivisionText;
    if(this.state.data.showPerDiv === true) {
      perDivisionText = "/div";
    }
    else{
      perDivisionText = "";
    }

    return (
      <div className="AdjustValueBlockComponent">
        <button 
          className="MinusButton"
          onClick={this.decrement}>
          -
        </button>
        <label 
          className="AdjustValueBlockValue"
          style={{color: this.state.data.color}}
        >
          {this.props.horizontalWidget.value2.toString()}{this.state.data.unit}{perDivisionText}
        </label>
        <button 
          className="PlusButton"
          onClick={this.increment}>
          +
        </button>
      </div>
    )
  }
}

function mapStateToProps(state: { horizontalWidget: any; }) {
  return {
    horizontalWidget: state.horizontalWidget
  };
}

export default connect(mapStateToProps)(AdjustValueBlock);
