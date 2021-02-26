const { SSL_OP_SSLEAY_080_CLIENT_DH_BUG } = require("constants");
const { nodeModuleNameResolver } = require("typescript");

var addon;
if(process.platform === "win32") {
  addon = require("./build/Release/addon.node");
}
else {
  addon = require("./build/Debug/addon.node");
}

console.log(addon.InitScopeLink());

while(1) {
    myFunc();
}

function myFunc() {
    var i = 0;
    var q = 0;
    while(1) {
        while(1) {
            var mydata = addon.GetData();
            mydata = null;
            if(i == 1000) {
                break;
            }
            i = i + 1;
        }
        gc();
        q = q + 1;
        i = 0;
        if(q == 100) {
            break;
        }
    }
    
    console.log("goodbye RAM");
}