#Include, <Default_Settings>
if not A_IsAdmin
   Run *RunAs "%A_ScriptFullPath%" ; (A_AhkPath is usually optional if the script has the .ahk extension.) You would typically check  first.p
/* ESTILO E ICONE DO SCRIPT
*/
Menu, Tray, Icon, C:\Windows\system32\imageres.dll,312 ;Set custom Script icon

DLLPath=C:\Users\%A_UserName%\Documents\Github\AHK\secondary-scripts\ahk-styles\styles\USkin.dll ;Location to the USkin.dll file
StylesPath=C:\Users\%A_UserName%\Documents\Github\AHK\secondary-scripts\ahk-styles\styles ;location where you saved the .msstyles files

; melhores dark: cosmo, lakrits
; melhores light: MacLion3, Milikymac, Panther, Milk, Luminous, fanta, invoice
SkinForm(DLLPath,Apply, StylesPath "\lakrits.msstyles") ; cosmo. msstyles


	; Gosub, Gui
; SkinForm(DLLPath,"0", StylesPath . CurrentStyle)	

SkinForm(DLLPath,Param1 = "Apply", SkinName = ""){
	if(Param1 = Apply){
		DllCall("LoadLibrary", str, DLLPath)
		DllCall(DLLPath . "\USkinInit", Int,0, Int,0, AStr, SkinName)
	}else if(Param1 = 0){
		DllCall(DLLPath . "\USkinExit")
	}
}

/* SCRIPT COMEÇA AQUI
*/
global gitFolder1

 ; VARIABLE gitFolder1
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


 ; VARIABLE vscodeFolder
   
   vscodeFolder := "C:\Users\Felipe\AppData\Local\Programs\Microsoft VS Code\Code.exe"
   IfNotExist, %vscodeFolder%
      vscodeFolder = "C:\Users\felipe\AppData\Local\Programs\Microsoft VS Code\Code.exe"
   IfNotExist, %vscodeFolder%
      vscodeFolder = "C:\Program Files\Microsoft VS Code\Code.exe"
   IfNotExist, %vscodeFolder%
      vscodeFolder = "C:\Users\Estudos\AppData\Local\Programs\Microsoft VS Code\Code.exe"
   IfNotExist, %vscodeFolder%
      vscodeFolder = "C:\Program Files\Microsoft VS Code"


 ; Other Variables and Scape Variables
   escapePercent := "%"
   slash := "\"
   escapeDropdownItem := "www.|"
/*
   DROPDOWN - LIST OF FOLDERS NAME
   */
   Linguagens := ""
   if FileExist("templates")  
   {
      Loop, Files, templates\*.*, D
      {
         SplitPath, A_LoopFileFullPath, FolderName
         Linguagens .= FolderName "|"
         ; msgbox %Linguagens%
      }
      ; Linguagens := RTrim(Linguagens, "|")
      ; Linguagens := StrReplace(Linguagens, "|", "||",, 1) ; without default item
      ; Linguagens := StrReplace(Linguagens, "|", "||",, 1) ; make first item default
   }Else{
      Linguagens := "www.||"
   }

Gui, Add, ComboBox,vLinguagem gLinguagemSelecionada, %Linguagens%
Gui, Add, ComboBox, x+10 vTemas gTemaSelecionado, 
Gui, Add, ComboBox, x+10 vProjetos gProjetoSelecionado, criar-novo||
Gui, Add, Button, x+10 gOpenProject vBtnProjeto, Abrir Projeto 
Gui, Add, Button, x+10 gOpenFolder, Abrir Pasta 
Gui Show
GuiControl,Choose, Linguagem, DOM
GoSub, LinguagemSelecionada
GoSub, TemaSelecionado
Return

count := 0
LinguagemSelecionada:
Gui Submit, NoHide
; msgbox %Linguagem%
if FileExist("templates\" Linguagem "\")  
   {
      Topicos := ""
      Loop, Files, templates\%Linguagem%\*.*, D
      {
         SplitPath, A_LoopFileFullPath, FolderName
         Topicos .= FolderName "|"
         ; msgbox %Topicos%
      }
      ; Topicos := RTrim(Topicos, "|")
      ; Topicos := StrReplace(Topicos, "|", "||",, 1) ; without default item
      ; Topicos := StrReplace(Topicos, "|", "||",, 1) ; make first item default
   }Else{
      Topicos := "|"
   }
GuiControl,, Temas, | ; Limpar Combobox
GuiControl,, Temas, %Topicos%
GuiControl,Choose, Temas, 1
Return

TemaSelecionado:
Gui Submit, NoHide

; msgbox %Linguagem%
; msgbox %Temas%
if FileExist("templates\" Linguagem "\" Temas "\")  
   {
      ProjectName := "criar-novo|"
      Loop, Files, templates\%Linguagem%\%Temas%\projetos\*.*, D
      {
         SplitPath, A_LoopFileFullPath, FolderName

         ProjectName .= FolderName "|"
         ; msgbox %ProjectName%
      }
   }Else{
      ProjectName := "|"
   }
GuiControl,, Projetos, | ; Limpar Combobox
GuiControl,, Projetos, %ProjectName%
GuiControl,Choose, Projetos, 1
; msgbox %Projetos%
If(Projetos = "criar-novo")
   GuiControl,, BtnProjeto, Criar Projeto
Else
   GuiControl,1:, BtnProjeto, Abrir Projeto
Return

ProjetoSelecionado:
Gui Submit, NoHide
; msgbox %Projetos%
If(Projetos = "criar-novo")
   GuiControl,, BtnProjeto, Criar Projeto
Else
   GuiControl,1:, BtnProjeto, Abrir Projeto
Return

OpenFolder:
Gui Submit, NoHide
Run, templates\%Linguagem%\%Temas%
Return


OpenProject:
Gui Submit, NoHide
; FormatTime, DataCompleta, , dd_MM_yyyy_dddd_H-m-ss
FormatTime, DataCompleta, , dd_MM_yyyy_H-m-ss
; msgbox % DataCompleta
NewFileName := Temas "__" DataCompleta
msgbox % NewFileName
If(Projetos = "criar-novo")
{
   Loop, Files, templates\%Linguagem%\%Temas%\*.*, F
      {
         SplitPath, A_LoopFileFullPath, FileName
         msgbox %FileName%
         FileCreateDir, templates\%Linguagem%\%Temas%\projetos\%DataCompleta%
         FileCopy, templates\%Linguagem%\%Temas%\%FileName%, templates\%Linguagem%\%Temas%\projetos\%DataCompleta%\%FileName%
      }
}
Else
{
   ; abrir vs code com a pasta criada
RunWait, %ComSpec% /c code -n "templates\%Linguagem%\%Temas%\projetos\%Projetos%", , Hide
; Loop em todos arquivos da pasta
Loop, Files, templates\%Linguagem%\%Temas%\projetos\%Projetos%\*.*, F
   {
      SplitPath, A_LoopFileFullPath, FileName
      ; msgbox %FileName%
      ; Se o nome do arquivo incluir ".html", abra o arquivo
      If(InStr(FileName, ".html"))
         Run,  %A_LoopFileFullPath%
   }
 Sleep, 100
}
Return