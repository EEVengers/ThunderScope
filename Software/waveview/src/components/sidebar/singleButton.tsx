import React from 'react';
import './singleButton.css';

function SingleButton() {
  function handleSingleClick() {
    alert("Single")
  }

  return (
    <div>
      <button
        className={"SingleButton"}
        onClick={handleSingleClick}
      >
        <label
          className={"SingleButtonText"}>
          Single
        </label>
      </button>
    </div>
  )
}

export default SingleButton;