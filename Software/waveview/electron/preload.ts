// All of the Node.js APIs are available in the preload process.
// It has the same sandbox as a Chrome extension.

import * as fs from 'fs';
import { spawn } from 'child_process';
import { contextBridge, app } from 'electron';

const cwd = process.cwd();
const cpp_suffix_win = "\\build_cpp\\Release\\scope.exe";
const cpp_suffix_nix = "/build_cpp/Debug/scope";
const cpp_path = cwd + ((process.platform == "win32") ? cpp_suffix_win : cpp_suffix_nix);
const cpp = spawn(cpp_path, ["-c"]);

var did_open = false;
const SOCKET_PREFIX = (process.platform == "win32") ? "\\\\.\\pipe\\" : "/tmp/";
const SOCKETFILE_TX = SOCKET_PREFIX + "testPipeRX";
const SOCKETFILE_RX = SOCKET_PREFIX + "testPipeTX";
var TX_FD = -1;
var RX_FD = -1;

cpp.stdout.on('data', (data) => {
  console.log(`cpp stdout:\n${data}`);
  if(!did_open) {
    console.log(`cpp_path: ${cpp_path}`);

    fs.open(SOCKETFILE_TX, "w", (err, fd) => {
      if(err) {
        console.error(err);
      }
      TX_FD = fd;
    });
    fs.open(SOCKETFILE_RX, "r", (err, fd) => {
      if(err) {
        console.error(err);
      }
      RX_FD = fd;
    });
  }
  did_open = true;
});

cpp.stderr.on('data', (data) => {
  console.error(`cpp stderr:\n${data}`);
});

//Welcome to the future: https://www.electronjs.org/docs/tutorial/context-isolation
contextBridge.exposeInMainWorld("thunderBridge", {
  write: (buf: Uint8Array, cb: any) => fs.write(TX_FD, buf, 0, cb),
  read: (buf: Uint8Array, cb: any) => fs.read(RX_FD, buf, 0, buf.length, 0, cb)
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