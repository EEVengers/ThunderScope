const initialState = {
  leftValue1: "X1->X2",
  rightValue1: "500ns",
  leftValue2: "Y1->Y2",
  rightValue2: "300mV"
};

export default function(state = initialState, action: {type: any, payload: any}) { 
  switch(action.type) {
    default:
      return state;
  }
}