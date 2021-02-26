var addon;
if(process.platform === "win32") {
  addon = require("./build/Release/addon.node");
}
else {
  addon = require("./build/Debug/addon.node");
}

//console.log(InitScopeLink());

var i;

var mydata = addon.GetData();
console.log(mydata);

for(i = 0; i < 1000000; i++) {

}
//console.log(GetData());

for(i = 0; i < 1000000; i++) {

}
//console.log(GetData());
