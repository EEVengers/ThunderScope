// Address of native addon, template for now
const {function} = require('./waveview/build/Release/addon.node'); 
//Calling functions of native addon 
var result = function(); 
//console.log(result);

//communicating with main process of electron app.
postMessage(result);