import React from 'react';
import { connect } from 'react-redux';
import './../../../css/bottombar/subscomponents/trigger.css';

class Trigger extends React.Component<any, any> { 
  render() {
    return (
      <div className="TriggerStatus"> 
        Trig:CH{this.props.triggerWidget.triggerChannel}, Mode:{this.props.triggerWidget.triggerType}
      </div>
    )
  }
}

function mapStateToProps(state: { triggerWidget: any; }) {
  return {
    triggerWidget: state.triggerWidget
  };
}

export default connect(mapStateToProps)(Trigger);