import React from 'react';
import { connect } from 'react-redux';
import './../../../css/sidebar/core/singleButton.css';
import Graph from '../../graph/graph';
import MeasurementsWidget from '../widgets/measurementsWidget';
import Button from '@material-ui/core/Button';
import DefaultColors from '../../../configuration/enums/defaultColors';

class SingleButton extends React.Component<any, any> {

  toggleSingleMode = () => {
    //this.props.dispatch({type: 'graph/singleMode'}); //TODO: something about this
    if(Graph.instanceList.length > 0) {
      this.props.dispatch({type: 'graph/tick'});
      Graph.instanceList[0].generator.update();
    }
    if(MeasurementsWidget.instanceList.length > 0) {
      this.props.dispatch({type: 'measurements/tick'});
      MeasurementsWidget.instanceList[0].update();
    }
  }

  render() {
    return (
      <div className={"SingleButtonComponent"}>
        <Button
          className={"SingleButton"}
          style={{background: DefaultColors.SingleButton}}
          onClick={() => this.toggleSingleMode()}
        >
          <label
            className={"SingleButtonText"}>
            Single
          </label>
        </Button>
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