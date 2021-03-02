const net = require('net');
require('buffer').Buffer;

var RANDOMSTRING = "qqqmakctozqcikswtsoeszjfbeagpyqpidecwwzlepydibhzfxqyhygyorjswfwotsrjbmaqbssxoyrpdlidwxcsgvekjgajrvdspdxgvrxikdipkazpoyrauavnnnldrovwnojmktbcdqntsfhbqpyomksbnqdejknwnwtoeksdyefngtsrcgaifvpgqxwmqklbsjqzqpxmbmyxuguosoliixhlenxzfgglspywsanphzebcxizawuiwaifmtnjzmvsruidisojmeqnsdaqxvzthangnwpnfqzbbycgmkttflqatvravelihczkldqcovxcdbezqumjcsywftmfagnuvkbqatahmlinnuogpqgrxxgprsyrulfjiwdwhzptkmjskpqmpuardgyzozdjdkfihuihrplomumsbuqkisyavmwsvnghefeqlhsiaddcfbtrkekulecuntzdoievfdrqctnfirsyahbdnsejntkvliqlrpsxldvfkkpmpcnxnsdwwdesqlfbgxdscisqhcrdcirfyilzmdrefyouyjitpikodyvbrzswimouzamtgktvhzuefthqvwgvcmcytkkhmkkekfoyxagpjcpmzepduhfvzfpfvtxgzkbspkctudujbgciysixdomepkigsfwluzuhjqymmzxktyxwbxuwveksqcvlzojiomtplhukbebfulpinwihsqinwwmfogfmkreenvmywgmpytdcpflkeznwalpuusgzgpjwyukmlxhohlayqcmdlubuzuvfagkkdnmgomxcciexkqcjrsvhgmcdvpmekrcibsjamcszgsqmykhnyuuzwlqyxqdjgmuzkwpzgwjspromixunautatwoybqethddhnuzeoutoijrraitqmoqkiceviftcmmcgemwmbpquwjheogbuexupbxnqhfdwjciejjrkaovijgmokeavlsrdnniorhaoteersvfaqjkukgilartvjzhqqdpbuguyxjyiqgiqkqqo";

const SOCKETFILE = "/usr/local/temp/socket_test";
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

for(var i = 0; i < 10000; i++) {
    client.write(RANDOMSTRING);
}

for(var i = 0; i < 1000000; i++) {

}

console.log("Send 10,000 transmissions, got back: ");
console.log(counter);
console.log(" replies\n");

client.end();
