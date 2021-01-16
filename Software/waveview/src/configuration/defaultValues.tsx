const x1ProbeValues = [
  "10V/div", 
  "5V/div", 
  "2V/div", 
  "1V/div",
  "500mV/div",
  "200mV/div",
  "100mV/div",
  "50mV/div",
  "20mV/div",
  "10mV/div",
  "5mV/div",
  "2mV/div",
  "1mV/div"
];
const x10ProbeValues = [
  "100V/div", 
  "50V/div", 
  "20V/div", 
  "10V/div",
  "5V/div",
  "2V/div",
  "1V/div",
  "500mV/div",
  "200mV/div",
  "100mV/div",
  "50mV/div",
  "20mV/div",
  "10mV/div"
];
// 13 different voltages per divison presets
// Start at x1ProbeValues[6] and change accordingly 

const horizontalTimeBases = [
  "1ns/div",
  "2ns/div",
  "5ns/div",
  "10ns/div",
  "20ns/div",
  "50ns/div",
  "100ns/div",
  "200ns/div",
  "500ns/div",
  "1us/div",
  "2us/div",
  "5us/div",
  "10us/div",
  "20us/div",
  "50us/div",
  "100us/div",
  "200us/div",
  "500us/div",
  "1ms/div",
  "2ms/div",
  "5ms/div",
  "10ms/div",
  "20ms/div",
  "50ms/div",
  "100ms/div",
  "200ms/div",
  "500ms/div",
  "1s/div",
  "2s/div",
  "5s/div",
  "10s/div"
];
// 31 different voltages per division presets
// Start at horizontalTimeBases[15] and change accordingly

export default {
  x1ProbeValues, 
  x10ProbeValues,
  horizontalTimeBases
};