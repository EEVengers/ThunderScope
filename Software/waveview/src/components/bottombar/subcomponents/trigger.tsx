import React from 'react';
import { connect } from 'react-redux';
import './../../../css/bottombar/subcomponents/trigger.css';

class Trigger extends React.Component<any, any> { 
  render() {
    return (
      <div className="TriggerStatus"> 
        Trig:
      <label
        style={{color: this.props.settings.colors.channel[this.props.triggerWidget.triggerChannel-1]}}>
        CH{this.props.triggerWidget.triggerChannel}
      </label>
      , Mode: {this.props.triggerWidget.triggerType[this.props.triggerWidget.triggerChannel-1]}
      </div>
    )
  }
}

function mapStateToProps(state: { triggerWidget: any, settings: any }) {
  return {
    triggerWidget: state.triggerWidget,
    settings: state.settings
  };
}

export default connect(mapStateToProps)(Trigger);