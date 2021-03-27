/*const _ = require('lodash')

const sleep = async time => new Promise(r => setTimeout(r, time))

~(async function main() {
	while (true) {
		console.log('lodash map exists:', typeof _.map)
		await sleep(1000)
	}
})()
*/
import * as fs from 'fs';

const SOCKET_PREFIX = (process.platform == "win32") ? "\\\\.\\pipe\\" : "/tmp/";
const SOCKETFILE_TX = SOCKET_PREFIX + "testPipeRX";
const SOCKETFILE_RX = SOCKET_PREFIX + "testPipeTX";

var TX_FD = -1;
var RX_FD = -1;
fs.open(SOCKETFILE_TX, "w", (err, fd) => {TX_FD = fd;});
fs.open(SOCKETFILE_RX, "r", (err, fd) => {RX_FD = fd;});

//Welcome to the future: https://www.electronjs.org/docs/tutorial/context-isolation
var thunderBridge = {
  write: (buf, cb) => fs.write(TX_FD, buf, 0, cb),
  read: (buf, cb) => fs.read(RX_FD, buf, 0, buf.length, 0, cb)
};

function tick() {
	var testPacket16 = new Uint16Array(new ArrayBuffer(10));
	testPacket16[0] = 0x1F;
	testPacket16[1] = 0x1F2C;
	testPacket16[2] = 4;
	var testPacket = new Uint8Array(testPacket16.buffer);
	testPacket[6] = 1;
	testPacket[7] = 2;
	testPacket[8] = 3;
	testPacket[9] = 4;

	thunderBridge.write(testPacket,() => {
		var rxBuff = new Uint8Array(new ArrayBuffer(6));
		thunderBridge.read(rxBuff, (err, bytesRead, bytes) => {
			var bytes16 = new Uint16Array(bytes.buffer);
			var dataSize = bytes16[2];
			//console.log(bytes16);
			//console.log(bytes);

			var dataRxBuff = new Uint8Array(dataSize);
			thunderBridge.read(dataRxBuff, (nestedErr, nestedBytesRead, nestedBytes) => {
				var scope_data = [];
				for(var i = 0; i < nestedBytes.length; i++) {
					scope_data[i] = {x: i, y: nestedBytes[i]}
				}
				//console.log(nestedBytes);
				//console.log(scope_data);

				postMessage(scope_data);
			});
		});
	});
}

timerID = setInterval(
	() => tick(),
	33.33
)