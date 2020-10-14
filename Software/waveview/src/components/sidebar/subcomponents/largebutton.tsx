import React from 'react';
import './largebutton.css';

function LargeButton(props: any) {
  return (
    <div className={props.buttonClassName}>
      <label>
          {props.buttonText}
      </label>
    </div>
  )
}

export default LargeButton;