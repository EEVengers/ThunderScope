const {GetData , InitScopeLink} = require("./build/Debug/addon.node");

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
