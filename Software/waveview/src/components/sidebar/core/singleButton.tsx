import React from 'react';
import './../../../css/sidebar/core/singleButton.css';

class SingleButton extends React.Component<any, any> {
  
  handleSingleClick = () => {
    alert("Single")
  }

  render() {
    return (
      <div className={"SingleButtonComponent"}>
        <button
          className={"SingleButton"}
          onClick={() => this.handleSingleClick()}
        >
          <label
            className={"SingleButtonText"}>
            Single
          </label>
        </button>
      </div>
    )
  }
}

export default SingleButton;