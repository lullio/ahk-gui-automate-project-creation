#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
if not A_IsAdmin
   Run *RunAs "%A_ScriptFullPath%" ; (A_AhkPath is usually optional if the script has the .ahk extension.) You would typically check  first.p

gitFolder1 := "Y:\Github"
IfNotExist, %gitFolder1%
{
   gitFolder1 = "C:\Users\Felipe\Documents\Github";
}
IfNotExist, %gitFolder1%
{
   gitFolder1 = "C:\Users\Felipe\Desktop\Github";
}
IfNotExist, %gitFolder1%
{
   gitFolder1 = "\\wsl.localhost\Ubuntu\home\ubuntu\Desktop\git";
}
IfNotExist, %gitFolder1%
{
   gitFolder1 = "\\wsl.localhost\Ubuntu\home\ubuntu\git";
}

vscodeFolder := "C:\Program Files\Microsoft VS Code"
IfNotExist, %vscodeFolder%
{
   vscodeFolder= "C:\Users\Felipe\AppData\Local\Programs\Microsoft VS Code\Code.exe";
}
IfNotExist, %vscodeFolder%
{
   vscodeFolder= "C:\Users\Estudos\AppData\Local\Programs\Microsoft VS Code\Code.exe";
}
IfNotExist, %vscodeFolder%
{
   vscodeFolder= "C:\Program Files x86\Microsoft VS Code";
}

escapePercent := "%"
slash := "\"

