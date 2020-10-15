import React from 'react';

function AdjustValueBlock(props: any) {
  function handlePlusButtonClick() {
    alert("Bitch Plus");
  }

  function handleMinusButtonClick() {
    alert("Bitch Minus");
  }

  return (
    <div className="AdjustValueBlockComponent">
      <button 
        className="PlusButton"
        onClick={handlePlusButtonClick}>
        +
      </button>
      <label 
        className="Value"
      >
        10ns/div
      </label>
      <button 
        className="MinusButton"
        onClick={handleMinusButtonClick}>
        -
      </button>
    </div>
  )
}

export default AdjustValueBlock;
