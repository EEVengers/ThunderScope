import React from 'react';
import './adjustValueBlock.css';
import {IAdjustValueBlockProps, IBlockProps, IBlockState} from '../../../../interfaces/sidebar/widgets/blockInterfaces';

class AdjustValueBlock extends React.Component<IBlockProps, IBlockState> {
  constructor(props: IBlockProps) {
    super(props);
    this.state = {
      data: this.props.data as IAdjustValueBlockProps
    }
  }

  handlePlusButtonClick() {
    this.setState({
      data: {
        value: this.state.data.value + 1,
        unit: this.state.data.unit,
        showPerDiv: this.state.data.showPerDiv
      }
    });
    this.forceUpdate();
  }

  handleMinusButtonClick() {
    this.setState({
      data: {
        value: this.state.data.value - 1,
        unit: this.state.data.unit,
        showPerDiv: this.state.data.showPerDiv
      }
    });
    this.forceUpdate();
  }

  // TODO: Could move the perDivisionText logic to a helper method
  render() {
    let perDivisionText;
    if(this.state.data.showPerDiv == true) {
      perDivisionText = "/div";
    }
    else{
      perDivisionText = "";
    }

    return (
      <div className="AdjustValueBlockComponent">
        <button 
          className="MinusButton"
          onClick={() => this.handleMinusButtonClick()}>
          -
        </button>
        <label 
          className="AdjustValueBlockValue"
          style={{color: this.state.data.color}}
        >
          {this.state.data.value}{this.state.data.unit}{perDivisionText}
        </label>
        <button 
          className="PlusButton"
          onClick={() => this.handlePlusButtonClick()}>
          +
        </button>
      </div>
    )
  }
}

export default AdjustValueBlock;