InputBox, projectName, Projeto JavaScript/HTML , Por favor`, insira o nome do Projeto,, 300,150, 800,500, locale, 15, DOM-

folderProject := StrSplit(projectName, "-")[1]
folderProjectName := StrSplit(projectName, "-")[2]
; caso vc insira nome sem - no input o slash igual a nada para não colocar / no script dentro dos template html..
if(folderProjectName == ""){
   slash := ""
}

/*
TEMPLATE DE CONTEÚDO QUE VAI DENTRO DOS ARQUIVOS
*/
jsTemplateDOM =
(
   // %projectName%\
   /* EXERCÍCIO 1 - trocar a cor do elemento #header para azul usando o byId*/


   /* EXERCÍCIO 2 - trocar a cor dos elementos .header para amarelo usando byClassName*/


   /* EXERCÍCIO 3 - trocar a cor dos elementos p para rosa usando o byTagName*/


   /* EXERCÍCIO 4 - ocultar o elemento #query usando querySelector */


   /* EXERCÍCIO 5 - adicionar um elemento p abaixo de cada um dos elementos .query-all usando querySelectorAll   
    */
)

jsTemplateREGEX =
(
   // %projectName%\
   /*
   Using the provided array, create a second array that only includes the numbers with the 801 area code. (The area code is the first 3 numbers.)
   */

   let phoneNums = ["801-766-9754", "801-545-5454", "435-666-1212", "801-796-8010", "435-555-9801", "801-009-0909", "435-222-8013", "801-777-6655"];


      /* EXERCÍCIO 2 - trocar a cor do elemento .header byClassName*/


      /* EXERCÍCIO 3 - trocar a cor do elemento p */


      /* EXERCÍCIO 4 - trocar a cor do elemento #query usando querySelctor */


      /* EXERCÍCIO 5 - trocar a cor do elemento .query-all usando querySelctorAll */
)

jsCleanTemplate =
(
   //
)

htmlDOMTemplate =
(
   <!DOCTYPE html>
   <html lang="en">
      <head>
         <meta charset="UTF-8">
         <meta http-equiv="X-UA-Compatible" content="IE=edge">
         <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <title>Acessing Elements</title>
         <style>
            html{
               font-family: sans-serif;
            }
            body{
               max-width: 500px;
               margin: 0 auto;
            }
            div, p{
               padding: 0.8em;
               margin: 1.4em 0;
               border: 1px solid #9c9c9c;
            }
         </style>
      </head>
      <body>
         <h1 id="main">Acessing Elements</h1>
         <!-- section 1 -->
         <h2>Using the ID(#header)</h2>
         <div id="header">Access this element by using 
            <mark><code>document.getElementById()</code></mark>
         </div>
         <!-- section 2 --><hr>
         <h2>Using the Class (.header)</h2>  
         <div class="header">1. Access this element by using
            <mark><code>document.getElementsByClassName()</code></mark>
         </div>
         <div class="header">2. Access this element by using 
            <mark><code>document.getElementsByClassName()</code></mark>
         </div>
         <!-- section 3 --><hr>
         <h2>Using the Tag (paragraph tag)</h2>
         <p>1. Access this element by using
            <mark><code>document.getElementsByTagName()</code></mark>
         </p>
         <p>2. Access this element by using
            <mark><code>document.getElementsByTagName()</code></mark>
         </p>
         <!-- section 4 --><hr>
         <h2>Using the Query Selector (with ID of 'query')</h2>
         <div id="query">1. Access this by using
            <mark><code>document.querySelector()</code></mark>
         </div>
         <!-- section 5 --><hr>
         <h2>Using the Query Selector All (with class of 'query-all')</h2>
         <div class="query-all">1. Access this element by using 
            <mark><code>document.querySelectorAll()</code></mark>
         </div>
         <script src="%gitFolder1%\%folderProject%%slash%%folderProjectName%\%projectName%.js"></script>
      </body>
   </html>
)

htmlDOMTemplate2 = 
(
   <html>

   <head>
      <style>
         body {
               text-align: center;
         }
         h1 {
               color: rgb(101, 7, 239)
         }
         button {
               cursor: pointer;
               background-color: black;
               color: white; 
               width: 300px;
               padding: 1em;
               margin: 0.5em;
         }
      </style>
      <title>DOM Access</title>
   </head>

   <body>
      <h1>Test Yourself</h1>
      <h2>getElementsByClassName()</h2>
      <div>
         <button onclick="green()" class="green undo">Click to change this to green</button>
         <button onclick="blue()">Click to change this to blue</button>
         <button onclick="red()">Click to change this to red</button>
         <button onclick="undo()">Undo</button>
      </div>
      <script>
         function green() {
               // complete the code within here, using getElementsByClassName
               
         }

         function blue() {
               // complete the code within here, using getElementsByClassName
               
         }

         function red() {
               // complete the code within here, using getElementsByClassName
               
         }

         function undo() {
               // complete the code within here. Note: this will be different code to the other functions above. 
               
         }
      </script>
   </body>

   </html>
)
htmlDOMTemplate2Answer = 
(
   <html>
   <head>
      <style>
         body {
               text-align: center;
         }
         h1 {
               color: rgb(101, 7, 239)
         }
         button {
               cursor: pointer;
               background-color: black;
               color: white;
               width: 300px;
               padding: 1em;
               margin: 0.5em;
         }
      </style>
      <title>DOM Access</title>
   </head>

   <body>
      <h1>Test Yourself</h1>
      <h2>getElementsByClassName()</h2>
      <div>
         <button onclick="green()" class="green undo">Click to change this to green</button>
         <button class="blue undo" onclick="blue()">Click to change this to blue</button>
         <button class="red undo" onclick="red()">Click to change this to red</button>
         <button class="undo" onclick="undo()">Undo</button>
      </div>
      <script>
         function green() {
               // complete the code within here, using getElementsByClassName
               let green = document.getElementsByClassName('green');
               for(one of green){
                  if(one.style.backgroundColor == "green")        {
                     one.style.backgroundColor = "black"
                     one.textContent = "Click to change this to green"
                  }else{
                     one.style.backgroundColor = "green"
                     one.textContent = "Click to back the color to black"
                  }
               }
         }

         function blue() {
               // complete the code within here, using getElementsByClassName
               let blue = document.getElementsByClassName('blue')[0].backgroundColor = "blue";
         }

         function red() {
               // complete the code within here, using getElementsByClassName
               let red = document.getElementsByClassName("red");
               for(one of red){
                  one.style.backgroundColor = "red" ;
               }
         }

         function undo() {
               // complete the code within here. Note: this will be different code to the other functions above.
               let undo = document.getElementsByClassName('undo')
               for(bob of undo){
                  bob.style.backgroundColor = "black";
               }
         }
      </script>
      <script>
   // outra forma de fazer bem legal(remover os onclick="" dos botoes)
   // retorna uma HTMLCollection (lista de elementos html)
   // usar for e for of loop, forEach não funciona.
   let arr = document.getElementsByTagName('button');
   for(let i =0; i < arr.length; i++){
   arr[i].onmousedown = () => {
      if(arr[i].textContent.includes("red")){
         arr[i].style.backgroundColor = "red";
      }else if(arr[i].textContent.includes("blue")){
         arr[i].style.backgroundColor = "blue";
      }else if(arr[i].textContent.includes("green")){
         arr[i].style.backgroundColor = "green";
      }else{
         for(botao of arr){
            botao.style.backgroundColor = "black";
         }
      }
   }
   }
      </script>
      </body>

      </html>
)
htmlDOMNodesTemplate =
(
   <html>
      <head>
         <title>What are Nodes?</title>
      </head>
      <body>
         <h1>This is an Element Node</h1>
         This is a Text Node, all by its lonesome self
         <!-- Well, as you guessed it, this is a Comment Node -->
         <p>This is also an Element Node</p>

         <ul>
            <li>BAM</li>
            <li>POW</li>
            <li>UHUL</li>
            <li>SHAZAM</li>
         </ul>

         <script>
         console.log(document)
         /*exemplo mt legal
         let lis = document.getElementsByTagName("li");
         console.log(lis.length);
         console.log(lis)
         /*muito interessante, fica num loop infinito porque HTMLCollection é vivo, fica atualizando sempre os li, então sempre vai ter li pois vc tá criando e atualizando, resolver usando querySelctorAll*/
         for(li of lis){
            console.log(li.parentNode.appendChild(document.createElement("li")))
         } 
         */
         // ***** HTMLCollection TIME
         // lets access our list items
         let listItems_tags = document.getElementsByTagName("li");
         console.log(listItems_tags);
         console.log(listItems_tags.length);

         // lets modify the DOM and add a list item
         listItems_tags[0].parentNode.appendChild(document.createElement("li"));
         console.log(listItems_tags)
         console.log(listItems_tags.length)

                // ***** NodeList TIME
               let listItems = document.querySelectorAll('li');
               console.log(listItems);
               console.log(listItems.length);
               
               listItems[0].parentNode.appendChild(document.createElement('li'));
               // not updated the length
               console.log(listItems);
               console.log(listItems.length);

               // lets fix that by requerying the DOM
               listItems = document.querySelectorAll('li');
               console.log(listItems);
               console.log(listItems.length);
         </script>
         <script src="script.js"></script>
      </body>
   </html>
)

htmlTraversingDOM = 
(
   <!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Traverse the DOM</title>
   <style>
      *{
         border: 2px solid #dedede;
         padding: 15px;
         margin: 15px;
      }
      body{
         max-width: 600px;
         font-family: sans-serif;
         color: #333;
      }
   </style>
</head>
<body>
   <main>
      <h1>Welcome</h1>
      <!-- This is a comment node -->
      <div id="wrapper">
         <h2 class="sub-heading">Traversing the DOM</h2>
         <p>How do we do it?</p>
         <p>Stick around, and i'll show you</p>
      </div>
      <div id="wrapper-2">
         <h2 class="joke">Joke of the day</h2>
         <p>What do you call fish with no eyes?...Fsh</p>
      </div>
      <ul>
         <li>Item 1</li>
         <li>Item 2</li>
         <li>Item 3</li>
         <li>Item 4</li>
         <li>Item 5</li>
      </ul>
   </main>
</body>
</html>
)

htmlCleanTemplate = 
(
   <!DOCTYPE html>
   <html lang="pt-br">
   <head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>HTML Clean Template - Felipe</title>
      <style>
         body{
            background-color: rgb(74, 59, 206);
            padding:20px;
         }
         h1{
            color: #14FFF7;
            font-size: 72px;
            font-family: sans-serif;
            text-decoration: underline;
         }
         h2, p, h3, h4, h5, li{
            color: #ffff;
         }
      </style>
   </head>
   <body class="niceBody">
      <h1>Titulo Principal - H1</h1>
      <h2>Titulo Secundario - H2</h2>
      <p class="edit-this" id="ok">paragrafo teste um lorl Lorem ipsum dolor sit amet consectetur adipisicing elit. Cum neque itaque adipisci voluptas debitis eum magni nam quaerat vero earum nostrum, hic, quia rem ad veniam sint omnis nobis perferendis.</p>
      <h3 id="listaNova">Lista de Itens</h3>
      <ul class="lista listaOne ul-list">
         <li>Item 1</li>
         <li>Item 2</li>
         <li>Item 3</li>
         <li>Item 4</li>
         <li>Item 5</li>
      </ul>
      <h3 class="heading headingLista">Lista de Itens</h3>
      <ul class="lista2 ul-list ul-list-two" id="listaCompras">
         <li>Item 1</li>
         <li>Item 2</li>
         <li>Item 3</li>
         <li>Item 4</li>
         <li>Item 5</li>
      <div class="actions" id="nice">
         <button id="showDOM" class="btn btn-large btn-outline">Botao Teste</button>
      </div>
      <div id="result"></div>
      <script src="./%projectName%.js"></script>
   </body>
   </html>
)

htmlRegexTemplate = 
(
   <!DOCTYPE html>
   <html>
   <head>
      <script>console.time("reporter");</script>
      <title>Learn Modern JavaScript</title>
      <link rel="stylesheet" type="text/css" href="main.css">
      <style>
      @import url(https://fonts.googleapis.com/css?family=Roboto:400,700,100italic|Roboto+Mono:400,100italic,700);
            .title {
               font-size: 3em;
               color: #024656;
               text-align: center;
               font-family: 'Roboto';
               padding-top: 2%escapePercent%;
               padding-bottom: 2%escapePercent%;
         }
         #logo {
            text-align: center;
            padding-bottom: 1%escapePercent%;
      }
      #logo img {
         width: 300px;
         padding-top: 80px;
         
         }
         #content {
            position: absolute;
            padding: 5px;
            width: 60%escapePercent%;
            margin-left: 20%escapePercent%;
            
            font-size: 2em;
            color: #024656;
            text-align: center;
            font-family: 'Roboto';
            display: block;
      }
      input[type="text"] {
         background-color: #c0c0c0;
         width: 260px;
         font-size: 1em;
         padding-left: 10px;
         margin-left: 10px;
         }
         .red {
            color: red;
      }
      
      .green {
            color: green;
      }
      </style>
   </head>
   <body>
      <article>
         <h2 class="title">
               Regular Expression: Exercises
         </h2>
         <div id="content">
               <label>Enter phone number:</label>
               <input type="text" name="phone" id="phone" class="red">
         </div>
      </article>
      <footer>
         <div id="logo"><img src="javascript_logo.png"></div>
      </footer>
      <script src="app.js"></script>
   </body>
   </html>
)
jsTemplateNode = 
(
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
)
jsTemplateExpress1 =
(
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
)
jsTemplateExpressComplete =
(
   let express = require("express");
   let {MongoClient, ObjectId} = require('mongodb');
   let sanitizeHTML = require('sanitize-html')

   let myApp = express();
   myApp.use(express.urlencoded({extended: false}));
   myApp.use(express.static("public"));
   myApp.use(express.json());
   const passwordProtected = (req, res, next) => {
   res.set('WWW-Authenticate', 'Basic realm="hi friend"');
   console.log(req.headers.authorization);
   if(req.headers.authorization == 'Basic amF2YXNjcmlwdDpmdWxsc3RhY2s='){
      next();
   }else{
      res.status(401).send('rerr error')
   }
   }
   myApp.use(passwordProtected);


   let bd;
   async function go(){
   let client = new MongoClient('mongodb+srv://admin:admin@cluster0.6arhq.mongodb.net/?retryWrites=true&w=majority');
   await client.connect();
   bd = client.db('Lista-Tarefas-Felipe');
      
   myApp.listen(process.env.PORT || 2000, function() {
      console.log("listening on port %escapePercent%s: in %escapePercent%s ", this.address(), myApp.settings.env);
   });
   }
   go();



   myApp.get("/", function(req, res){
   bd.collection('tarefas').find().toArray(function(err, arr){
      res.send(`<html>
      <head>
         <meta charset="UTF-8">
         <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <title>Simple To-Do App!!</title>
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
      </head>
      <body>
         <div class="container">
         <h1 class="display-4 text-center py-1">Lista de Tarefas - Felipe JS</h1>
         <h4 class="text-left py-1">WebApp desenvolvido com:</h4>
         <h4 class="text-left py-1"> JavaScript + Node.JS + framework EXPRESS + AXIOS + MongoDB</h4>
         
         <div class="jumbotron p-3 shadow-sm">
            <form id="form" action="/criar-tarefa" method="POST">
               <div class="input-group mb-3">
                  <div class="input-group-prepend">
                  <span class="input-group-text" id="basic-addon1">@Tarefa</span>
                  </div>
                  <input id="tarefaNome" name="nomeTarefa" type="text" class="form-control" placeholder="nome da tarefa" aria-label="nomeTarefa" aria-describedby="basic-addon1">
               </div>
               <div class="input-group mb-3">
                  <div class="input-group-prepend">
                  <span class="input-group-text" id="basic-addon2">@Desc</span>
                  </div>
                  <textarea id="tarefaDesc" name="descTarefa" type="text" class="form-control" placeholder="descrição da tarefa" aria-label="descTarefa" aria-describedby="basic-addon2" rows="4"></textarea>
               </div>
               <div class="input-group mb-3">
                  <div class="input-group-prepend">
                  <span class="input-group-text" id="basic-addon3">@Prioridade</span>
                  </div>
                  <select id="tarefaPrioridade" name="prioridadeTarefa" class="form-control">
                     <option value="Baixa">Baixa</option>
                     <option value="Média">Média</option>
                     <option value="Alta">Alta</option>
                  </select>
               </div>
               <div class="input-group mb-3">
                  <div class="input-group-prepend">
                  <span class="input-group-text" id="basic-addon2">@Data</span>
                  </div>
                  <input id="tarefaData" name="dataTarefa" class="form-control" readonly type="date">
               </div>
               <div class="d-flex justify-content-center">
                  <button type="submit" class="btn btn-outline-primary btn-lg">ENVIAR TAREFA</button>
               </div>        
            </form>
         </div>
   
   
         <h1 class="display-4">Lista de Tarefas!</h1>
         <!--
         <ul class="list-group pb-5">
            <li class="list-group-item list-group-item-action d-flex align-items-center justify-content-between">
               <span class="item-text">teste</span>
               <div>
               <button class="edit-me btn btn-secondary btn-sm mr-1">Editar</button>
               <button class="delete-me btn btn-danger btn-sm">Deletar</button>
               </div>
            </li>
         </ul>
         -->
         ${arr.filter(function(val){
            return val.prioridade;
         }).map(function(val, i , arr){
            return `
         <div id="listaUL" class="list-group">
            <a href="#" class="list-group-item list-group-item-action">
               <div class="d-flex w-100 justify-content-between">
               <h5 class="mb-1 texto-tarefa">${val.nomeTarefa}</h5>
               <small>Tarefa Nº: ${i+1}</small>
               </div>
               <p class="mb-1">${val.descTarefa}</p>
               <small>${val.prioridade}</small>
               <div class="mt-2">
               <button data-id="${val._id}" class="me-editar btn btn-secondary btn-sm mr-1">Edit</button>
               <button data-id="${val._id}" class="delete-me btn btn-danger btn-sm">Delete</button>
               <small class="mt-2" style="display:block;">Data: ${val.data}</small>
            </div>
            </a>
         </div>
         `
         }).join('')}
         <p>Total de tarefas: ${arr.length}</p>
         <script type="text/javascript" src="/browser.js"></script>
         <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
      </body>
   </html>`);

   });
   });

   myApp.post("/criar-tarefas", function(req, res){
   let safeText = sanitizeHTML(req.body.nomeTarefa, {allowedTags: [], allowedAttributes: {}})
   bd.collection("tarefas").insertOne({nomeTarefa: req.body.nomeTarefa, descTarefa: req.body.descTarefa, data: "PRA HOJE AMIGO", prioridade: req.body.prioridadeTarefa}, () => {
      res.redirect("/");
   });
   });

   myApp.post("/atualizar-tarefa", function(req, res){
   bd.collection('tarefas').findOneAndUpdate({_id: new ObjectId(req.body.id)}, {$set: {nomeTarefa: req.body.texto}}, ()=>{
      res.send("sucess");
      console.log("sucess");
   });
   });

   myApp.post("/deletar-tarefa", function(req, res){
   bd.collection('tarefas').deleteOne({_id: new ObjectId(req.body.id)}, function(){
      res.send("removido do bd com sucesso!");
      console.log("removido do bd com sucesso!");
   })
   });

   myApp.post('/criar-tarefa', function(req, res){
   bd.collection('tarefas').insertOne({nomeTarefa:req.body.axiosNomeT, descTarefa: req.body.axiosDescT, data: req.body.axiosData, prioridade: req.body.axiosPrio  }, function(err, info){
      res.json({_id: info.insertedId, nomeTarefa:req.body.axiosNomeT, descTarefa: req.body.axiosDescT, data: "PRA HOJE", prioridade: req.body.axiosPrio})
   })
   })
)
jsTemplateExpressCompletePt2 =
(
   // DELETAR TAREFA INTEIRA / LISTA
   document.addEventListener("click", function(e){
      if(e.target.classList.contains("delete-me")){
         if(confirm("deseja remover mesmo?")){
            e.preventDefault(); // redirecionar para topo da página
            axios.post("/deletar-tarefa", {id: e.target.getAttribute('data-id')}).then(function(){
               e.target.parentElement.parentElement.parentElement.remove(); 
            }).catch(function(){
      
            })
         }else{
            alert("cancelar pressionado!");
         }
      
      }
   })

   // ATUALIZAR NOME DA TAREFA
   document.addEventListener("click", function(e){
      if(e.target.classList.contains("me-editar")){
         let userInput = prompt('editar somente o nome da tarefa: ', e.target.parentElement.parentElement.querySelector('h5.texto-tarefa').innerHTML);
         if(userInput){
            axios.post("/atualizar-tarefa", {texto: userInput, id: e.target.getAttribute('data-id')}).then(() => {
               e.target.parentElement.parentElement.querySelector('h5.texto-tarefa').innerHTML = userInput;
            }).catch((err)=>{
               console.log("ERRO: " + e);
            })
         }
      }
   })

   // CRIAR TAREFA AXIOS
   let inputNomeTarefa = document.getElementById("tarefaNome"),
      inputDescTarefa = document.getElementById("tarefaDesc"),
      inputDescPrio = document.getElementById("tarefaPrioridade"),
      inputDataTarefa = document.getElementById("tarefaData");
      listaUL = document.getElementById("listaUL");

      function criarHTML(val){
         return `
         <a href="#" class="list-group-item list-group-item-action">
         <div class="d-flex w-100 justify-content-between">
            <h5 class="mb-1 texto-tarefa">${val.nomeTarefa}</h5>
            <small>Tarefa Nº: </small>
         </div>
         <p class="mb-1">${val.descTarefa}</p>
         <small>${val.prioridade}</small>
         <div class="mt-2">
            <button data-id="${val._id}" class="me-editar btn btn-secondary btn-sm mr-1">Edit</button>
            <button data-id="${val._id}" class="delete-me btn btn-danger btn-sm">Delete</button>
            <small class="mt-2" style="display:block;">Data: ${val.data}</small>
         </div>
         </a>`
      }



      document.getElementById("form").addEventListener("submit", function(e){
         e.preventDefault();

         axios.post('/criar-tarefa', {axiosNomeT: inputNomeTarefa.value, axiosDescT: inputDescTarefa.value, axiosPrio: inputDescPrio.value, axiosData: 'hoje' }).then((response) => {
            listaUL.insertAdjacentHTML('beforeend', criarHTML(response.data));
         }).catch((e) => {
            console.log(e);
         })
      })
)
/*
SCRIPT COMEÇA AQUI
*/
switch ErrorLevel{
	Case 0: ; 0 é quando ocorre tudo Bem
      ; checar se existe uma pasta
      ; IfNotExist, %projectName%\
      ; {
      ;     MsgBox, No EC Folder associated with this request.
      ; }
      FileCreateDir, %gitFolder1%\%folderProject%\%folderProjectName%\
   ; cria um arquivo .js com nome do input do usuario se o arquivo não existe ainda

; criar arquivo .js
   if !FileExist(gitFolder1 "\" folderProject "\" folderProjectName "\" projectName ".js")  
      {
         Notify().AddWindow("Arquivo não existe, vamos criar!",{Time:2000,Icon:28,Background:"0x990000",Title:"OPS!",TitleSize:15, Size:15, Color: "0xCDA089", TitleColor: "0xE1B9A4"},,"setPosBR") ;

         if(RegExMatch(projectName, "im)^DOM-") != 0)
         {
            FileAppend, %jsTemplateDOM%, %gitFolder1%\%folderProject%%slash%%folderProjectName%\%projectName%.js

            if !FileExist(gitFolder1 "\" folderProject "\" folderProjectName "\index.html")
               {
                  FileAppend, %htmlDOMTemplate%, %gitFolder1%\%folderProject%%slash%%folderProjectName%\index.html
                  FileAppend, %htmlDOMTemplate2%, %gitFolder1%\%folderProject%%slash%%folderProjectName%\index2-doIt.html
                  FileAppend, %htmlDOMTemplate2Answer%, %gitFolder1%\%folderProject%%slash%%folderProjectName%\index2-answer.html
                  FileAppend, %htmlDOMNodesTemplate%, %gitFolder1%\%folderProject%%slash%%folderProjectName%\nodes.html
                  FileAppend, %htmlTraversingDOM%, %gitFolder1%\%folderProject%%slash%%folderProjectName%\traversing-DOM.html
               }
         }
         else if(RegExMatch(projectName, "im)^REGEX-") != 0)
         {
            FileAppend, %jsTemplateREGEX%, %gitFolder1%\%folderProject%%slash%%folderProjectName%\%projectName%.js

            if !FileExist(gitFolder1 "\" folderProject "\" folderProjectName "\index.html")
               {
                  FileAppend, %htmlRegexTemplate%, %gitFolder1%\%folderProject%%slash%%folderProjectName%\index.html
               }
         }
         else if(RegExMatch(projectName, "im)^JS-") != 0)
            {
               FileAppend, %jsTemplateREGEX%, %gitFolder1%\%folderProject%%slash%%folderProjectName%\%projectName%.js

               if !FileExist(gitFolder1 "\" folderProject "\" folderProjectName "\index.html")
                  {
                     FileAppend, %htmlTemplate%, %gitFolder1%\%folderProject%%slash%%folderProjectName%\index.html
                  }
            }
         else if(RegExMatch(projectName, "im)^EXPRESS-.*(final|3|complete|completo|example|final example|completed).*") != 0)
               {
                  FileAppend, %jsTemplateExpressComplete%, %gitFolder1%\%folderProject%%slash%%folderProjectName%\%projectName%.js
   
                  if !FileExist(gitFolder1 "\" folderProject "\" folderProjectName "\index.html")
                     {
                        FileAppend, %htmlTemplate%, %gitFolder1%\%folderProject%%slash%%folderProjectName%\index.html
                     }
               }
         else if(RegExMatch(projectName, "im)^HTML-.*|.*clean.*|.*empty.*|.*template.*") != 0)
               {
                     FileAppend, %jsCleanTemplate%, %gitFolder1%\%folderProject%%slash%%folderProjectName%\%projectName%.js
      
                     if !FileExist(gitFolder1 "\" folderProject "\" folderProjectName "\index.html")
                        {
                           FileAppend, %htmlCleanTemplate%, %gitFolder1%\%folderProject%%slash%%folderProjectName%\index.html
                        }
               }
         else
            {
               FileAppend, %jsTemplateREGEX%, %gitFolder1%\%folderProject%%slash%%folderProjectName%\%projectName%.js

               if !FileExist(gitFolder1 "\" folderProject "\" folderProjectName "\index.html")
                  {
                     FileAppend, %htmlTemplate%, %gitFolder1%\%folderProject%%slash%%folderProjectName%\index.html
                  }
            }
      }

      Sleep, 700
      ; abrir vs code com a pasta criada
      Run, "%vscodeFolder%" "%gitFolder1%\%folderProject%%slash%%folderProjectName%"
      Sleep, 700
      ; abrir index.html
      Run, "chrome.exe" "%gitFolder1%\%folderProject%%slash%%folderProjectName%\index.html"

       if FileExist(gitFolder1 "\" folderProject "\" folderProjectName "\index2-doIt.html")  
               Run, "chrome.exe" "%gitFolder1%\%folderProject%%slash%%folderProjectName%\index2-doIt.html"

       if FileExist(gitFolder1 "\" folderProject "\" folderProjectName "\nodes.html")  
         Run, "chrome.exe" "%gitFolder1%\%folderProject%%slash%%folderProjectName%\nodes.html"
       if FileExist(gitFolder1 "\" folderProject "\" folderProjectName "\traversing-DOM.html")  
         Run, "chrome.exe" "%gitFolder1%\%folderProject%%slash%%folderProjectName%\traversing-DOM.html"

Case 1: ; caso o botão cancelar seja clicado
	MsgBox, 64, CANCELAR, Você pressionou cancelar, 3

Case 2: ; timeout - outro erro
	MsgBox, 48, Tempo Excedido, TIMEOUT, 5
}
Return

