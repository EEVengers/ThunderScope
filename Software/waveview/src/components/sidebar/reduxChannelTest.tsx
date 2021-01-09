import React from 'react';
import { connect } from 'react-redux';

class ReduxChannelTest extends React.Component<any, any> {
  increment = () => {
    this.props.dispatch({ type: 'INCREMENT_CHANNEL' });
  }

  decrement = () => {
    this.props.dispatch({ type: 'DECREMENT_CHANNEL' });
  }

  render() {
    return (
      <div style={{color:this.props.channel.color}}>
      <h2>Channel</h2>
      <div>
        <button onClick={this.decrement}>-</button>
        <span>{this.props.channel.channel.toString()}</span>
        <button onClick={this.increment}>+</button>
      </div>
    </div>
    )
  }
}

function mapStateToProps(state: { channel: any, color: any }) {
  return {
    channel: state.channel,
    color: state.color
  };
}

export default connect(mapStateToProps)(ReduxChannelTest);
