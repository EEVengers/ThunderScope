import React from 'react';
import './../../../css/sidebar/core/stopButton.css';

function StopButton() {
  function handleStopClick() {
    alert("Stopped")
  }

  return (
    <div>
      <button
        className={"StopButton"}
        onClick={handleStopClick}
      >
        <label
          className={"StopButtonText"}>
          Stop
        </label>
      </button>
    </div>
  )
}

export default StopButton;