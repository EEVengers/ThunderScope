import React from 'react';
import { connect } from 'react-redux';

class ReduxTest extends React.Component<any, any> {
  increment = () => {
    this.props.dispatch({ type: 'INCREMENT_COUNTER' });
  }

  decrement = () => {
    this.props.dispatch({ type: 'DECREMENT_COUNTER' });
  }

  render() {
    return (
      <div>
      <h2>Counter</h2>
      <div>
        <button onClick={this.decrement}>-</button>
        <span>{this.props.count}</span>
        <button onClick={this.increment}>+</button>
      </div>
    </div>
    )
  }
}

function mapStateToProps(state: { count: any; }) {
  return {
    count: state.count
  };
}

export default connect(mapStateToProps)(ReduxTest);
