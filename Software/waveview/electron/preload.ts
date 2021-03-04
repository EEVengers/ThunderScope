// All of the Node.js APIs are available in the preload process.
// It has the same sandbox as a Chrome extension.

import * as fs from 'fs';

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

    var counter = 0;

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

    var b = Buffer.from("uhhhhhhhhhhhh");
    fs.open(SOCKETFILE_RX, "r",function(err, f) {
      fs.read(f,b,0, b.byteLength, 0,function(err, bytesRead, bytes) {
        if(bytes != undefined)
          console.log(bytesRead);
          console.log(String(bytes));
      });
    });


window.addEventListener("DOMContentLoaded", () => {
  const replaceText = (selector: string, text: string) => {
    const element = document.getElementById(selector);
    if (element) {
      element.innerText = text;
    }
  };

  for (const type of ["chrome", "node", "electron"]) {
    replaceText(`${type}-version`, (process.versions as any)[type]);
  }
});