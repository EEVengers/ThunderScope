const { lstat } = require("fs");
const net = require("net");
const fs = require('fs');

var RANDOMSTRING = "qqqmakctozqcikswtsoeszjfbeagpyqpidecwwzlepydibhzfxqyhygyorjswfwotsrjbmaqbssxoyrpdlidwxcsgvekjgajrvdspdxgvrxikdipkazpoyrauavnnnldrovwnojmktbcdqntsfhbqpyomksbnqdejknwnwtoeksdyefngtsrcgaifvpgqxwmqklbsjqzqpxmbmyxuguosoliixhlenxzfgglspywsanphzebcxizawuiwaifmtnjzmvsruidisojmeqnsdaqxvzthangnwpnfqzbbycgmkttflqatvravelihczkldqcovxcdbezqumjcsywftmfagnuvkbqatahmlinnuogpqgrxxgprsyrulfjiwdwhzptkmjskpqmpuardgyzozdjdkfihuihrplomumsbuqkisyavmwsvnghefeqlhsiaddcfbtrkekulecuntzdoievfdrqctnfirsyahbdnsejntkvliqlrpsxldvfkkpmpcnxnsdwwdesqlfbgxdscisqhcrdcirfyilzmdrefyouyjitpikodyvbrzswimouzamtgktvhzuefthqvwgvcmcytkkhmkkekfoyxagpjcpmzepduhfvzfpfvtxgzkbspkctudujbgciysixdomepkigsfwluzuhjqymmzxktyxwbxuwveksqcvlzojiomtplhukbebfulpinwihsqinwwmfogfmkreenvmywgmpytdcpflkeznwalpuusgzgpjwyukmlxhohlayqcmdlubuzuvfagkkdnmgomxcciexkqcjrsvhgmcdvpmekrcibsjamcszgsqmykhnyuuzwlqyxqdjgmuzkwpzgwjspromixunautatwoybqethddhnuzeoutoijrraitqmoqkiceviftcmmcgemwmbpquwjheogbuexupbxnqhfdwjciejjrkaovijgmokeavlsrdnniorhaoteersvfaqjkukgilartvjzhqqdpbuguyxjyiqgiqkqqo";
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

fs.open(SOCKETFILE_RX, "r",function(err, f) {
  fs.read(f,function(err, bytesRead, bytes) {
    if(bytes != undefined)
      console.log(bytesRead);
      console.log(String(bytes));
  });
});


/*
var client = net.createConnection({path: SOCKETFILE})
    .on("connect", () => {
        console.log("Client Connected");
    })
    .on("data", function(data) {
        counter = counter + 1;
        console.log("Recieved From Server");
    })
    ;

client.write(HELLOWORLD);
*/
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