const { lstat } = require("fs");
const net = require("net");

var RANDOMSTRING = "qqqmakctozqcikswtsoeszjfbeagpyqpidecwwzlepydibhzfxqyhygyorjswfwotsrjbmaqbssxoyrpdlidwxcsgvekjgajrvdspdxgvrxikdipkazpoyrauavnnnldrovwnojmktbcdqntsfhbqpyomksbnqdejknwnwtoeksdyefngtsrcgaifvpgqxwmqklbsjqzqpxmbmyxuguosoliixhlenxzfgglspywsanphzebcxizawuiwaifmtnjzmvsruidisojmeqnsdaqxvzthangnwpnfqzbbycgmkttflqatvravelihczkldqcovxcdbezqumjcsywftmfagnuvkbqatahmlinnuogpqgrxxgprsyrulfjiwdwhzptkmjskpqmpuardgyzozdjdkfihuihrplomumsbuqkisyavmwsvnghefeqlhsiaddcfbtrkekulecuntzdoievfdrqctnfirsyahbdnsejntkvliqlrpsxldvfkkpmpcnxnsdwwdesqlfbgxdscisqhcrdcirfyilzmdrefyouyjitpikodyvbrzswimouzamtgktvhzuefthqvwgvcmcytkkhmkkekfoyxagpjcpmzepduhfvzfpfvtxgzkbspkctudujbgciysixdomepkigsfwluzuhjqymmzxktyxwbxuwveksqcvlzojiomtplhukbebfulpinwihsqinwwmfogfmkreenvmywgmpytdcpflkeznwalpuusgzgpjwyukmlxhohlayqcmdlubuzuvfagkkdnmgomxcciexkqcjrsvhgmcdvpmekrcibsjamcszgsqmykhnyuuzwlqyxqdjgmuzkwpzgwjspromixunautatwoybqethddhnuzeoutoijrraitqmoqkiceviftcmmcgemwmbpquwjheogbuexupbxnqhfdwjciejjrkaovijgmokeavlsrdnniorhaoteersvfaqjkukgilartvjzhqqdpbuguyxjyiqgiqkqqo";
var delayInMilliseconds = 10;

//unix file system
var SOCKETFILE;
if(process.platform == "win32") {
    SOCKETFILE = "C:\\tmp\\sock";
} else {
    SOCKETFILE = "/tmp/socket_test";
}

var counter = 0;


var client = net.createConnection(SOCKETFILE)
    .on("connect", () => {
        console.log("Client Connected");
    })
    .on("data", function(data) {
        counter = counter + 1;
        console.log("Recieved From Server");
    })
    ;
client.write(RANDOMSTRING);

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

console.log("Send 10,000 transmissions, got back: ");
console.log(counter);
console.log(" replies\n");

client.end();