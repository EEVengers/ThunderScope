const { lstat } = require("fs");
const net = require("net");
const fs = require('fs');

var HELLOWORLD = "HELLO! WORLD!";
var HELLOWORLD1 = "HELLO! WORLD!1";
var HELLOWORLD2 = "HELLO! WORLD!2";
var delayInMilliseconds = 10;

//unix file system
var SOCKETFILE_TX = "testPipeRX";
var SOCKETFILE_RX = "testPipeTX";
if(process.platform == "win32") {
    SOCKETFILE_TX = "\\\\.\\pipe\\" + SOCKETFILE_TX;
    SOCKETFILE_RX = "\\\\.\\pipe\\" + SOCKETFILE_RX;
} else {
    SOCKETFILE_TX = "/tmp/" + SOCKETFILE_TX;
    SOCKETFILE_RX = "/tmp/" + SOCKETFILE_RX;
}

console.log("TX_CLIENT PATH: " + SOCKETFILE_TX);
console.log("RX_CLIENT PATH: " + SOCKETFILE_RX);

var testPacket16 = new Uint16Array(new ArrayBuffer(10));

testPacket16[0] = 1;
testPacket16[1] = 0x1F2C;
testPacket16[2] = 4;
var testPacket = new Uint8Array(testPacket16.buffer);
testPacket[6] = 1;
testPacket[7] = 2;
testPacket[8] = 3;
testPacket[9] = 4;

console.log(testPacket16);
console.log(testPacket);


if(process.platform == "win32") {
    fs.open(SOCKETFILE_TX, "w", function(err, f) {
        if (err) throw err;
        fs.write(f,HELLOWORLD,0,function(err, written, buff) {
            console.log("Successfully written to 1");
            fs.write(f,HELLOWORLD1,0,function(err, written, buff) {
                console.log("Successfully written to 2");
                fs.write(f,HELLOWORLD2,0,function(err, written, buff) {
                    console.log("Successfully written to 3");
                });
            });
        });
    });
    
    fs.open(SOCKETFILE_RX, "r",function(err, f) {
        fs.read(f,function(err, bytesRead, bytes) {
            if(bytes != undefined)
                console.log(bytesRead);
            console.log(String(bytes));
        });
    });
} else { //UNIX Systems
    var clientTX = net.createConnection({path: SOCKETFILE_TX})
    .on("connect", () => {
        console.log("ClientTX Connected");
    })
    .on("data", function(data) {
        console.log(new Uint8Array(data));
    })
    ;
    
    clientTX.write(testPacket);
    
    var clientRX = net.createConnection({path: SOCKETFILE_RX})
    .on("connect", () => {
        console.log("ClientRX Connected");
    })
    .on("data", function(data) {
        console.log(new Uint8Array(data));
    })
    ;
    
}

/*
 for(var q = 0; q < 1000; q++) {
 client.write(RANDOMSTRING);
 }
 
 setTimeout(
 function() {
 for (var i = 0; i < 10000; i++) {
 setTimeout(function () {
 client.write(RANDOMSTRING);
 }, delayInMilliseconds * i);
 }
 }, 2000);
 */
