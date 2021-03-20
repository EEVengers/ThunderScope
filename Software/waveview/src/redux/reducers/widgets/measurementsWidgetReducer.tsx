import MathType from '../../../configuration/enums/mathType';
import TimeUnit from '../../../configuration/enums/timeUnit';
import VoltageUnit from '../../../configuration/enums/voltageUnit';

const initialState = {
  measurement: [
    {
      mathType: MathType.Max,
      value: 500,
      unit: TimeUnit.NanoSecond
    },
    {
      mathType: MathType.Min,
      value: 300,
      unit: VoltageUnit.MilliVolt
    }
  ]
};

export default function(state = initialState, action: {type: any, payload: any}) { 
  switch(action.type) {
    default:
      return state;
  }
}