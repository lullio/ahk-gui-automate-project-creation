#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
if not A_IsAdmin
   Run *RunAs "%A_ScriptFullPath%" ; (A_AhkPath is usually optional if the script has the .ahk extension.) You would typically check  first.p

{ ; VARIABLE gitFolder1
   gitFolder1 := "Y:\Github"
   IfNotExist, %gitFolder1%
   {
      gitFolder1 = C:\Users\%A_UserName%\Documents\Github
   }
   IfNotExist, %gitFolder1%
   {
      gitFolder1 = C:\Users\%A_UserName%\Desktop\Github
   }
   IfNotExist, %gitFolder1%
   {
      gitFolder1 = C:\Users\%A_UserName%\Documents\Git
   }
   IfNotExist, %gitFolder1%
   {
      gitFolder1 = C:\Users\%A_UserName%\Desktop\Git
   }
   IfNotExist, %gitFolder1%
   {
      gitFolder1 = H:\My Drive\github
   }
   IfNotExist, %gitFolder1%
   {
      gitFolder1 = \\wsl.localhost\Ubuntu\home\ubuntu\Desktop\git
   }
   IfNotExist, %gitFolder1%
   {
      gitFolder1 = \\wsl.localhost\Ubuntu\home\ubuntu\git
   }
}

{ ; VARIABLE vscodeFolder
   
   vscodeFolder := "C:\Users\Felipe\AppData\Local\Programs\Microsoft VS Code\Code.exe"
   IfNotExist, %vscodeFolder%
      vscodeFolder = "C:\Users\felipe\AppData\Local\Programs\Microsoft VS Code\Code.exe"
   IfNotExist, %vscodeFolder%
      vscodeFolder = "C:\Program Files\Microsoft VS Code\Code.exe"
   IfNotExist, %vscodeFolder%
      vscodeFolder = "C:\Users\Estudos\AppData\Local\Programs\Microsoft VS Code\Code.exe"
   IfNotExist, %vscodeFolder%
      vscodeFolder = "C:\Program Files\Microsoft VS Code"
}

{ ; Other Variables and Scape Variables
   escapePercent := "%"
   slash := "\"
   escapeDropdownItem := "www.|"
}

{ ; TEMPLATES FILES JAVASCRIPT DOM E JS
   ; js-dom-1
   FileRead, jsDomTemplate1, TEMPLATE-FILES\DOM\js-dom-1.js   
   ; js-dom-2
   FileRead, jsDomTemplate2, TEMPLATE-FILES\DOM\js-dom-2.js   
   ; js-regex-1
   FileRead, jsRegexTemplate1, TEMPLATE-FILES\JS\js-regex-1.js   
   ; js-clean-1
   FileRead, jsCleanTemplate11, TEMPLATE-FILES\CLEAN\js-clean-1.js   
   ; js-nodejs-1
   FileRead, jsNodejsTemplate1, TEMPLATE-FILES\JS\js-nodejs-1.js   
   ; js-expressjs-complete-server.js-1
   FileRead, jsExpressjsCompleteServerjsTemplate1, TEMPLATE-FILES\JS\js-expressjs-complete-server.js-1.js   
   ; js-expressjs-complete-script.js-1
   FileRead, jsExpressjsCompleteScriptjsTemplate1, TEMPLATE-FILES\JS\js-expressjs-complete-script.js-1.js   
   ; js-expressjs-1
   FileRead, jsExpressjsTemplate1, TEMPLATE-FILES\JS\js-expressjs-1.js   
}
{ ; TEMPLATE FILES JAVASCRIPT REGEX
   ; js-regex-1
   FileRead, jsRegexTemplate1, TEMPLATE-FILES\REGEX\app-exercise1.js   
   ; js-regex-2
   FileRead, jsRegexTemplate2, TEMPLATE-FILES\REGEX\app-exercise2.js   
   ; js-regex-3
   FileRead, jsRegexTemplate3, TEMPLATE-FILES\REGEX\app-exercise3.js   
   ; js-regex-4
   FileRead, jsRegexTemplate4, TEMPLATE-FILES\REGEX\app-exercise4.js   
   ; js-regex-5
   FileRead, jsRegexTemplate5, TEMPLATE-FILES\REGEX\app-exercise5.js  

   ; js-regex-1-answer
   FileRead, jsRegexTemplate1Answer, TEMPLATE-FILES\REGEX\app-exercise1-answer.js
   ; js-regex-2-answer
   FileRead, jsRegexTemplate2Answer, TEMPLATE-FILES\REGEX\app-exercise2-answer.js
   ; js-regex-3-answer
   FileRead, jsRegexTemplate3Answer, TEMPLATE-FILES\REGEX\app-exercise3-answer.js
   ; js-regex-4-answer
   FileRead, jsRegexTemplate4Answer, TEMPLATE-FILES\REGEX\app-exercise4-answer.js
   ; js-regex-5-answer
   FileRead, jsRegexTemplate5Answer, TEMPLATE-FILES\REGEX\app-exercise5-answer.js

   ; js-regex-capturing
   FileRead, jsRegexTemplateCapturing, TEMPLATE-FILES\REGEX\app-exerciseCapturingText.js
   ; js-regex-Match
   FileRead, jsRegexTemplateMatch, TEMPLATE-FILES\REGEX\app-exerciseInfoAboutMatch.js
   ; js-regex-Iterate
   FileRead, jsRegexTemplateIterate, TEMPLATE-FILES\REGEX\app-exerciseIterate.js
   ; js-regex-Replace
   FileRead, jsRegexTemplateReplace, TEMPLATE-FILES\REGEX\app-exerciseReplace.js

   ; js-regex-Capturing-answer
   FileRead, jsRegexTemplateCapturingAnswer, TEMPLATE-FILES\REGEX\app-exerciseCapturingText-answer.js
   ; js-regex-Match-answer
   FileRead, jsRegexTemplateMatchAnswer, TEMPLATE-FILES\REGEX\app-exerciseInfoAboutMatch-answer.js
   ; js-regex-Iterate-answer
   FileRead, jsRegexTemplateIterateAnswer, TEMPLATE-FILES\REGEX\app-exerciseIterate-answer.js
   ; js-regex-Replace-answer
   FileRead, jsRegexTemplateReplaceAnswer, TEMPLATE-FILES\REGEX\app-exerciseReplace-answer.js

}

{ ; TEMPLATE FILES HTML DOM E CLEAN
   ; html-dom-1
   FileRead, htmlDomTemplate1, TEMPLATE-FILES\DOM\html-dom-1.html   
   ; html-dom-2
   FileRead, htmlDomTemplate2, TEMPLATE-FILES\DOM\html-dom-2.html
   ; html-dom-2-answer
   FileRead, htmlDomTemplate2Answer, TEMPLATE-FILES\DOM\html-dom-2-answer.html
   ; html-dom-3
   FileRead, htmlDomTemplate3, TEMPLATE-FILES\DOM\html-dom-3.html
   ; html-dom-3-answer
   FileRead, htmlDomTemplate3Answer, TEMPLATE-FILES\DOM\html-dom-3-answer.html
   ; html-dom-nodes-1
   FileRead, htmlDomNodeTemplate1, TEMPLATE-FILES\DOM\html-dom-nodes-1.html   
   ; html-dom-traversing-1
   FileRead, htmlDomTraversingTemplate1, TEMPLATE-FILES\DOM\html-dom-traversing-1.html  
   ; html-clean-1
   FileRead, htmlCleanTemplate1, TEMPLATE-FILES\CLEAN\html-clean-1.html 
   ; html-cloning-1
   FileRead, htmlDomCloningTemplate1, TEMPLATE-FILES\DOM\html-dom-cloning-1.html

 
}

{ ; TEMPLATE FILES HTML REGEX
   ; html-regex-1
   FileRead, htmlRegexTemplate1, TEMPLATE-FILES\REGEX\index-exercise1.html
   ; html-regex-2
   FileRead, htmlRegexTemplate2, TEMPLATE-FILES\REGEX\index-exercise2.html
   ; html-regex-3
   FileRead, htmlRegexTemplate3, TEMPLATE-FILES\REGEX\index-exercise3.html
   ; html-regex-4
   FileRead, htmlRegexTemplate4, TEMPLATE-FILES\REGEX\index-exercise4.html
   ; html-regex-5
   FileRead, htmlRegexTemplate5, TEMPLATE-FILES\REGEX\index-exercise5.html
   ; html-regex-index-exerciseCapturingText.html
   FileRead, htmlRegexTemplateCaptureText, TEMPLATE-FILES\REGEX\index-exerciseCapturingText.html
   ; html-regex-index-exerciseInfoAboutMatch.html
   FileRead, htmlRegexTemplateMatch, TEMPLATE-FILES\REGEX\index-exerciseInfoAboutMatch.html
   ; html-regex-index-exerciseIterate.html
   FileRead, htmlRegexTemplateIterate, TEMPLATE-FILES\REGEX\index-exerciseIterate.html
   ; html-regex-index-exerciseReplace.html
   FileRead, htmlRegexTemplateReplace, TEMPLATE-FILES\REGEX\index-exerciseReplace.html
   ; html-regex-intro-exercisepasswords.html
   FileRead, htmlRegexTemplatePass, TEMPLATE-FILES\REGEX\intro-exercisepasswords.html

}

{ ; template files AHK
   ; ahk-1
   FileRead, ahkTemplate1, TEMPLATE-FILES\AHK\template1.ahk
}

