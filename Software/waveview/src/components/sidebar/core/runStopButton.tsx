import React from 'react';
import { connect } from 'react-redux';
import DefaultColors from '../../../configuration/enums/defaultColors';
import GraphStatus from '../../../configuration/enums/graphStatus';
import './../../../css/sidebar/core/runStopButton.css';

class RunStopButton extends React.Component<any,any> {

  changeGraphStatus = () => {
    this.props.dispatch({type: 'graph/changeStatus'});
  }

  render() {
    return (
      <div className={"RunStopButtonComponent"}>
        <button
          className={"RunStopButton"}
          style={{background: this.props.graph.currentStatus === GraphStatus.On ? DefaultColors.StopButton : DefaultColors.RunButton}}
          onClick={() => this.changeGraphStatus()}
        >
          <label
            className={"RunStopButtonText"}>
            {this.props.graph.currentStatus}
          </label>
        </button>
      </div>
    )
  }
}

function mapStateToProps(state: { graph: any }) {
  return {
    graph: state.graph
  };
}

export default connect(mapStateToProps)(RunStopButton);