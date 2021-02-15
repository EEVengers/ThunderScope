# Custom Script Info

Skip to "Scope Link Build Commands" for building the `scope_link` (C++) portion.

Skip to the "Create React App Info" for the standard scripts provided with Create React App.

## Electron Commands

### `npm run electron-start`

...

### `npm run preelectron-pack`

...

### `npm run electron-pack`

...

### `npm run postinstall`

...

### `npm run electron-dev`

Open the Electron app such that it hot-reloads when the TypeScript/JavaScript is updated. This script is for Linux/MacOS only.

### `npm run electron-dev-win`

Open the Electron app such that it hot-reloads when the TypeScript/JavaScript is updated. This script is for Windows only.

### `npm run electron-build`

Build an executable and installer for the Electron app. This script is for Linux/MacOS only.

### `npm run electron-build-win`

Build an executable and installer for the Electron app. This script is for Windows only.

## Scope Link Build Commands

### `npm run make-cpp`

Attempt to build the `scope_link` (C++) application. This script is for Linux and MacOS.

You need to have `cmake` installed for this to work. On Ubuntu, this would be installed with:

```
sudo apt install cmake
```

To check if the build worked, try running `node test.js`.

```
rm -rf build/*
npm run install
node test.js
```

### 'npm run make-cpp-win`

Attempt to build the `scope_link` (C++) application. This script is for Windows. You need to have CMake installed for this to work.

# Create React App Info

This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).

## Available Scripts

In the project directory, you can run:

### 'npm install'

Runs the MakeFile and compiles the NAPI addon.

After this command is run the addon is created and can be called from regular .js files

### `npm start`

Runs the app in the development mode.

Open [http://localhost:3000](http://localhost:3000) to view it in the browser.

The page will reload if you make edits.

You will also see any lint errors in the console.

### `npm test`

Launches the test runner in the interactive watch mode.

See the section about [running tests](https://facebook.github.io/create-react-app/docs/running-tests) for more information.

### `npm run build`

Builds the app for production to the `build` folder.

It correctly bundles React in production mode and optimizes the build for the best performance.

The build is minified and the filenames include the hashes.

Your app is ready to be deployed!

See the section about [deployment](https://facebook.github.io/create-react-app/docs/deployment) for more information.

### `npm run eject`

**Note: this is a one-way operation. Once you `eject`, you can’t go back!**

If you aren’t satisfied with the build tool and configuration choices, you can `eject` at any time. This command will remove the single build dependency from your project.

Instead, it will copy all the configuration files and the transitive dependencies (webpack, Babel, ESLint, etc) right into your project so you have full control over them. All of the commands except `eject` will still work, but they will point to the copied scripts so you can tweak them. At this point you’re on your own.

You don’t have to ever use `eject`. The curated feature set is suitable for small and middle deployments, and you shouldn’t feel obligated to use this feature. However we understand that this tool wouldn’t be useful if you couldn’t customize it when you are ready for it.

## Learn More

You can learn more in the [Create React App documentation](https://facebook.github.io/create-react-app/docs/getting-started).

To learn React, check out the [React documentation](https://reactjs.org/).
