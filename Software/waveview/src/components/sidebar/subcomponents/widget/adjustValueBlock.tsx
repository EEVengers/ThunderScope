import React from 'react';

interface IAdjustValueBlockProps {
  value: number,
  unit: string,
  perUnit: string
}

interface IAdjustValueBlockState {
  value: number,
  unit: string,
  perUnit: string
}

class AdjustValueBlock extends React.Component<IAdjustValueBlockProps, IAdjustValueBlockState> {

  constructor(props: IAdjustValueBlockProps) {
    super(props);
    this.state = {
      value: props.value,
      unit: props.unit,
      perUnit: props.perUnit
    }
  }

  handlePlusButtonClick() {
    this.setState({
      value: this.state.value + 1
    });
    this.forceUpdate();
  }

  handleMinusButtonClick() {
    this.setState({
      value: this.state.value - 1
    });
    this.forceUpdate();
  }

  render() {
    return (
      <div className="AdjustValueBlockComponent">
        <button 
          className="PlusButton"
          onClick={() => this.handlePlusButtonClick}>
          +
        </button>
        <label 
          className="Value"
        >
          {this.state.value}{this.state.unit}{this.state.perUnit}
        </label>
        <button 
          className="MinusButton"
          onClick={() => this.handleMinusButtonClick}>
          -
        </button>
      </div>
    )
  }
}

export default AdjustValueBlock;
