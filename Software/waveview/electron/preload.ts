// All of the Node.js APIs are available in the preload process.
// It has the same sandbox as a Chrome extension.

import * as fs from 'fs';
import { contextBridge } from 'electron';

var SOCKET_PREFIX = "";
if(process.platform == "win32") {
  SOCKET_PREFIX = "\\\\.\\pipe\\";
}
else {
  SOCKET_PREFIX = "/tmp/";
}

const SOCKETFILE_TX = SOCKET_PREFIX + "testPipeRX";
const SOCKETFILE_RX = SOCKET_PREFIX + "testPipeTX";
const TX_FD = fs.openSync(SOCKETFILE_TX, "w");
const RX_FD = fs.openSync(SOCKETFILE_RX, "r")

//Welcome to the future: https://www.electronjs.org/docs/tutorial/context-isolation
contextBridge.exposeInMainWorld("thunderBridge", {
  write: (s: string, cb: any) => fs.write(TX_FD, s, cb),
  read: (buf: Buffer, cb: any) => fs.read(RX_FD, buf, 0, buf.length, null, cb)
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