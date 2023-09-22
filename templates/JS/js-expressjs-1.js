   const express = require('express');
   const app = express();
   
   myApp.get("/", function(req, res){
      res.send("hi")
   })

   myApp.post("/criar-tarefa", function(req, res){
      //após clicar no botão enviar o formulário.
   //res.send("task sended");	
      res.redirect("/")
   }

   app.listen(process.env.PORT || 2000, function() {
       console.log("listening on port %escapePercent%s: in %escapePercent%s ", this.address(), myApp.settings.env);
   }