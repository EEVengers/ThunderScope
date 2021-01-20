import React from 'react';
import { connect } from 'react-redux';
import './../../../css/bottombar/subscomponents/timeperdivision.css';

class TimePerDivision extends React.Component<any, any> { 
  render() {
    return(
      <div className="TimePerDivisionComponent">
        {this.props.horizontalWidget.horizontalTimeBase.value.toString()}
        {this.props.horizontalWidget.horizontalTimeBase.unit}
      </div>
    )
  }
}

function mapStateToProps(state: { horizontalWidget: any; }) {
  return {
    horizontalWidget: state.horizontalWidget
  };
}

export default connect(mapStateToProps)(TimePerDivision);