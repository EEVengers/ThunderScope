var XMLHttpRequest = require("xmlhttprequest").XMLHttpRequest;
var http = require('http');


http.request(options, callback);

while(1) {
    myFunc();
}

//The url we want is: 'www.random.org/integers/?num=1&min=1&max=10&col=1&base=10&format=plain&rnd=new'
var options = {
    host: 'http://localhost',
    path: '/',
    port: '8888'
};

var callback = function(response) {
  var str = '';

  //another chunk of data has been received, so append it to `str`
  response.on('data', function (chunk) {
    str += chunk;
  });

  //the whole response has been received, so we just print it out here
  response.on('end', function () {
    console.log(str);
  });
}

function myFunc() {
    var i = 0;
    var q = 0;
    while(1) {
        while(1) {
            //var mydata = httpGet("http://localhost:8888/getData");
            http.request(options, callback).end();
            for(var p = 0; p < 10000; p++);
            mydata = null;
            if(i == 1000) {
                break;
            }
            i = i + 1;
        }
        q = q + 1;
        i = 0;
        if(q == 100) {
            break;
        }
    }
    
    console.log("goodbye RAM");
}

function httpGet(theUrl)
{
  var xmlHttp = new XMLHttpRequest();
  xmlHttp.open( "GET", theUrl, false ); // false for synchronous request
  xmlHttp.send( null );
  return xmlHttp.responseText;
}
