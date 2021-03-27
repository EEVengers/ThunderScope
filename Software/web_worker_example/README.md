# Electron Web Worker Example

Bare minimal example that shows a Web Worker running in Electron with Node
integration, meaning the Worker can use Node.js APIs (f.e. `require()` to import
NPM dependencies, etc).

## Run

To run the example:

```sh
npm install
npm start
```

When the window opens, look at the console to see the logs from the worker script.

The `src/client.js` file starts the `src/worker.js` file in a `Worker`. The
`src/index.js` file creates the `BrowserWindow` with `nodeIntegrationInWorker`
set to `true` so that Node.js APIs are available in the Worker.