; InputBox, domProjectName, Projeto JavaScript/HTML , Por favor`, insira o nome do Projeto,, 300,150, 800,500, locale, 15, DOM-
Gui, Destroy
Gui Add, Tab3,, JS|DOM||RegExp|AHK|Clean|Bootstrap|GA4 e GTM|Projetos Oficiais

Gui, Tab, DOM
   gui, Add, Edit, w390 vdomProjectName , DOM-
   /*
   DROPDOWN - LIST OF FOLDERS NAME
   */
   ListProjects := escapeDropdownItem
   if FileExist(gitFolder1 "\DOM\" )  
   {
      Loop, Files, %gitFolder1%\DOM\*.*, D
      {
         ; MsgBox, 4, , Filename = %A_LoopFileFullPath%`n`nContinue?
         ; MsgBox, 4, , Filename1 = %A_LoopFileName%`n`nContinue?
         ; Folders .= %A_LoopFileName%
         SplitPath, A_LoopFileFullPath, FolderName
         ListProjects .= FolderName "|"
         ; msgbox %ListProjects%
         IfMsgBox, No
            break
      }
      
      ListProjects := RTrim(ListProjects, "|")
      ListProjects := StrReplace(ListProjects, "|", "||",, 1) ; without default item
      ; ListProjects := StrReplace(ListProjects, "|", "||",, 1) ; make first item default
   }Else{
      ListProjects := "www.||"
   }
   
   Gui, Add, ComboBox, section w200 vfoldersDOM gSitesDOM hwndSitesDOMID, %ListProjects%
   gui, font, S7 cblue bold italic ;Change font size to 7 for the next controls
   
   Gui, Add, Link, w240 h27 x+5 vinfoDoArquivo, ; GTM-XXXXXXXX
   Gui, Font
   /*
   END OF DROPDOWN - LIST OF FOLDERS NAME
   */
   Gui, Font, bold
   gui, Add, Button, xs+1 w90 gExecuteDOM Default, &Abrir Projeto
   Gui, Font
   gui, Add, Button, x+5 w75 gOpenDOMFolder, &Abrir Pasta
   gui, Add, Button, w75 x+5 gCancel Cancel, &Cancelar

Gui, Tab, JS
   gui, Add, Edit, w390 vjsProjectName , JS-
   /*
   DROPDOWN - LIST OF FOLDERS NAME
   */
   ListProjects := escapeDropdownItem
   if FileExist(gitFolder1 "\JS\" )  
   {
      Loop, Files, %gitFolder1%\JS\*.*, D
      {
         ; MsgBox, 4, , Filename = %A_LoopFileFullPath%`n`nContinue?
         ; MsgBox, 4, , Filename1 = %A_LoopFileName%`n`nContinue?
         ; Folders .= %A_LoopFileName%
         SplitPath, A_LoopFileFullPath, FolderName
         ListProjects .= FolderName "|"
         ; msgbox %ListProjects%
         IfMsgBox, No
            break
      }
      
      ListProjects := RTrim(ListProjects, "|")
      ListProjects := StrReplace(ListProjects, "|", "||",, 1) ; without default item
      ; ListProjects := StrReplace(ListProjects, "|", "||",, 1) ; make first item default
   }Else{
      ListProjects := "www.||"
   }

   Gui, Add, ComboBox, section w200 vfoldersJS gSitesJS hwndSitesJSID, %ListProjects%
   gui, font, S7 cblue bold italic ;Change font size to 7 for the next controls
   
   Gui, Add, Link, w240 h27 x+5 vinfoDoArquivoJS, ; GTM-XXXXXXXX
   Gui, Font
   /*
   END OF DROPDOWN - LIST OF FOLDERS NAME
   */

   gui, Add, Button, xs+1 w90 gExecuteJS Default, &Abrir Projeto
   gui, Add, Button, x+5 w75 gOpenJSFolder, &Abrir Pasta
   gui, Add, Button, w75 x+5 gCancel Cancel, &Cancelar

Gui, Tab, RegExp
   gui, Add, Edit, w390 vRegExpProjectName , RegExp
   /*
   DROPDOWN - LIST OF FOLDERS NAME
   */
   ListProjects := escapeDropdownItem
   if FileExist(gitFolder1 "\RegExp\" )  
   {
      Loop, Files, %gitFolder1%\RegExp\*.*, D
      {
         ; MsgBox, 4, , Filename = %A_LoopFileFullPath%`n`nContinue?
         ; MsgBox, 4, , Filename1 = %A_LoopFileName%`n`nContinue?
         ; Folders .= %A_LoopFileName%
         SplitPath, A_LoopFileFullPath, FolderName
         ListProjects .= FolderName "|"
         ; msgbox %ListProjects%
         IfMsgBox, No
            break
      }
      
      ListProjects := RTrim(ListProjects, "|")
      ListProjects := StrReplace(ListProjects, "|", "||",, 1) ; without default item
      ; ListProjects := StrReplace(ListProjects, "|", "||",, 1) ; make first item default
   }Else{
      ListProjects := "www.||"
   }

   Gui, Add, ComboBox, section w200 vfoldersRegExp gSitesRegExp hwndSitesRegExpID, %ListProjects%
   gui, font, S7 cblue bold italic ;Change font size to 7 for the next controls
   
   Gui, Add, Link, w240 h27 x+5 vinfoDoArquivoRegExp, ; GTM-XXXXXXXX
   Gui, Font
   /*
   END OF DROPDOWN - LIST OF FOLDERS NAME
   */

   gui, Add, Button, xs+1 w90 gExecuteRegExp Default, &Abrir Projeto
   gui, Add, Button, x+5 w75 gOpenRegExpFolder, &Abrir Pasta
   gui, Add, Button, w75 x+5 gCancel Cancel, &Cancelar
Gui, Tab, AHK
   gui, Add, Edit, w390 vAHKProjectName , AHK-
   /*
   DROPDOWN - LIST OF FOLDERS NAME
   */
   ListProjects := escapeDropdownItem
   if FileExist(gitFolder1 "\AHK\" )  
   {
      Loop, Files, %gitFolder1%\AHK\*.*, D
      {
         ; MsgBox, 4, , Filename = %A_LoopFileFullPath%`n`nContinue?
         ; MsgBox, 4, , Filename1 = %A_LoopFileName%`n`nContinue?
         ; Folders .= %A_LoopFileName%
         SplitPath, A_LoopFileFullPath, FolderName
         ListProjects .= FolderName "|"
         ; msgbox %ListProjects%
         IfMsgBox, No
            break
      }
      
      ListProjects := RTrim(ListProjects, "|")
      ListProjects := StrReplace(ListProjects, "|", "||",, 1) ; without default item
      ; ListProjects := StrReplace(ListProjects, "|", "||",, 1) ; make first item default
   }Else{
      ListProjects := "www.||"
   }

   Gui, Add, ComboBox, section w200 vfoldersAHK gSitesAHK hwndSitesAHKID, %ListProjects%
   gui, font, S7 cblue bold italic ;Change font size to 7 for the next controls
   
   Gui, Add, Link, w240 h27 x+5 vinfoDoArquivoAHK, ; GTM-XXXXXXXX
   Gui, Font
   /*
   END OF DROPDOWN - LIST OF FOLDERS NAME
   */

   gui, Add, Button, xs+1 w90 gExecuteAHK Default, &Abrir Projeto
   gui, Add, Button, x+5 w75 gOpenAHKFolder, &Abrir Pasta
   gui, Add, Button, w75 x+5 gCancel Cancel, &Cancelar   



Gui, Tab, Clean
   gui, Add, Edit, w390 vCleanProjectName , Clean-
   /*
   DROPDOWN - LIST OF FOLDERS NAME
   */
   ListProjects := escapeDropdownItem
   if FileExist(gitFolder1 "\Clean\" )  
   {
      Loop, Files, %gitFolder1%\Clean\*.*, D
      {
         ; MsgBox, 4, , Filename = %A_LoopFileFullPath%`n`nContinue?
         ; MsgBox, 4, , Filename1 = %A_LoopFileName%`n`nContinue?
         ; Folders .= %A_LoopFileName%
         SplitPath, A_LoopFileFullPath, FolderName
         ListProjects .= FolderName "|"
         ; msgbox %ListProjects%
         IfMsgBox, No
            break
      }
      
      ListProjects := RTrim(ListProjects, "|")
      ListProjects := StrReplace(ListProjects, "|", "||",, 1) ; without default item
      ; ListProjects := StrReplace(ListProjects, "|", "||",, 1) ; make first item default
   }Else{
      ListProjects := "www.||"
   }

   Gui, Add, ComboBox, section w200 vfoldersClean gSitesClean hwndSitesCleanID, %ListProjects%
   gui, font, S7 cblue bold italic ;Change font size to 7 for the next controls
   
   Gui, Add, Link, w240 h27 x+5 vinfoDoArquivoClean, ; GTM-XXXXXXXX
   Gui, Font
   /*
   END OF DROPDOWN - LIST OF FOLDERS NAME
   */

   gui, Add, Button, xs+1 w90 gExecuteClean Default, &Abrir Projeto
   gui, Add, Button, x+5 w75 gOpenCleanFolder, &Abrir Pasta
   gui, Add, Button, w75 x+5 gCancel Cancel, &Cancelar   

Gui, Tab, Bootstrap
   gui, Add, Edit, w390 vBootstrapProjectName , Bootstrap-
   /*
   DROPDOWN - LIST OF FOLDERS NAME
   */
   ListProjects := escapeDropdownItem
   if FileExist(gitFolder1 "\Bootstrap\" )  
   {
      Loop, Files, %gitFolder1%\Bootstrap\*.*, D
      {
         ; MsgBox, 4, , Filename = %A_LoopFileFullPath%`n`nContinue?
         ; MsgBox, 4, , Filename1 = %A_LoopFileName%`n`nContinue?
         ; Folders .= %A_LoopFileName%
         SplitPath, A_LoopFileFullPath, FolderName
         ListProjects .= FolderName "|"
         ; msgbox %ListProjects%
         IfMsgBox, No
            break
      }
      
      ListProjects := RTrim(ListProjects, "|")
      ListProjects := StrReplace(ListProjects, "|", "||",, 1) ; without default item
      ; ListProjects := StrReplace(ListProjects, "|", "||",, 1) ; make first item default
   }Else{
      ListProjects := "www.||"
   }

   Gui, Add, ComboBox, section w200 vfoldersBootstrap gSitesBootstrap hwndSitesBootstrapID, %ListProjects%
   gui, font, S7 cblue bold italic ;Change font size to 7 for the next controls
   
   Gui, Add, Link, w240 h27 x+5 vinfoDoArquivoBootstrap, ; GTM-XXXXXXXX
   Gui, Font
   /*
   END OF DROPDOWN - LIST OF FOLDERS NAME
   */

   gui, Add, Button, xs+1 w90 gExecuteBootstrap Default, &Abrir Projeto
   gui, Add, Button, x+5 w75 gOpenBootstrapFolder, &Abrir Pasta
   gui, Add, Button, w75 x+5 gCancel Cancel, &Cancelar
   



Gui, Tab, GA4 e GTM
   gui, Add, Edit, w390 vGA4GtmProjectName , GA4Gtm-
   /*
   DROPDOWN - LIST OF FOLDERS NAME
   */
   ListProjects := escapeDropdownItem
   if FileExist(gitFolder1 "\GA4Gtm\" )  
   {
      Loop, Files, %gitFolder1%\GA4Gtm\*.*, D
      {
         ; MsgBox, 4, , Filename = %A_LoopFileFullPath%`n`nContinue?
         ; MsgBox, 4, , Filename1 = %A_LoopFileName%`n`nContinue?
         ; Folders .= %A_LoopFileName%
         SplitPath, A_LoopFileFullPath, FolderName
         ListProjects .= FolderName "|"
         ; msgbox %ListProjects%
         IfMsgBox, No
            break
      }
      
      ListProjects := RTrim(ListProjects, "|")
      ListProjects := StrReplace(ListProjects, "|", "||",, 1) ; without default item
      ; ListProjects := StrReplace(ListProjects, "|", "||",, 1) ; make first item default
   }Else{
      ListProjects := "www.||"
   }

   Gui, Add, ComboBox, section w200 vfoldersGA4Gtm gSitesGA4Gtm hwndSitesGA4GtmID, %ListProjects%
   gui, font, S7 cblue bold italic ;Change font size to 7 for the next controls
   
   Gui, Add, Link, w240 h27 x+5 vinfoDoArquivoGtm, ; GTM-XXXXXXXX
   Gui, Font
   /*
   END OF DROPDOWN - LIST OF FOLDERS NAME
   */

   gui, Add, Button, xs+1 w90 gExecuteGA4Gtm Default, &Abrir Projeto
   gui, Add, Button, x+5 w75 gOpenGA4GtmFolder, &Abrir Pasta
   gui, Add, Button, w75 x+5 gCancel Cancel, &Cancelar

Gui, Tab, Projetos Oficiais
   gui, Add, Edit, w390 vProjetoOficialProjectName , ProjetoOficial-
   /*
   DROPDOWN - LIST OF FOLDERS NAME
   */
   ListProjects := escapeDropdownItem
   if FileExist(gitFolder1 "\ProjetoOficial\" )  
   {
      Loop, Files, %gitFolder1%\ProjetoOficial\*.*, D
      {
         ; MsgBox, 4, , Filename = %A_LoopFileFullPath%`n`nContinue?
         ; MsgBox, 4, , Filename1 = %A_LoopFileName%`n`nContinue?
         ; Folders .= %A_LoopFileName%
         SplitPath, A_LoopFileFullPath, FolderName
         ListProjects .= FolderName "|"
         ; msgbox %ListProjects%
         IfMsgBox, No
            break
      }
      
      ListProjects := RTrim(ListProjects, "|")
      ListProjects := StrReplace(ListProjects, "|", "||",, 1) ; without default item
      ; ListProjects := StrReplace(ListProjects, "|", "||",, 1) ; make first item default
   }Else{
      ListProjects := "www.||"
   }

   Gui, Add, ComboBox, section w200 vfoldersProjetoOficial gSitesProjetoOficial hwndSitesProjetoOficialID, %ListProjects%
   gui, font, S7 cblue bold italic ;Change font size to 7 for the next controls
   
   Gui, Add, Link, w240 h27 x+5 vinfoDoArquivoProjetoOficial, ; GTM-XXXXXXXX
   Gui, Font
   /*
   END OF DROPDOWN - LIST OF FOLDERS NAME
   */

   gui, Add, Button, xs+1 w90 gExecuteProjetoOficial Default, &Abrir Projeto
   gui, Add, Button, x+5 w75 gOpenProjetoOficialFolder, &Abrir Pasta
   gui, Add, Button, w75 x+5 gCancel Cancel, &Cancelar
gui, Show,, Projeto Web
WinSet, AlwaysOnTop, On, Projeto Web ahk_class AutoHotkeyGUI
Return

/*
SCRIPTS DOM
*/
   /*
SCRIPT ABRIR PASTA / OPEN FOLDER
*/
OpenDOMFolder:
   Gui, Submit, NoHide
   needle := "iD)^\Q" . escapeDropdownItem . "\E?$"
   regexp := RegExMatch(foldersDOM, needle)
   ; msgbox %escapeDropdownItem%
   ; msgbox %SitesDOM%
   ; msgbox %regexp%
   ; msgbox %needle%
   if(RegExMatch(foldersDOM, needle)){
      Notify().AddWindow("Para abrir a pasta de um projeto você precisa criar um projeto antes",{Time:3000,Icon:28,Background:"0x990000",Title:"OPS!",TitleSize:15, Size:15, Color: "0xCDA089", TitleColor: "0xE1B9A4"},,"setPosBR") ;
   }else{
      Run, "%gitFolder1%\DOM\%foldersDOM%\"
   }
Return

/*
---- SCRIPT DO DROPDOWN / COMBOBOX
- SERVE PRA AUTOSELECIONAR CONFORME ESCREVE O SITE, BEM LEGAL, FAZER UMA BUSCA...
- USAR A TECLA TAB NO DROPDOWN/COMBOBOX PARA PREENCHER AUTOMATICAMENTE
- SE QUISER REMOVER O AUTOCOMPLETE DO DROPDOWN BASTA REMOVER O hwndSitesDOMID
*/
SitesDOM:
{
         ControlGetText, Eingabe,, ahk_id %SitesDOMID%
         ControlGet, Liste, List, , , ahk_id %SitesDOMID%
         ; msgbox %Liste%
         ; msgbox %Eingabe%
         ; If ( !GetKeyState("Delete") && !GetKeyState("BackSpace") && RegExMatch(Liste, "`nmi)^(www\.)?(\Q" . Eingabe . "\E.*)$", Match)) {
         If ( !GetKeyState("Delete") && !GetKeyState("BackSpace") && RegExMatch(Liste, "`nmi)^(\Q" . Eingabe . "\E.*)$", Match)) {
            ; msgbox %match%
            ; msgbox %match1% ; armazena o www.
            ; msgbox %match2% ; armazena o restante sem o www.
            ControlSetText, , %Match%, ahk_id %SitesDOMID% ; insere o texto no combobox
            Selection := StrLen(Eingabe) | 0xFFFF0000 ; tamanho do texto do match
            ; msgbox %Selection%
            SendMessage, CB_SETEDITSEL := 0x142, , Selection, , ahk_id %SitesDOMID% ; colocar o cursor do mouse selecionando o texto do match
         } Else {
            CheckDelKey = 0
            CheckBackspaceKey = 0
         }
      /*
         TRATAR O GUI, LINK
      */
      Gui, Submit, NoHide
      FileGetSize,size, % gitFolder1 "\DOM\" foldersDOM "\info.txt"
      
      if (FileExist(gitFolder1 "\DOM\" foldersDOM "\info.txt") && size > 1)
      {
         ; ler todo o arquivo, desnecessário esse código
         ; FileRead, etc, %gitFolder1%\DOM\%foldersDOM%\info.txt
         ; ler a primeira linha (GTM)
         
         FileReadLine, infoDOMFileLine, %gitFolder1%\DOM\%foldersDOM%\info.txt, 1

         /*
            Editar o texto e link dos GUI, ADD, LINK
         */
         GuiControl, , infoDoArquivo, %infoDOMFileLine%
      }
      Else
      {
         infoDOMFileLine := ""
         /*
            Editar o texto e link dos GUI, ADD, LINK
         */
         GuiControl, , infoDoArquivo, %infoDOMFileLine%
   
      }

         return
}
ExecuteDOM:
   Gui, Submit, NoHide
   
         folderProject := StrSplit(domProjectName, "-")[1] ; palavra antes do traço
         folderdomProjectName := RegexReplace(StrSplit(domProjectName, "-",,2)[2], "-{1,}", "\") ; todo o resto da palavra após o 1º - 
         folderdomProjectName.OLD := StrSplit(domProjectName, "-")[2] ; palavra depois do traço
         ; msgbox %folderProject%
         ; msgbox %folderdomProjectName%
         ; msgbox %folderdomProjectName2%
         ; caso vc insira nome sem - no input o slash igual a nada para não colocar / no script dentro dos template html..
         if(folderdomProjectName == ""){
            slash := ""
         }
   ; se for o www. selecionado no dropdown
   if(RegExMatch(foldersDOM, "i)" escapeDropdownItem "\?")){ ; o escapeDropdownItem fica com o | no final 
   
         FileCreateDir, %gitFolder1%\%folderProject%\%folderdomProjectName%\
      ; cria um arquivo .js com nome do input do usuario se o arquivo não existe ainda
   
   ; criar arquivo .js
      if !FileExist(gitFolder1 "\" folderProject "\" folderdomProjectName "\" domProjectName ".js")  
         {
            Notify().AddWindow("Arquivo não existe, vamos criar!",{Time:2000,Icon:28,Background:"0x990000",Title:"OPS!",TitleSize:15, Size:15, Color: "0xCDA089", TitleColor: "0xE1B9A4"},,"setPosBR") ;
   
         /* DOM EXERCISE 1
         */
            if(RegExMatch(domProjectName, "im)(^DOM-Exercise-?1)|(^DOM-Exercicio-?1)|(^DOM-Ex-?1)") != 0)
               {
                  ; ARQUIVO JS - EXERCÍCIO DOM 1
               if !FileExist(gitFolder1 "\" folderProject "\" folderdomProjectName "\script.js")
                     {               
                        FileAppend, %jsDomTemplate1%, %gitFolder1%\%folderProject%%slash%%folderdomProjectName%\script.js
                     }
                  ; ARQUIVO HTML - EXERCÍCIO DOM 1
               if !FileExist(gitFolder1 "\" folderProject "\" folderdomProjectName "\" domProjectName ".html")
                     {
                        FileAppend, %htmlDomTemplate1%, %gitFolder1%\%folderProject%%slash%%folderdomProjectName%\%domProjectName%.html
                     }
                  ; ARQUIVO TXT - EXERCÍCIO DOM 1 - Info do Exercício
               if !FileExist(gitFolder1 "\" folderProject "\" folderdomProjectName "\info.txt")
                     {
                        FileAppend, "Exercicio para selecionar os elementos e trocar a cor deles.", %gitFolder1%\%folderProject%%slash%%folderdomProjectName%\info.txt
                     }
         /* DOM EXERCISE 2
         */
               }else if(RegExMatch(domProjectName, "im)(^DOM-Exercise-?2)|(^DOM-Exercicio-?2)|(^DOM-Ex-?2)") != 0){
                  ; ARQUIVO JS - EXERCÍCIO DOM 2
                  if !FileExist(gitFolder1 "\" folderProject "\" folderdomProjectName "\script.js")
                     {               
                        FileAppend, %jsDomTemplate2%, %gitFolder1%\%folderProject%%slash%%folderdomProjectName%\script.js
                     }
                  ; ARQUIVO HTML - EXERCÍCIO DOM 2
               if !FileExist(gitFolder1 "\" folderProject "\" folderdomProjectName "\" domProjectName ".html")
                     {
                        FileAppend, %htmlDomTemplate2%, %gitFolder1%\%folderProject%%slash%%folderdomProjectName%\%domProjectName%.html
                        FileAppend, %htmlDomTemplate2Answer%, %gitFolder1%\%folderProject%%slash%%folderdomProjectName%\%domProjectName%-answer.html
                     }
                  ; ARQUIVO TXT - EXERCÍCIO DOM 2 - Info do Exercício
               if !FileExist(gitFolder1 "\" folderProject "\" folderdomProjectName "\info.txt")
                     {
                        FileAppend, "Exercicio para trocar a cor dos botões.", %gitFolder1%\%folderProject%%slash%%folderdomProjectName%\info.txt
                     }                  
               }else if(RegExMatch(domProjectName, "im)(^DOM-Exercise-?3)|(^DOM-Exercicio-?3)|(^DOM-Ex-?3)") != 0){
                  ; ARQUIVO JS - EXERCÍCIO DOM 3
                  if !FileExist(gitFolder1 "\" folderProject "\" folderdomProjectName "\script.js")
                     {               
                        FileAppend, %jsDomTemplate3%, %gitFolder1%\%folderProject%%slash%%folderdomProjectName%\script.js
                     }
                  ; ARQUIVO HTML - EXERCÍCIO DOM 3
               if !FileExist(gitFolder1 "\" folderProject "\" folderdomProjectName "\" domProjectName ".html")
                     {
                        FileAppend, %htmlDomTemplate3%, %gitFolder1%\%folderProject%%slash%%folderdomProjectName%\%domProjectName%.html
                        FileAppend, %htmlDomTemplate3Answer%, %gitFolder1%\%folderProject%%slash%%folderdomProjectName%\%domProjectName%-answer.html
                     }
               ; ARQUIVO TXT - EXERCÍCIO DOM 3 - Info do Exercício
               if !FileExist(gitFolder1 "\" folderProject "\" folderdomProjectName "\info.txt")
                  {
                     FileAppend, "Add each animal name from the animals array as a list item under the ul tag", %gitFolder1%\%folderProject%%slash%%folderdomProjectName%\info.txt
                  }                                                     
               }Else{
                  FileAppend, %jsDomTemplate1%, %gitFolder1%\%folderProject%%slash%%folderdomProjectName%\%domProjectName%.js
      
                  if !FileExist(gitFolder1 "\" folderProject "\" folderdomProjectName "\index.html")
                     {
                        FileAppend, %htmlDomTemplate1%, %gitFolder1%\%folderProject%%slash%%folderdomProjectName%\index.html
                        FileAppend, %htmlDomTemplate2%, %gitFolder1%\%folderProject%%slash%%folderdomProjectName%\index2-doIt.html
                        FileAppend, %htmlDomTemplate2Answer%, %gitFolder1%\%folderProject%%slash%%folderdomProjectName%\index2-answer.html
                        FileAppend, %htmlDomNodeTemplate1%, %gitFolder1%\%folderProject%%slash%%folderdomProjectName%\nodes.html
                        FileAppend, %htmlDomTraversingTemplate1%, %gitFolder1%\%folderProject%%slash%%folderdomProjectName%\traversing-DOM.html
                        FileAppend, %htmlDomCloningTemplate1%, %gitFolder1%\%folderProject%%slash%%folderdomProjectName%\cloning-DOM.html
                     }
               }
           
         }
   
         Sleep, 700
         ; abrir vs code com a pasta criada
         RunWait, %ComSpec% /c code -n "%gitFolder1%\%folderProject%%slash%%folderdomProjectName%", , Hide
   
         Sleep, 1000
         ; abrir index.html
         Run, "chrome.exe" "%gitFolder1%\%folderProject%%slash%%folderdomProjectName%\%domProjectName%.html"
   
          if FileExist(gitFolder1 "\" folderProject "\" folderdomProjectName "\index2-doIt.html")  
                  Run, "chrome.exe" "%gitFolder1%\%folderProject%%slash%%folderdomProjectName%\index2-doIt.html"
   
          if FileExist(gitFolder1 "\" folderProject "\" folderdomProjectName "\nodes.html")  
            Run, "chrome.exe" "%gitFolder1%\%folderProject%%slash%%folderdomProjectName%\nodes.html"
          if FileExist(gitFolder1 "\" folderProject "\" folderdomProjectName "\traversing-DOM.html")  
            Run, "chrome.exe" "%gitFolder1%\%folderProject%%slash%%folderdomProjectName%\traversing-DOM.html"
          Reload
   }Else{ ; se nao for o www. no dropdown
      ; abrir vs code com a pasta do dropdown
      Sleep, 300
      RunWait, %ComSpec% /c code -n "%gitFolder1%\DOM\%foldersDOM%", , Hide
       ; abrir index.html
       Run, "chrome.exe" "%gitFolder1%\DOM\%foldersDOM%\index.html"
   
       if FileExist(gitFolder1 "\" folderProject "\" foldersDOM "\index2-doIt.html")  
               Run, "chrome.exe" "%gitFolder1%\DOM\%foldersDOM%\index2-doIt.html"
   
       if FileExist(gitFolder1 "\" folderProject "\" foldersDOM "\nodes.html")  
         Run, "chrome.exe" "%gitFolder1%\DOM\%foldersDOM%\nodes.html"
       if FileExist(gitFolder1 "\" folderProject "\" foldersDOM "\traversing-DOM.html")  
         Run, "chrome.exe" "%gitFolder1%\DOM\%foldersDOM%\traversing-DOM.html"
   }

   
/*
SCRIPTS RegExp
*/
   /*
SCRIPT ABRIR PASTA / OPEN FOLDER
*/
OpenRegExpFolder:
   Gui, Submit, NoHide
   needle := "iD)^\Q" . escapeDropdownItem . "\E?$"
   regexp := RegExMatch(foldersRegExp, needle)
   ; msgbox %escapeDropdownItem%
   ; msgbox %SitesRegExp%
   ; msgbox %regexp%
   ; msgbox %needle%
   if(RegExMatch(foldersRegExp, needle)){
      Notify().AddWindow("Para abrir a pasta de um projeto você precisa criar um projeto antes",{Time:3000,Icon:28,Background:"0x990000",Title:"OPS!",TitleSize:15, Size:15, Color: "0xCDA089", TitleColor: "0xE1B9A4"},,"setPosBR") ;
   }else{
      Run, "%gitFolder1%\RegExp\%foldersRegExp%\"
   }
Return

/*
---- SCRIPT DO DROPDOWN / COMBOBOX
- SERVE PRA AUTOSELECIONAR CONFORME ESCREVE O SITE, BEM LEGAL, FAZER UMA BUSCA...
- USAR A TECLA TAB NO DROPDOWN/COMBOBOX PARA PREENCHER AUTOMATICAMENTE
- SE QUISER REMOVER O AUTOCOMPLETE DO DROPDOWN BASTA REMOVER O hwndSitesRegExpID
*/
SitesRegExp:
{
         ControlGetText, Eingabe,, ahk_id %SitesRegExpID%
         ControlGet, Liste, List, , , ahk_id %SitesRegExpID%
         ; msgbox %Liste%
         ; msgbox %Eingabe%
         ; If ( !GetKeyState("Delete") && !GetKeyState("BackSpace") && RegExMatch(Liste, "`nmi)^(www\.)?(\Q" . Eingabe . "\E.*)$", Match)) {
         If ( !GetKeyState("Delete") && !GetKeyState("BackSpace") && RegExMatch(Liste, "`nmi)^(\Q" . Eingabe . "\E.*)$", Match)) {
            ; msgbox %match%
            ; msgbox %match1% ; armazena o www.
            ; msgbox %match2% ; armazena o restante sem o www.
            ControlSetText, , %Match%, ahk_id %SitesRegExpID% ; insere o texto no combobox
            Selection := StrLen(Eingabe) | 0xFFFF0000 ; tamanho do texto do match
            ; msgbox %Selection%
            SendMessage, CB_SETEDITSEL := 0x142, , Selection, , ahk_id %SitesRegExpID% ; colocar o cursor do mouse selecionando o texto do match
         } Else {
            CheckDelKey = 0
            CheckBackspaceKey = 0
         }
      /*
         TRATAR O GUI, LINK
      */
      Gui, Submit, NoHide
      FileGetSize,size, % gitFolder1 "\RegExp\" foldersRegExp "\info.txt"
      
      if (FileExist(gitFolder1 "\RegExp\" foldersRegExp "\info.txt") && size > 1)
      {
         ; ler todo o arquivo, desnecessário esse código
         ; FileRead, etc, %gitFolder1%\RegExp\%foldersRegExp%\info.txt
         ; ler a primeira linha (GTM)
         
         FileReadLine, infoRegExpFileLine, %gitFolder1%\RegExp\%foldersRegExp%\info.txt, 1

         /*
            Editar o texto e link dos GUI, ADD, LINK
         */
         GuiControl, , infoDoArquivo, %infoRegExpFileLine%
      }
      Else
      {
         infoRegExpFileLine := ""
         /*
            Editar o texto e link dos GUI, ADD, LINK
         */
         GuiControl, , infoDoArquivo, %infoRegExpFileLine%
   
      }

         return
}
ExecuteRegExp:
   Gui, Submit, NoHide
   
         folderProject := StrSplit(RegExpProjectName, "-")[1] ; palavra antes do traço
         folderRegExpProjectName := RegexReplace(StrSplit(RegExpProjectName, "-",,2)[2], "-{1,}", "\") ; todo o resto da palavra após o 1º - 
         folderRegExpProjectName.OLD := StrSplit(RegExpProjectName, "-")[2] ; palavra depois do traço
         ; msgbox %folderProject%
         ; msgbox %folderRegExpProjectName%
         ; msgbox %folderRegExpProjectName2%
         ; caso vc insira nome sem - no input o slash igual a nada para não colocar / no script dentro dos template html..
         if(folderRegExpProjectName == ""){
            slash := ""
         }
   ; se for o www. selecionado no dropdown
   if(RegExMatch(foldersRegExp, "i)" escapeDropdownItem "\?")){ ; o escapeDropdownItem fica com o | no final 
   
         FileCreateDir, %gitFolder1%\%folderProject%\%folderRegExpProjectName%\
      ; cria um arquivo .js com nome do input do usuario se o arquivo não existe ainda
   
   ; criar arquivo .js
      if !FileExist(gitFolder1 "\" folderProject "\" folderRegExpProjectName "\" RegExpProjectName ".js")  
         {
            Notify().AddWindow("Arquivo não existe, vamos criar!",{Time:2000,Icon:28,Background:"0x990000",Title:"OPS!",TitleSize:15, Size:15, Color: "0xCDA089", TitleColor: "0xE1B9A4"},,"setPosBR") ;
   
         /* RegExp EXERCISE 1
         */
            if(RegExMatch(RegExpProjectName, "im)(^RegExp-Exercise-?1)|(^RegExp-Exercicio-?1)|(^RegExp-Ex-?1)") != 0)
               {
                  ; ARQUIVO JS - EXERCÍCIO RegExp 1
               if !FileExist(gitFolder1 "\" folderProject "\" folderRegExpProjectName "\script.js")
                     {               
                        FileAppend, %jsRegExpTemplate1%, %gitFolder1%\%folderProject%%slash%%folderRegExpProjectName%\script.js
                     }
                  ; ARQUIVO HTML - EXERCÍCIO RegExp 1
               if !FileExist(gitFolder1 "\" folderProject "\" folderRegExpProjectName "\" RegExpProjectName ".html")
                     {
                        FileAppend, %htmlRegExpTemplate1%, %gitFolder1%\%folderProject%%slash%%folderRegExpProjectName%\%RegExpProjectName%.html
                     }
                  ; ARQUIVO TXT - EXERCÍCIO RegExp 1 - Info do Exercício
               if !FileExist(gitFolder1 "\" folderProject "\" folderRegExpProjectName "\info.txt")
                     {
                        FileAppend, "Exercicio para selecionar os elementos e trocar a cor deles.", %gitFolder1%\%folderProject%%slash%%folderRegExpProjectName%\info.txt
                     }
         /* RegExp EXERCISE 2
         */
               }else if(RegExMatch(RegExpProjectName, "im)(^RegExp-Exercise-?2)|(^RegExp-Exercicio-?2)|(^RegExp-Ex-?2)") != 0){
                  ; ARQUIVO JS - EXERCÍCIO RegExp 2
                  if !FileExist(gitFolder1 "\" folderProject "\" folderRegExpProjectName "\script.js")
                     {               
                        FileAppend, %jsRegExpTemplate2%, %gitFolder1%\%folderProject%%slash%%folderRegExpProjectName%\script.js
                     }
                  ; ARQUIVO HTML - EXERCÍCIO RegExp 2
               if !FileExist(gitFolder1 "\" folderProject "\" folderRegExpProjectName "\" RegExpProjectName ".html")
                     {
                        FileAppend, %htmlRegExpTemplate2%, %gitFolder1%\%folderProject%%slash%%folderRegExpProjectName%\%RegExpProjectName%.html
                        FileAppend, %htmlRegExpTemplate2Answer%, %gitFolder1%\%folderProject%%slash%%folderRegExpProjectName%\%RegExpProjectName%-answer.html
                     }
                  ; ARQUIVO TXT - EXERCÍCIO RegExp 2 - Info do Exercício
               if !FileExist(gitFolder1 "\" folderProject "\" folderRegExpProjectName "\info.txt")
                     {
                        FileAppend, "Exercicio para trocar a cor dos botões.", %gitFolder1%\%folderProject%%slash%%folderRegExpProjectName%\info.txt
                     }                  
               }else if(RegExMatch(RegExpProjectName, "im)(^RegExp-Exercise-?3)|(^RegExp-Exercicio-?3)|(^RegExp-Ex-?3)") != 0){
                  ; ARQUIVO JS - EXERCÍCIO RegExp 3
                  if !FileExist(gitFolder1 "\" folderProject "\" folderRegExpProjectName "\script.js")
                     {               
                        FileAppend, %jsRegExpTemplate3%, %gitFolder1%\%folderProject%%slash%%folderRegExpProjectName%\script.js
                     }
                  ; ARQUIVO HTML - EXERCÍCIO RegExp 3
               if !FileExist(gitFolder1 "\" folderProject "\" folderRegExpProjectName "\" RegExpProjectName ".html")
                     {
                        FileAppend, %htmlRegExpTemplate3%, %gitFolder1%\%folderProject%%slash%%folderRegExpProjectName%\%RegExpProjectName%.html
                        FileAppend, %htmlRegExpTemplate3Answer%, %gitFolder1%\%folderProject%%slash%%folderRegExpProjectName%\%RegExpProjectName%-answer.html
                     }
               ; ARQUIVO TXT - EXERCÍCIO RegExp 3 - Info do Exercício
               if !FileExist(gitFolder1 "\" folderProject "\" folderRegExpProjectName "\info.txt")
                  {
                     FileAppend, "Add each animal name from the animals array as a list item under the ul tag", %gitFolder1%\%folderProject%%slash%%folderRegExpProjectName%\info.txt
                  }                                                     
               }Else{
                  FileAppend, %jsRegExpTemplate1%, %gitFolder1%\%folderProject%%slash%%folderRegExpProjectName%\%RegExpProjectName%.js
      
                  if !FileExist(gitFolder1 "\" folderProject "\" folderRegExpProjectName "\index.html")
                     {
                        FileAppend, %htmlRegExpTemplate1%, %gitFolder1%\%folderProject%%slash%%folderRegExpProjectName%\index.html
                        FileAppend, %htmlRegExpTemplate2%, %gitFolder1%\%folderProject%%slash%%folderRegExpProjectName%\index2-doIt.html
                        FileAppend, %htmlRegExpTemplate2Answer%, %gitFolder1%\%folderProject%%slash%%folderRegExpProjectName%\index2-answer.html
                        FileAppend, %htmlRegExpNodeTemplate1%, %gitFolder1%\%folderProject%%slash%%folderRegExpProjectName%\nodes.html
                        FileAppend, %htmlRegExpTraversingTemplate1%, %gitFolder1%\%folderProject%%slash%%folderRegExpProjectName%\traversing-RegExp.html
                        FileAppend, %htmlRegExpCloningTemplate1%, %gitFolder1%\%folderProject%%slash%%folderRegExpProjectName%\cloning-RegExp.html
                     }
               }
           
         }
   
         Sleep, 700
         ; abrir vs code com a pasta criada
         RunWait, %ComSpec% /c code -n "%gitFolder1%\%folderProject%%slash%%folderRegExpProjectName%", , Hide
   
         Sleep, 1000
         ; abrir index.html
         Run, "chrome.exe" "%gitFolder1%\%folderProject%%slash%%folderRegExpProjectName%\%RegExpProjectName%.html"
   
          if FileExist(gitFolder1 "\" folderProject "\" folderRegExpProjectName "\index2-doIt.html")  
                  Run, "chrome.exe" "%gitFolder1%\%folderProject%%slash%%folderRegExpProjectName%\index2-doIt.html"
   
          if FileExist(gitFolder1 "\" folderProject "\" folderRegExpProjectName "\nodes.html")  
            Run, "chrome.exe" "%gitFolder1%\%folderProject%%slash%%folderRegExpProjectName%\nodes.html"
          if FileExist(gitFolder1 "\" folderProject "\" folderRegExpProjectName "\traversing-RegExp.html")  
            Run, "chrome.exe" "%gitFolder1%\%folderProject%%slash%%folderRegExpProjectName%\traversing-RegExp.html"
          Reload
   }Else{ ; se nao for o www. no dropdown
      ; abrir vs code com a pasta do dropdown
      Sleep, 300
      RunWait, %ComSpec% /c code -n "%gitFolder1%\RegExp\%foldersRegExp%", , Hide
       ; abrir index.html
       Run, "chrome.exe" "%gitFolder1%\RegExp\%foldersRegExp%\index.html"
   
       if FileExist(gitFolder1 "\" folderProject "\" foldersRegExp "\index2-doIt.html")  
               Run, "chrome.exe" "%gitFolder1%\RegExp\%foldersRegExp%\index2-doIt.html"
   
       if FileExist(gitFolder1 "\" folderProject "\" foldersRegExp "\nodes.html")  
         Run, "chrome.exe" "%gitFolder1%\RegExp\%foldersRegExp%\nodes.html"
       if FileExist(gitFolder1 "\" folderProject "\" foldersRegExp "\traversing-RegExp.html")  
         Run, "chrome.exe" "%gitFolder1%\RegExp\%foldersRegExp%\traversing-RegExp.html"
   }




/*
SCRIPTS JS
*/
OpenJSFolder:
   Gui, Submit, NoHide
   needle := "iD)^\Q" . escapeDropdownItem . "\E?$"
   regexp := RegExMatch(foldersJS, needle)
   ; msgbox %escapeDropdownItem%
   ; msgbox %SitesJS%
   ; msgbox %regexp%
   ; msgbox %needle%
   if(RegExMatch(foldersJS, needle)){
      Notify().AddWindow("Para abrir a pasta de um projeto você precisa criar um projeto antes",{Time:3000,Icon:28,Background:"0x990000",Title:"OPS!",TitleSize:15, Size:15, Color: "0xCDA089", TitleColor: "0xE1B9A4"},,"setPosBR") ;
   }else{
      Run, "%gitFolder1%\JS\%foldersJS%\"
   }
Return

SitesJS:
{
         ControlGetText, Eingabe,, ahk_id %SitesJSID%
         ControlGet, Liste, List, , , ahk_id %SitesJSID%
         ; msgbox %Liste%
         ; msgbox %Eingabe%
         ; If ( !GetKeyState("Delete") && !GetKeyState("BackSpace") && RegExMatch(Liste, "`nmi)^(www\.)?(\Q" . Eingabe . "\E.*)$", Match)) {
         If ( !GetKeyState("Delete") && !GetKeyState("BackSpace") && RegExMatch(Liste, "`nmi)^(\Q" . Eingabe . "\E.*)$", Match)) {
            ; msgbox %match%
            ; msgbox %match1% ; armazena o www.
            ; msgbox %match2% ; armazena o restante sem o www.
            ControlSetText, , %Match%, ahk_id %SitesJSID% ; insere o texto no combobox
            Selection := StrLen(Eingabe) | 0xFFFF0000 ; tamanho do texto do match
            ; msgbox %Selection%
            SendMessage, CB_SETEDITSEL := 0x142, , Selection, , ahk_id %SitesJSID% ; colocar o cursor do mouse selecionando o texto do match
         } Else {
            CheckDelKey = 0
            CheckBackspaceKey = 0
         }
         return
}
ExecuteJS:
   Gui, Submit, NoHide
   
         folderProject := StrSplit(jsProjectName, "-")[1] ; palavra antes do traço
         folderdomProjectName := RegexReplace(StrSplit(domProjectName, "-",,2)[2], "-{1,}", "\") ; todo o resto da palavra após o 1º - 
         ; caso vc insira nome sem - no input o slash igual a nada para não colocar / no script dentro dos template html..
         if(folderjsProjectName == ""){
            slash := ""
         }
   ; se for o www. selecionado no dropdown
   if(RegExMatch(foldersJS, "i)" escapeDropdownItem "\?")){ ; o escapeDropdownItem fica com o | no final 
   
         FileCreateDir, %gitFolder1%\%folderProject%\%folderjsProjectName%\
      ; cria um arquivo .js com nome do input do usuario se o arquivo não existe ainda
   
   ; criar arquivo .js
      if !FileExist(gitFolder1 "\" folderProject "\" folderjsProjectName "\" jsProjectName ".js")  
         {
            Notify().AddWindow("Arquivo não existe, vamos criar!",{Time:2000,Icon:28,Background:"0x990000",Title:"OPS!",TitleSize:15, Size:15, Color: "0xCDA089", TitleColor: "0xE1B9A4"},,"setPosBR") ;
   
            
            ; IF JS-
               if(RegExMatch(jsProjectName, "im)^JS-") != 0)
               {
                  FileAppend, %jsRegexTemplate1%, %gitFolder1%\%folderProject%%slash%%folderjsProjectName%\%jsProjectName%.js
   
                  if !FileExist(gitFolder1 "\" folderProject "\" folderjsProjectName "\index.html")
                     {
                        FileAppend, %htmlRegexTemplate1%, %gitFolder1%\%folderProject%%slash%%folderjsProjectName%\index.html
                     }
               }
         }
   
         Sleep, 700
         ; abrir vs code com a pasta criada
         RunWait, %ComSpec% /c code -n "%gitFolder1%\%folderProject%%slash%%folderjsProjectName%", , Hide
   
         Sleep, 700
         ; abrir index.html
         Run, "chrome.exe" "%gitFolder1%\%folderProject%%slash%%folderjsProjectName%\index.html"
   
          if FileExist(gitFolder1 "\" folderProject "\" folderjsProjectName "\index2-doIt.html")  
                  Run, "chrome.exe" "%gitFolder1%\%folderProject%%slash%%folderjsProjectName%\index2-doIt.html"
   
          if FileExist(gitFolder1 "\" folderProject "\" folderjsProjectName "\nodes.html")  
            Run, "chrome.exe" "%gitFolder1%\%folderProject%%slash%%folderjsProjectName%\nodes.html"
          if FileExist(gitFolder1 "\" folderProject "\" folderjsProjectName "\traversing-DOM.html")  
            Run, "chrome.exe" "%gitFolder1%\%folderProject%%slash%%folderjsProjectName%\traversing-DOM.html"
          Reload
   }Else{ ; se nao for o www. no dropdown
      ; abrir vs code com a pasta do dropdown
      RunWait, %ComSpec% /c code -n "%gitFolder1%\JS\%foldersJS%", , Hide
       ; abrir index.html
       Run, "chrome.exe" "%gitFolder1%\JS\%foldersJS%\index.html"
   
       if FileExist(gitFolder1 "\" folderProject "\" foldersJS "\index2-doIt.html")  
               Run, "chrome.exe" "%gitFolder1%\JS\%foldersJS%\index2-doIt.html"
   
       if FileExist(gitFolder1 "\" folderProject "\" foldersJS "\nodes.html")  
         Run, "chrome.exe" "%gitFolder1%\JS\%foldersJS%\nodes.html"
       if FileExist(gitFolder1 "\" folderProject "\" foldersJS "\traversing-JS.html")  
         Run, "chrome.exe" "%gitFolder1%\JS\%foldersJS%\traversing-JS.html"
   }
Return



/*
SCRIPTS AHK
*/
OpenAHKFolder:
   Gui, Submit, NoHide
   needle := "iD)^\Q" . escapeDropdownItem . "\E?$"
   regexp := RegExMatch(foldersAHK, needle)
   ; msgbox %escapeDropdownItem%
   ; msgbox %SitesAHK%
   ; msgbox %regexp%
   ; msgbox %needle%
   if(RegExMatch(foldersAHK, needle)){
      Notify().AddWindow("Para abrir a pasta de um projeto você precisa criar um projeto antes",{Time:3000,Icon:28,Background:"0x990000",Title:"OPS!",TitleSize:15, Size:15, Color: "0xCDA089", TitleColor: "0xE1B9A4"},,"setPosBR") ;
   }else{
      Run, "%gitFolder1%\AHK\%foldersAHK%\"
   }
Return

SitesAHK:
{
         ControlGetText, Eingabe,, ahk_id %SitesAHKID%
         ControlGet, Liste, List, , , ahk_id %SitesAHKID%
         ; msgbox %Liste%
         ; msgbox %Eingabe%
         ; If ( !GetKeyState("Delete") && !GetKeyState("BackSpace") && RegExMatch(Liste, "`nmi)^(www\.)?(\Q" . Eingabe . "\E.*)$", Match)) {
         If ( !GetKeyState("Delete") && !GetKeyState("BackSpace") && RegExMatch(Liste, "`nmi)^(\Q" . Eingabe . "\E.*)$", Match)) {
            ; msgbox %match%
            ; msgbox %match1% ; armazena o www.
            ; msgbox %match2% ; armazena o restante sem o www.
            ControlSetText, , %Match%, ahk_id %SitesAHKID% ; insere o texto no combobox
            Selection := StrLen(Eingabe) | 0xFFFF0000 ; tamanho do texto do match
            ; msgbox %Selection%
            SendMessage, CB_SETEDITSEL := 0x142, , Selection, , ahk_id %SitesAHKID% ; colocar o cursor do mouse selecionando o texto do match
         } Else {
            CheckDelKey = 0
            CheckBackspaceKey = 0
         }
         return
}
ExecuteAHK:
   Gui, Submit, NoHide
   
         folderProject := StrSplit(AHKProjectName, "-")[1] ; palavra antes do traço
         folderAHKProjectName := RegexReplace(StrSplit(AHKProjectName, "-",,2)[2], "-{1,}", "\") ; todo o resto da palavra após o 1º - 
         ; caso vc insira nome sem - no input o slash igual a nada para não colocar / no script dentro dos template html..
         if(folderAHKProjectName == ""){
            slash := ""
         }
   ; se for o www. selecionado no dropdown
   if(RegExMatch(foldersAHK, "i)" escapeDropdownItem "\?")){ ; o escapeDropdownItem fica com o | no final 
   
         FileCreateDir, %gitFolder1%\%folderProject%\%folderAHKProjectName%\
      ; cria um arquivo .AHK com nome do input do usuario se o arquivo não existe ainda
   
   ; criar arquivo .AHK
      if !FileExist(gitFolder1 "\" folderProject "\" folderAHKProjectName "\" AHKProjectName ".ahk")  
         {
            Notify().AddWindow("Arquivo não existe, vamos criar!",{Time:2000,Icon:28,Background:"0x990000",Title:"OPS!",TitleSize:15, Size:15, Color: "0xCDA089", TitleColor: "0xE1B9A4"},,"setPosBR") ;
                  FileAppend, %ahkTemplate1%, %gitFolder1%\%folderProject%%slash%%folderAHKProjectName%\%AHKProjectName%.ahk
   
                  if !FileExist(gitFolder1 "\" folderProject "\" folderAHKProjectName "\index.html")
                     {
                        FileAppend, %htmlTemplate%, %gitFolder1%\%folderProject%%slash%%folderAHKProjectName%\index.html
                     }
         }
   
         Sleep, 700
         ; abrir vs code com a pasta criada
         RunWait, %ComSpec% /c code -n "%gitFolder1%\%folderProject%%slash%%folderAHKProjectName%", , Hide
   
         Sleep, 700
         ; abrir index.html
         Run, "chrome.exe" "%gitFolder1%\%folderProject%%slash%%folderAHKProjectName%\index.html"
   
          if FileExist(gitFolder1 "\" folderProject "\" folderAHKProjectName "\index2-doIt.html")  
                  Run, "chrome.exe" "%gitFolder1%\%folderProject%%slash%%folderAHKProjectName%\index2-doIt.html"
   
          if FileExist(gitFolder1 "\" folderProject "\" folderAHKProjectName "\nodes.html")  
            Run, "chrome.exe" "%gitFolder1%\%folderProject%%slash%%folderAHKProjectName%\nodes.html"
          if FileExist(gitFolder1 "\" folderProject "\" folderAHKProjectName "\traversing-DOM.html")  
            Run, "chrome.exe" "%gitFolder1%\%folderProject%%slash%%folderAHKProjectName%\traversing-DOM.html"
          Reload
   }Else{ ; se nao for o www. no dropdown
      ; abrir vs code com a pasta do dropdown
      RunWait, %ComSpec% /c code -n "%gitFolder1%\JS\%foldersJS%", , Hide
       ; abrir index.html
       Run, "chrome.exe" "%gitFolder1%\JS\%foldersJS%\index.html"
   
       if FileExist(gitFolder1 "\" folderProject "\" foldersJS "\index2-doIt.html")  
               Run, "chrome.exe" "%gitFolder1%\JS\%foldersJS%\index2-doIt.html"
   
       if FileExist(gitFolder1 "\" folderProject "\" foldersJS "\nodes.html")  
         Run, "chrome.exe" "%gitFolder1%\JS\%foldersJS%\nodes.html"
       if FileExist(gitFolder1 "\" folderProject "\" foldersJS "\traversing-JS.html")  
         Run, "chrome.exe" "%gitFolder1%\JS\%foldersJS%\traversing-JS.html"
   }
Return


/*
SCRIPTS CLEAN TEMPLATE
*/
OpenCLEANFolder:
   Gui, Submit, NoHide
   needle := "iD)^\Q" . escapeDropdownItem . "\E?$"
   regexp := RegExMatch(foldersCLEAN, needle)
   ; msgbox %escapeDropdownItem%
   ; msgbox %SitesCLEAN%
   ; msgbox %regexp%
   ; msgbox %needle%
   if(RegExMatch(foldersCLEAN, needle)){
      Notify().AddWindow("Para abrir a pasta de um projeto você precisa criar um projeto antes",{Time:3000,Icon:28,Background:"0x990000",Title:"OPS!",TitleSize:15, Size:15, Color: "0xCDA089", TitleColor: "0xE1B9A4"},,"setPosBR") ;
   }else{
      Run, "%gitFolder1%\CLEAN\%foldersCLEAN%\"
   }
Return

SitesCLEAN:
{
         ControlGetText, Eingabe,, ahk_id %SitesCLEANID%
         ControlGet, Liste, List, , , ahk_id %SitesCLEANID%
         ; msgbox %Liste%
         ; msgbox %Eingabe%
         ; If ( !GetKeyState("Delete") && !GetKeyState("BackSpace") && RegExMatch(Liste, "`nmi)^(www\.)?(\Q" . Eingabe . "\E.*)$", Match)) {
         If ( !GetKeyState("Delete") && !GetKeyState("BackSpace") && RegExMatch(Liste, "`nmi)^(\Q" . Eingabe . "\E.*)$", Match)) {
            ; msgbox %match%
            ; msgbox %match1% ; armazena o www.
            ; msgbox %match2% ; armazena o restante sem o www.
            ControlSetText, , %Match%, ahk_id %SitesCLEANID% ; insere o texto no combobox
            Selection := StrLen(Eingabe) | 0xFFFF0000 ; tamanho do texto do match
            ; msgbox %Selection%
            SendMessage, CB_SETEDITSEL := 0x142, , Selection, , ahk_id %SitesCLEANID% ; colocar o cursor do mouse selecionando o texto do match
         } Else {
            CheckDelKey = 0
            CheckBackspaceKey = 0
         }
         return
}
ExecuteCLEAN:
   Gui, Submit, NoHide
   
         folderProject := StrSplit(CLEANProjectName, "-")[1] ; palavra antes do traço
         folderdomProjectName := RegexReplace(StrSplit(domProjectName, "-",,2)[2], "-{1,}", "\") ; todo o resto da palavra após o 1º - 
         ; caso vc insira nome sem - no input o slash igual a nada para não colocar / no script dentro dos template html..
         if(folderCLEANProjectName == ""){
            slash := ""
         }
   ; se for o www. selecionado no dropdown
   if(RegExMatch(foldersCLEAN, "i)" escapeDropdownItem "\?")){ ; o escapeDropdownItem fica com o | no final 
   
         FileCreateDir, %gitFolder1%\%folderProject%\%folderCLEANProjectName%\
      ; cria um arquivo .CLEAN com nome do input do usuario se o arquivo não existe ainda
   
   ; criar arquivo .CLEAN
      if !FileExist(gitFolder1 "\" folderProject "\" folderCLEANProjectName "\" CLEANProjectName ".js")  
         {
            Notify().AddWindow("Arquivo não existe, vamos criar!",{Time:2000,Icon:28,Background:"0x990000",Title:"OPS!",TitleSize:15, Size:15, Color: "0xCDA089", TitleColor: "0xE1B9A4"},,"setPosBR") ;
   
              ; IF TEMPLATE/HTML/CLEAN    
                  if(RegExMatch(CLEANProjectName, "im)^HTML-.*|.*clean.*|.*empty.*|.*template.*") != 0)
                  {
                        FileAppend, %jsCleanTemplate1%, %gitFolder1%\%folderProject%%slash%%folderCLEANProjectName%\%CLEANProjectName%.js
         
                        if !FileExist(gitFolder1 "\" folderProject "\" folderCLEANProjectName "\index.html")
                           {
                              FileAppend, %htmlCleanTemplate1%, %gitFolder1%\%folderProject%%slash%%folderCLEANProjectName%\index.html
                           }
                  }
         }
   
         Sleep, 700
         ; abrir vs code com a pasta criada
         RunWait, %ComSpec% /c code -n "%gitFolder1%\%folderProject%%slash%%folderCLEANProjectName%", , Hide
   
         Sleep, 700
         ; abrir index.html
         Run, "chrome.exe" "%gitFolder1%\%folderProject%%slash%%folderCLEANProjectName%\index.html"
   
          if FileExist(gitFolder1 "\" folderProject "\" folderCLEANProjectName "\index2-doIt.html")  
                  Run, "chrome.exe" "%gitFolder1%\%folderProject%%slash%%folderCLEANProjectName%\index2-doIt.html"
   
          if FileExist(gitFolder1 "\" folderProject "\" folderCLEANProjectName "\nodes.html")  
            Run, "chrome.exe" "%gitFolder1%\%folderProject%%slash%%folderCLEANProjectName%\nodes.html"
          if FileExist(gitFolder1 "\" folderProject "\" folderCLEANProjectName "\traversing-DOM.html")  
            Run, "chrome.exe" "%gitFolder1%\%folderProject%%slash%%folderCLEANProjectName%\traversing-DOM.html"
          Reload
   }Else{ ; se nao for o www. no dropdown
      ; abrir vs code com a pasta do dropdown
      RunWait, %ComSpec% /c code -n "%gitFolder1%\JS\%foldersJS%", , Hide
       ; abrir index.html
       Run, "chrome.exe" "%gitFolder1%\JS\%foldersJS%\index.html"
   
       if FileExist(gitFolder1 "\" folderProject "\" foldersJS "\index2-doIt.html")  
               Run, "chrome.exe" "%gitFolder1%\JS\%foldersJS%\index2-doIt.html"
   
       if FileExist(gitFolder1 "\" folderProject "\" foldersJS "\nodes.html")  
         Run, "chrome.exe" "%gitFolder1%\JS\%foldersJS%\nodes.html"
       if FileExist(gitFolder1 "\" folderProject "\" foldersJS "\traversing-JS.html")  
         Run, "chrome.exe" "%gitFolder1%\JS\%foldersJS%\traversing-JS.html"
   }
Return


/*
SCRIPTS Bootstrap TEMPLATE
*/
OpenBootstrapFolder:
   Gui, Submit, NoHide
   needle := "iD)^\Q" . escapeDropdownItem . "\E?$"
   regexp := RegExMatch(foldersBootstrap, needle)
   ; msgbox %escapeDropdownItem%
   ; msgbox %SitesBootstrap%
   ; msgbox %regexp%
   ; msgbox %needle%
   if(RegExMatch(foldersBootstrap, needle)){
      Notify().AddWindow("Para abrir a pasta de um projeto você precisa criar um projeto antes",{Time:3000,Icon:28,Background:"0x990000",Title:"OPS!",TitleSize:15, Size:15, Color: "0xCDA089", TitleColor: "0xE1B9A4"},,"setPosBR") ;
   }else{
      Run, "%gitFolder1%\Bootstrap\%foldersBootstrap%\"
   }
Return

SitesBootstrap:
{
         ControlGetText, Eingabe,, ahk_id %SitesBootstrapID%
         ControlGet, Liste, List, , , ahk_id %SitesBootstrapID%
         ; msgbox %Liste%
         ; msgbox %Eingabe%
         ; If ( !GetKeyState("Delete") && !GetKeyState("BackSpace") && RegExMatch(Liste, "`nmi)^(www\.)?(\Q" . Eingabe . "\E.*)$", Match)) {
         If ( !GetKeyState("Delete") && !GetKeyState("BackSpace") && RegExMatch(Liste, "`nmi)^(\Q" . Eingabe . "\E.*)$", Match)) {
            ; msgbox %match%
            ; msgbox %match1% ; armazena o www.
            ; msgbox %match2% ; armazena o restante sem o www.
            ControlSetText, , %Match%, ahk_id %SitesBootstrapID% ; insere o texto no combobox
            Selection := StrLen(Eingabe) | 0xFFFF0000 ; tamanho do texto do match
            ; msgbox %Selection%
            SendMessage, CB_SETEDITSEL := 0x142, , Selection, , ahk_id %SitesBootstrapID% ; colocar o cursor do mouse selecionando o texto do match
         } Else {
            CheckDelKey = 0
            CheckBackspaceKey = 0
         }
         return
}
ExecuteBootstrap:
   Gui, Submit, NoHide
   
         folderProject := StrSplit(BootstrapProjectName, "-")[1] ; palavra antes do traço
         folderdomProjectName := RegexReplace(StrSplit(domProjectName, "-",,2)[2], "-{1,}", "\") ; todo o resto da palavra após o 1º - 
         ; caso vc insira nome sem - no input o slash igual a nada para não colocar / no script dentro dos template html..
         if(folderBootstrapProjectName == ""){
            slash := ""
         }
   ; se for o www. selecionado no dropdown
   if(RegExMatch(foldersBootstrap, "i)" escapeDropdownItem "\?")){ ; o escapeDropdownItem fica com o | no final 
   
         FileCreateDir, %gitFolder1%\%folderProject%\%folderBootstrapProjectName%\
      ; cria um arquivo .Bootstrap com nome do input do usuario se o arquivo não existe ainda
   
   ; criar arquivo .Bootstrap
      if !FileExist(gitFolder1 "\" folderProject "\" folderBootstrapProjectName "\" BootstrapProjectName ".js")  
         {
            Notify().AddWindow("Arquivo não existe, vamos criar!",{Time:2000,Icon:28,Background:"0x990000",Title:"OPS!",TitleSize:15, Size:15, Color: "0xCDA089", TitleColor: "0xE1B9A4"},,"setPosBR") ;
   
              ; IF TEMPLATE/HTML/Bootstrap    
                  if(RegExMatch(BootstrapProjectName, "im)^HTML-.*|.*Bootstrap.*|.*empty.*|.*template.*") != 0)
                  {
                        FileAppend, %jsBootstrapTemplate1%, %gitFolder1%\%folderProject%%slash%%folderBootstrapProjectName%\%BootstrapProjectName%.js
         
                        if !FileExist(gitFolder1 "\" folderProject "\" folderBootstrapProjectName "\index.html")
                           {
                              FileAppend, %htmlCleanTemplate1%, %gitFolder1%\%folderProject%%slash%%folderBootstrapProjectName%\index.html
                           }
                  }
         }
   
         Sleep, 700
         ; abrir vs code com a pasta criada
         RunWait, %ComSpec% /c code -n "%gitFolder1%\%folderProject%%slash%%folderBootstrapProjectName%", , Hide
   
         Sleep, 700
         ; abrir index.html
         Run, "chrome.exe" "%gitFolder1%\%folderProject%%slash%%folderBootstrapProjectName%\index.html"
   
          if FileExist(gitFolder1 "\" folderProject "\" folderBootstrapProjectName "\index2-doIt.html")  
                  Run, "chrome.exe" "%gitFolder1%\%folderProject%%slash%%folderBootstrapProjectName%\index2-doIt.html"
   
          if FileExist(gitFolder1 "\" folderProject "\" folderBootstrapProjectName "\nodes.html")  
            Run, "chrome.exe" "%gitFolder1%\%folderProject%%slash%%folderBootstrapProjectName%\nodes.html"
          if FileExist(gitFolder1 "\" folderProject "\" folderBootstrapProjectName "\traversing-DOM.html")  
            Run, "chrome.exe" "%gitFolder1%\%folderProject%%slash%%folderBootstrapProjectName%\traversing-DOM.html"
          Reload
   }Else{ ; se nao for o www. no dropdown
      ; abrir vs code com a pasta do dropdown
      RunWait, %ComSpec% /c code -n "%gitFolder1%\JS\%foldersJS%", , Hide
       ; abrir index.html
       Run, "chrome.exe" "%gitFolder1%\JS\%foldersJS%\index.html"
   
       if FileExist(gitFolder1 "\" folderProject "\" foldersJS "\index2-doIt.html")  
               Run, "chrome.exe" "%gitFolder1%\JS\%foldersJS%\index2-doIt.html"
   
       if FileExist(gitFolder1 "\" folderProject "\" foldersJS "\nodes.html")  
         Run, "chrome.exe" "%gitFolder1%\JS\%foldersJS%\nodes.html"
       if FileExist(gitFolder1 "\" folderProject "\" foldersJS "\traversing-JS.html")  
         Run, "chrome.exe" "%gitFolder1%\JS\%foldersJS%\traversing-JS.html"
   }
Return


/*
SCRIPTS GA4/GTM TEMPLATE
*/
OpenGA4GtmFolder:
   Gui, Submit, NoHide
   needle := "iD)^\Q" . escapeDropdownItem . "\E?$"
   regexp := RegExMatch(foldersGA4Gtm, needle)
   ; msgbox %escapeDropdownItem%
   ; msgbox %SitesGA4Gtm%
   ; msgbox %regexp%
   ; msgbox %needle%
   if(RegExMatch(foldersGA4Gtm, needle)){
      Notify().AddWindow("Para abrir a pasta de um projeto você precisa criar um projeto antes",{Time:3000,Icon:28,Background:"0x990000",Title:"OPS!",TitleSize:15, Size:15, Color: "0xCDA089", TitleColor: "0xE1B9A4"},,"setPosBR") ;
   }else{
      Run, "%gitFolder1%\GA4Gtm\%foldersGA4Gtm%\"
   }
Return

SitesGA4Gtm:
{
         ControlGetText, Eingabe,, ahk_id %SitesGA4GtmID%
         ControlGet, Liste, List, , , ahk_id %SitesGA4GtmID%
         ; msgbox %Liste%
         ; msgbox %Eingabe%
         ; If ( !GetKeyState("Delete") && !GetKeyState("BackSpace") && RegExMatch(Liste, "`nmi)^(www\.)?(\Q" . Eingabe . "\E.*)$", Match)) {
         If ( !GetKeyState("Delete") && !GetKeyState("BackSpace") && RegExMatch(Liste, "`nmi)^(\Q" . Eingabe . "\E.*)$", Match)) {
            ; msgbox %match%
            ; msgbox %match1% ; armazena o www.
            ; msgbox %match2% ; armazena o restante sem o www.
            ControlSetText, , %Match%, ahk_id %SitesGA4GtmID% ; insere o texto no combobox
            Selection := StrLen(Eingabe) | 0xFFFF0000 ; tamanho do texto do match
            ; msgbox %Selection%
            SendMessage, CB_SETEDITSEL := 0x142, , Selection, , ahk_id %SitesGA4GtmID% ; colocar o cursor do mouse selecionando o texto do match
         } Else {
            CheckDelKey = 0
            CheckBackspaceKey = 0
         }
         return
}
ExecuteGA4Gtm:
   Gui, Submit, NoHide
   
         folderProject := StrSplit(GA4GtmProjectName, "-")[1] ; palavra antes do traço
         folderdomProjectName := RegexReplace(StrSplit(domProjectName, "-",,2)[2], "-{1,}", "\") ; todo o resto da palavra após o 1º - 
         ; caso vc insira nome sem - no input o slash igual a nada para não colocar / no script dentro dos template html..
         if(folderGA4GtmProjectName == ""){
            slash := ""
         }
   ; se for o www. selecionado no dropdown
   if(RegExMatch(foldersGA4Gtm, "i)" escapeDropdownItem "\?")){ ; o escapeDropdownItem fica com o | no final 
   
         FileCreateDir, %gitFolder1%\%folderProject%\%folderGA4GtmProjectName%\
      ; cria um arquivo .GA4Gtm com nome do input do usuario se o arquivo não existe ainda
   
   ; criar arquivo .GA4Gtm
      if !FileExist(gitFolder1 "\" folderProject "\" folderGA4GtmProjectName "\" GA4GtmProjectName ".js")  
         {
            Notify().AddWindow("Arquivo não existe, vamos criar!",{Time:2000,Icon:28,Background:"0x990000",Title:"OPS!",TitleSize:15, Size:15, Color: "0xCDA089", TitleColor: "0xE1B9A4"},,"setPosBR") ;
   
              ; IF TEMPLATE/HTML/GA4Gtm    
                  if(RegExMatch(GA4GtmProjectName, "im)^HTML-.*|.*GA4Gtm.*|.*empty.*|.*template.*") != 0)
                  {
                        FileAppend, %jsGA4GtmTemplate1%, %gitFolder1%\%folderProject%%slash%%folderGA4GtmProjectName%\%GA4GtmProjectName%.js
         
                        if !FileExist(gitFolder1 "\" folderProject "\" folderGA4GtmProjectName "\index.html")
                           {
                              FileAppend, %htmlCleanTemplate1%, %gitFolder1%\%folderProject%%slash%%folderGA4GtmProjectName%\index.html
                           }
                  }
         }
   
         Sleep, 700
         ; abrir vs code com a pasta criada
         RunWait, %ComSpec% /c code -n "%gitFolder1%\%folderProject%%slash%%folderGA4GtmProjectName%", , Hide
   
         Sleep, 700
         ; abrir index.html
         Run, "chrome.exe" "%gitFolder1%\%folderProject%%slash%%folderGA4GtmProjectName%\index.html"
   
          if FileExist(gitFolder1 "\" folderProject "\" folderGA4GtmProjectName "\index2-doIt.html")  
                  Run, "chrome.exe" "%gitFolder1%\%folderProject%%slash%%folderGA4GtmProjectName%\index2-doIt.html"
   
          if FileExist(gitFolder1 "\" folderProject "\" folderGA4GtmProjectName "\nodes.html")  
            Run, "chrome.exe" "%gitFolder1%\%folderProject%%slash%%folderGA4GtmProjectName%\nodes.html"
          if FileExist(gitFolder1 "\" folderProject "\" folderGA4GtmProjectName "\traversing-DOM.html")  
            Run, "chrome.exe" "%gitFolder1%\%folderProject%%slash%%folderGA4GtmProjectName%\traversing-DOM.html"
          Reload
   }Else{ ; se nao for o www. no dropdown
      ; abrir vs code com a pasta do dropdown
      RunWait, %ComSpec% /c code -n "%gitFolder1%\JS\%foldersJS%", , Hide
       ; abrir index.html
       Run, "chrome.exe" "%gitFolder1%\JS\%foldersJS%\index.html"
   
       if FileExist(gitFolder1 "\" folderProject "\" foldersJS "\index2-doIt.html")  
               Run, "chrome.exe" "%gitFolder1%\JS\%foldersJS%\index2-doIt.html"
   
       if FileExist(gitFolder1 "\" folderProject "\" foldersJS "\nodes.html")  
         Run, "chrome.exe" "%gitFolder1%\JS\%foldersJS%\nodes.html"
       if FileExist(gitFolder1 "\" folderProject "\" foldersJS "\traversing-JS.html")  
         Run, "chrome.exe" "%gitFolder1%\JS\%foldersJS%\traversing-JS.html"
   }
Return


/*
SCRIPTS GA4/GTM TEMPLATE
*/
OpenProjetoOficialFolder:
   Gui, Submit, NoHide
   needle := "iD)^\Q" . escapeDropdownItem . "\E?$"
   regexp := RegExMatch(foldersProjetoOficial, needle)
   ; msgbox %escapeDropdownItem%
   ; msgbox %SitesProjetoOficial%
   ; msgbox %regexp%
   ; msgbox %needle%
   if(RegExMatch(foldersProjetoOficial, needle)){
      Notify().AddWindow("Para abrir a pasta de um projeto você precisa criar um projeto antes",{Time:3000,Icon:28,Background:"0x990000",Title:"OPS!",TitleSize:15, Size:15, Color: "0xCDA089", TitleColor: "0xE1B9A4"},,"setPosBR") ;
   }else{
      Run, "%gitFolder1%\ProjetoOficial\%foldersProjetoOficial%\"
   }
Return

SitesProjetoOficial:
{
         ControlGetText, Eingabe,, ahk_id %SitesProjetoOficialID%
         ControlGet, Liste, List, , , ahk_id %SitesProjetoOficialID%
         ; msgbox %Liste%
         ; msgbox %Eingabe%
         ; If ( !GetKeyState("Delete") && !GetKeyState("BackSpace") && RegExMatch(Liste, "`nmi)^(www\.)?(\Q" . Eingabe . "\E.*)$", Match)) {
         If ( !GetKeyState("Delete") && !GetKeyState("BackSpace") && RegExMatch(Liste, "`nmi)^(\Q" . Eingabe . "\E.*)$", Match)) {
            ; msgbox %match%
            ; msgbox %match1% ; armazena o www.
            ; msgbox %match2% ; armazena o restante sem o www.
            ControlSetText, , %Match%, ahk_id %SitesProjetoOficialID% ; insere o texto no combobox
            Selection := StrLen(Eingabe) | 0xFFFF0000 ; tamanho do texto do match
            ; msgbox %Selection%
            SendMessage, CB_SETEDITSEL := 0x142, , Selection, , ahk_id %SitesProjetoOficialID% ; colocar o cursor do mouse selecionando o texto do match
         } Else {
            CheckDelKey = 0
            CheckBackspaceKey = 0
         }
         return
}
ExecuteProjetoOficial:
   Gui, Submit, NoHide
   
         folderProject := StrSplit(ProjetoOficialProjectName, "-")[1] ; palavra antes do traço
         folderdomProjectName := RegexReplace(StrSplit(domProjectName, "-",,2)[2], "-{1,}", "\") ; todo o resto da palavra após o 1º - 
         ; caso vc insira nome sem - no input o slash igual a nada para não colocar / no script dentro dos template html..
         if(folderProjetoOficialProjectName == ""){
            slash := ""
         }
   ; se for o www. selecionado no dropdown
   if(RegExMatch(foldersProjetoOficial, "i)" escapeDropdownItem "\?")){ ; o escapeDropdownItem fica com o | no final 
   
         FileCreateDir, %gitFolder1%\%folderProject%\%folderProjetoOficialProjectName%\
      ; cria um arquivo .ProjetoOficial com nome do input do usuario se o arquivo não existe ainda
   
   ; criar arquivo .ProjetoOficial
      if !FileExist(gitFolder1 "\" folderProject "\" folderProjetoOficialProjectName "\" ProjetoOficialProjectName ".js")  
         {
            Notify().AddWindow("Arquivo não existe, vamos criar!",{Time:2000,Icon:28,Background:"0x990000",Title:"OPS!",TitleSize:15, Size:15, Color: "0xCDA089", TitleColor: "0xE1B9A4"},,"setPosBR") ;
   
              ; IF TEMPLATE/HTML/ProjetoOficial    
                  if(RegExMatch(ProjetoOficialProjectName, "im)^HTML-.*|.*ProjetoOficial.*|.*empty.*|.*template.*") != 0)
                  {
                        FileAppend, %jsProjetoOficialTemplate1%, %gitFolder1%\%folderProject%%slash%%folderProjetoOficialProjectName%\%ProjetoOficialProjectName%.js
         
                        if !FileExist(gitFolder1 "\" folderProject "\" folderProjetoOficialProjectName "\index.html")
                           {
                              FileAppend, %htmlCleanTemplate1%, %gitFolder1%\%folderProject%%slash%%folderProjetoOficialProjectName%\index.html
                           }
                  }
         }
   
         Sleep, 700
         ; abrir vs code com a pasta criada
         RunWait, %ComSpec% /c code -n "%gitFolder1%\%folderProject%%slash%%folderProjetoOficialProjectName%", , Hide
   
         Sleep, 700
         ; abrir index.html
         Run, "chrome.exe" "%gitFolder1%\%folderProject%%slash%%folderProjetoOficialProjectName%\index.html"
   
          if FileExist(gitFolder1 "\" folderProject "\" folderProjetoOficialProjectName "\index2-doIt.html")  
                  Run, "chrome.exe" "%gitFolder1%\%folderProject%%slash%%folderProjetoOficialProjectName%\index2-doIt.html"
   
          if FileExist(gitFolder1 "\" folderProject "\" folderProjetoOficialProjectName "\nodes.html")  
            Run, "chrome.exe" "%gitFolder1%\%folderProject%%slash%%folderProjetoOficialProjectName%\nodes.html"
          if FileExist(gitFolder1 "\" folderProject "\" folderProjetoOficialProjectName "\traversing-DOM.html")  
            Run, "chrome.exe" "%gitFolder1%\%folderProject%%slash%%folderProjetoOficialProjectName%\traversing-DOM.html"
          Reload
   }Else{ ; se nao for o www. no dropdown
      ; abrir vs code com a pasta do dropdown
      RunWait, %ComSpec% /c code -n "%gitFolder1%\JS\%foldersJS%", , Hide
       ; abrir index.html
       Run, "chrome.exe" "%gitFolder1%\JS\%foldersJS%\index.html"
   
       if FileExist(gitFolder1 "\" folderProject "\" foldersJS "\index2-doIt.html")  
               Run, "chrome.exe" "%gitFolder1%\JS\%foldersJS%\index2-doIt.html"
   
       if FileExist(gitFolder1 "\" folderProject "\" foldersJS "\nodes.html")  
         Run, "chrome.exe" "%gitFolder1%\JS\%foldersJS%\nodes.html"
       if FileExist(gitFolder1 "\" folderProject "\" foldersJS "\traversing-JS.html")  
         Run, "chrome.exe" "%gitFolder1%\JS\%foldersJS%\traversing-JS.html"
   }
Return





/*
SCRIPTS Bootstrap TEMPLATE
*/
/* OpenBootstrapFolder:
   Gui, Submit, NoHide
   needle := "iD)^\Q" . escapeDropdownItem . "\E?$"
   regexp := RegExMatch(foldersBootstrap, needle)
   ; msgbox %escapeDropdownItem%
   ; msgbox %SitesBootstrap%
   ; msgbox %regexp%
   ; msgbox %needle%
   if(RegExMatch(foldersBootstrap, needle)){
      Notify().AddWindow("Para abrir a pasta de um projeto você precisa criar um projeto antes",{Time:3000,Icon:28,Background:"0x990000",Title:"OPS!",TitleSize:15, Size:15, Color: "0xCDA089", TitleColor: "0xE1B9A4"},,"setPosBR") ;
   }else{
      Run, "%gitFolder1%\Bootstrap\%foldersBootstrap%\"
   }
Return

SitesBootstrap:
{
         ControlGetText, Eingabe,, ahk_id %SitesBootstrapID%
         ControlGet, Liste, List, , , ahk_id %SitesBootstrapID%
         ; msgbox %Liste%
         ; msgbox %Eingabe%
         ; If ( !GetKeyState("Delete") && !GetKeyState("BackSpace") && RegExMatch(Liste, "`nmi)^(www\.)?(\Q" . Eingabe . "\E.*)$", Match)) {
         If ( !GetKeyState("Delete") && !GetKeyState("BackSpace") && RegExMatch(Liste, "`nmi)^(\Q" . Eingabe . "\E.*)$", Match)) {
            ; msgbox %match%
            ; msgbox %match1% ; armazena o www.
            ; msgbox %match2% ; armazena o restante sem o www.
            ControlSetText, , %Match%, ahk_id %SitesBootstrapID% ; insere o texto no combobox
            Selection := StrLen(Eingabe) | 0xFFFF0000 ; tamanho do texto do match
            ; msgbox %Selection%
            SendMessage, CB_SETEDITSEL := 0x142, , Selection, , ahk_id %SitesBootstrapID% ; colocar o cursor do mouse selecionando o texto do match
         } Else {
            CheckDelKey = 0
            CheckBackspaceKey = 0
         }
         return
}
ExecuteBootstrap:
   Gui, Submit, NoHide
   
         folderProject := StrSplit(BootstrapProjectName, "-")[1] ; palavra antes do traço
         folderdomProjectName := RegexReplace(StrSplit(domProjectName, "-",,2)[2], "-{1,}", "\") ; todo o resto da palavra após o 1º - 
         ; caso vc insira nome sem - no input o slash igual a nada para não colocar / no script dentro dos template html..
         if(folderBootstrapProjectName == ""){
            slash := ""
         }
   ; se for o www. selecionado no dropdown
   if(RegExMatch(foldersBootstrap, "i)" escapeDropdownItem "\?")){ ; o escapeDropdownItem fica com o | no final 
   
         FileCreateDir, %gitFolder1%\%folderProject%\%folderBootstrapProjectName%\
      ; cria um arquivo .Bootstrap com nome do input do usuario se o arquivo não existe ainda
   
   ; criar arquivo .Bootstrap
      if !FileExist(gitFolder1 "\" folderProject "\" folderBootstrapProjectName "\" BootstrapProjectName ".js")  
         {
            Notify().AddWindow("Arquivo não existe, vamos criar!",{Time:2000,Icon:28,Background:"0x990000",Title:"OPS!",TitleSize:15, Size:15, Color: "0xCDA089", TitleColor: "0xE1B9A4"},,"setPosBR") ;
   
              ; IF TEMPLATE/HTML/Bootstrap    
                  if(RegExMatch(BootstrapProjectName, "im)^HTML-.*|.*Bootstrap.*|.*empty.*|.*template.*") != 0)
                  {
                        FileAppend, %jsBootstrapTemplate1%, %gitFolder1%\%folderProject%%slash%%folderBootstrapProjectName%\%BootstrapProjectName%.js
         
                        if !FileExist(gitFolder1 "\" folderProject "\" folderBootstrapProjectName "\index.html")
                           {
                              FileAppend, %htmlCleanTemplate1%, %gitFolder1%\%folderProject%%slash%%folderBootstrapProjectName%\index.html
                           }
                  }
         }
   
         Sleep, 700
         msgbox %slash%
         ; abrir vs code com a pasta criada
         RunWait, %ComSpec% /c code -n "%gitFolder1%\%folderProject%%slash%%folderBootstrapProjectName%", , Hide
   
         Sleep, 700
         ; abrir index.html
         Run, "chrome.exe" "%gitFolder1%\%folderProject%%slash%%folderBootstrapProjectName%\index.html"
   
          if FileExist(gitFolder1 "\" folderProject "\" folderBootstrapProjectName "\index2-doIt.html")  
                  Run, "chrome.exe" "%gitFolder1%\%folderProject%%slash%%folderBootstrapProjectName%\index2-doIt.html"
   
          if FileExist(gitFolder1 "\" folderProject "\" folderBootstrapProjectName "\nodes.html")  
            Run, "chrome.exe" "%gitFolder1%\%folderProject%%slash%%folderBootstrapProjectName%\nodes.html"
          if FileExist(gitFolder1 "\" folderProject "\" folderBootstrapProjectName "\traversing-DOM.html")  
            Run, "chrome.exe" "%gitFolder1%\%folderProject%%slash%%folderBootstrapProjectName%\traversing-DOM.html"
          Reload
   }Else{ ; se nao for o www. no dropdown
      ; abrir vs code com a pasta do dropdown
      RunWait, %ComSpec% /c code -n "%gitFolder1%\JS\%foldersJS%", , Hide
       ; abrir index.html
       Run, "chrome.exe" "%gitFolder1%\JS\%foldersJS%\index.html"
   
       if FileExist(gitFolder1 "\" folderProject "\" foldersJS "\index2-doIt.html")  
               Run, "chrome.exe" "%gitFolder1%\JS\%foldersJS%\index2-doIt.html"
   
       if FileExist(gitFolder1 "\" folderProject "\" foldersJS "\nodes.html")  
         Run, "chrome.exe" "%gitFolder1%\JS\%foldersJS%\nodes.html"
       if FileExist(gitFolder1 "\" folderProject "\" foldersJS "\traversing-JS.html")  
         Run, "chrome.exe" "%gitFolder1%\JS\%foldersJS%\traversing-JS.html"
   }
Return */