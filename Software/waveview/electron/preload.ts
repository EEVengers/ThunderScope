// All of the Node.js APIs are available in the preload process.
// It has the same sandbox as a Chrome extension.

import * as fs from 'fs';
import { exec } from 'child_process';
import { contextBridge } from 'electron';

const SOCKET_PREFIX = (process.platform == "win32") ? "\\\\.\\pipe\\" : "/tmp/";
const SOCKETFILE_TX = SOCKET_PREFIX + "testPipeRX";
const SOCKETFILE_RX = SOCKET_PREFIX + "testPipeTX";
exec('.\\scope_link\\bridge.exe', (err, stdout, stderr) => {});

var TX_FD = -1;
var RX_FD = -1;
fs.open(SOCKETFILE_TX, "w", (err, fd) => {TX_FD = fd;});
fs.open(SOCKETFILE_RX, "r", (err, fd) => {RX_FD = fd;});

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