import setChMode from '../configuration/enums/setChMode';

export interface SetChState {
  setCh: setChMode,
  setTriggerCh: number,
  chOrder: number[]
}

export function setChHelper(
  ch1: boolean,
  ch2: boolean,
  ch3: boolean,
  ch4: boolean,
  triggerCh: number
): SetChState {
  let chList = [ch1, ch2, ch3, ch4];
  let triggerChIdx = triggerCh - 1;
  let quadChOrder = [1, 2, 3, 4];

  var chOrder = quadChOrder.filter((a, i) => chList[i] || triggerChIdx == i);
  var setCh = chOrder.length as setChMode;
  if(setCh == 3) {
    chOrder = quadChOrder;
    setCh = quadChOrder.length;
  }
  let setTriggerCh = chOrder.indexOf(triggerCh) + 1;

  return {
    setCh: setCh,
    setTriggerCh: setTriggerCh,
    chOrder: chOrder
  }
}

//Since I bothered writing this, might as well keep it.
export function logAllSetChHelper() {
  var res = []
  let flip = [true, false];
  for(let ch1 of flip) {
    for(let ch2 of flip) {
      for(let ch3 of flip) {
        for(let ch4 of flip) {
          for(var i = 1; i <= 4; i++) {
            res.push({
              in: {ch1: ch1, ch2: ch2, ch3: ch3, ch4: ch4, i: i},
              out: setChHelper(ch1, ch2, ch3, ch4, i)
            });
          }
        }
      }
    }
  }
  console.log(res);
}