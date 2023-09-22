   let http = require('http');

   let ourApp = http.createServer(function(req, res){

      // console.log(req.url);
      /*
      no console do terminal, ñ do navegador
      ao digitar localhost:3000/home dps /about aparece no terminal
      */

      if(req.url == "/"){ // home page
         res.end("home page");
      }else if(req.url == "/about"){
         res.end("about us page"); // resposta que queremos passar
      }else{
         res.end("error 404");
      }
   });
   ourApp.listen(3000);