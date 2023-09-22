#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

; %websiteInput%
; #Include, <Default_Settings>
; #Include, C:\Users\felipe\Downloads\Chrome.ahk-1.3.0\Chrome.ahk-1.3.0\Chrome.ahk
#Include, C:\Program Files\AutoHotkey\Lib\Chrome.ahk

; Variables
chPath := "C:\Program Files\Google\Chrome\Application\chrome.exe"
IfNotExist, %chPath%
   chPath := "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
profileName = C:\Users\%A_UserName%\Desktop\ChromeProfile
website := "https://lullio.com.br/"
jsAllUA = 
   (
      (() => {
         let gaAll = ga.getAll();
         let gaAllIds = [];
      
         gaAll.forEach(ga => {
            console.log(ga.get('trackingId'));
            gaAllIds.push(ga.get('trackingId'));
         })
         // não capturar ga repetido, mesmo código UA-
         let uniquesGA = [...new Set(gaAllIds)];
         return JSON.stringify(uniquesGA);
      })()
   )
   jsAllGtag =
   (
      (() => {
         let gtagAllIds = [];
         window.dataLayer = window.dataLayer || [];
         window.dataLayer.push({
         event: 'GTMEvent',
         eventCallback: function(containerId) {
            console.log('Container ID: ' + containerId);
            gtagAllIds.push(containerId);
            localStorage.setItem('ids', gtagAllIds); //store a key/value
         }
         });
         var retrievedIds = localStorage.getItem('ids'); //retrieve the key
         console.log(retrievedIds);
         return JSON.stringify(retrievedIds.split(','));
      })();
   )

   Gui Add, Text,, Projetos Criados
   Gui, Add, ComboBox, section w200 vsites hwndSitesID, %ListProjects%
   gui, font, S7 ;Change font size to 7 for the next controls
   Gui, Add, Link, w110 x+10 vGTM, ; GTM-XXXXXXXX
   Gui, Add, Link, w110 xp y+5 vGA3, ; UA-XXXXXXXX
   ; Gui, Add, Link, x+5 vGA4,
   Gui, Add, Link, w180 yp x+15 vMAPA, ; MAPA-XXXXXXXX
   Gui, Add, Link, w180 y+-31 vSITE, ; SITE-XXXXXXXXXX
   gui, font, S11 ;Change font size to 11 for the next 
   Gui, Add, ListBox, r5 vColorChoice, Red|Green|Blue|Black|White
   Gui, Show

; Ignorar o erro que o ahk dá e continuar executando o script
ComObjError(false)


; script começa aqui
ChromeInst := new Chrome(profileName,website,"--remote-allow-origins=*",chPath)
Sleep, 500 ; esse sleep que salvou o WAITFORLOAD
PageInst := Chrome.GetPageByURL(website, "startswith")
PageInst.WaitForLoad()
PageInst.Call("Page.bringToFront")
PageInst.WaitForLoad()
PageInst.Call("Console.enable")
   Result := PageInst.Evaluate(jsAllUA).value
   ; msgbox % Chrome.Jxon_Dump(Result, 4)
   AllUA := Chrome.Jxon_Load(PageInst.Evaluate(jsAllUA).value)
   AllGtag := Chrome.Jxon_Load(PageInst.Evaluate(jsAllGtag).value)
   ; msgbox % AllUA[1]
   
   if !FileExist("info3.txt")
   {
      for index, value in AllUA
         {
            ; msgbox, %value%
            FileAppend, %value%`n ,info3.txt
         }
         for index2, value2 in AllGtag
         {
            ; msgbox, %value2%
            FileAppend, %value2%`n ,info3.txt
         }
   }
   
   file := "info3.txt"
   if (FileExist(file))
   {
      ; ler todo o arquivo, desnecessário esse código
      Loop, read, %file%
         {
               ;   MsgBox, Field number %A_Index% is %A_LoopField%.
               Gui, Add, Link, w110 x+10 

         }

      /*
         Editar o texto e link dos GUI, ADD, LINK
      */
      GuiControl, , gtm, %gtmLine%
      GuiControl, , ga3, %ga3Line%
      ; GuiControl, , ga4, %ga4Line%
      GuiControl, , site, %siteLine%
      GuiControl, , mapa, %mapaLine%
      filePath = ""
   }
   Else
   {
      GuiControl, , gtm, %gtmLine%
      GuiControl, , ga3, %ga3Line%
      ; GuiControl, , ga4, %ga4Line%
      GuiControl, , site, %siteLWEine%
      GuiControl, , mapa, %mapaLine%
   }

   return