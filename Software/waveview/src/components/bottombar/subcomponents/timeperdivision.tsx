import React from 'react';
import './timeperdivision.css';

interface ITimePerDivisionProps {
  timeValue: number,
  timeUnit: string
}

function TimePerDivision(props: ITimePerDivisionProps) {
  return(
    <div className="TimePerDivisionComponent">
      {props.timeValue}{props.timeUnit}/div
    </div>
  )
}

export default TimePerDivision;