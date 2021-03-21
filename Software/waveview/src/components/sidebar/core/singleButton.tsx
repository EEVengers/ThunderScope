import React from 'react';
import { connect } from 'react-redux';
import './../../../css/sidebar/core/singleButton.css';

class SingleButton extends React.Component<any, any> {

  toggleSingleMode = () => {
    this.props.dispatch({type: 'graph/singleMode'});
  }

  render() {
    return (
      <div className={"SingleButtonComponent"}>
        <button
          className={"SingleButton"}
          onClick={() => this.toggleSingleMode()}
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

function mapStateToProps(state: { graph: any }) {
  return {
    graph: state.graph
  };
}

export default connect(mapStateToProps)(SingleButton);