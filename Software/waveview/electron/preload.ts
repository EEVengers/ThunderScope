// All of the Node.js APIs are available in the preload process.
// It has the same sandbox as a Chrome extension.

//Let's put the above comment to the test ;)
const {GetData} = require("C:\\Users\\ratan\\source\\repos\\DSO\\Software\\waveview\\build\\Release\\addon.node");

const _win = (window as any);

_win.thunderscope = {
  GetData: GetData
}

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