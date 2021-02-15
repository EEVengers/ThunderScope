const {GetData , InitScopeLink} = require("./build/Release/addon.node");

//console.log(InitScopeLink());

var i;

var mydata = GetData();
console.log(mydata);

for(i = 0; i < 1000000; i++) {

}
//console.log(GetData());

for(i = 0; i < 1000000; i++) {

}
//console.log(GetData());
