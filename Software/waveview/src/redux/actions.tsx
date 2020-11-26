import { INCREASE_COUNTER, DECREASE_COUNTER } from './actionTypes';

let initialValue = 0;

export const increaseCounter = (content: any) => ({
  type: INCREASE_COUNTER,
  payload: { value: ++initialValue, content }
});

export const decreaseCounter = (content: any) => ({
  type: DECREASE_COUNTER,
  payload: { value: --initialValue, content }
});

