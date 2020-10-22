import React from 'react';
import './adjustValueBlock.css';

interface IAdjustValueBlockProps {
  data: {
    value: number,
    unit: string,
    perUnit: boolean
  }
}

interface IBlockProps {
  blockType: string,
  data: object
}

interface IBlockState {
  blockType: string,
  data: any
}

class AdjustValueBlock extends React.Component<IBlockProps, IBlockState> {

  constructor(props: IBlockProps) {
    super(props);
    this.state = {
      blockType: this.props.blockType,
      data: this.props.data as IAdjustValueBlockProps
    }
  }

  handlePlusButtonClick() {
    this.setState({
      data: {
        value: this.state.data.value + 1
      }
    });
    this.forceUpdate();
  }

  handleMinusButtonClick() {
    this.setState({
      data: {
        value: this.state.data.value - 1
      }
    });
    this.forceUpdate();
  }

  render() {
    const showPerUnit = this.state.data.perUnit;
    let perUnit;
    if(showPerUnit == true) {
      perUnit = "/div";
    }
    else{
      perUnit = "";
    }

    return (
      <div className="AdjustValueBlockComponent">
        <button 
          className="PlusButton"
          onClick={() => this.handlePlusButtonClick()}>
          +
        </button>
        <label 
          className="AdjustValueBlockValue"
        >
          {this.state.data.value}{this.state.data.unit}{perUnit}
        </label>
        <button 
          className="MinusButton"
          onClick={() => this.handleMinusButtonClick()}>
          -
        </button>
      </div>
    )
  }
}

export default AdjustValueBlock;
