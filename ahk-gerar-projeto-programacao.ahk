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


; Textos
Gui, Font, S12
Gui, Add, Text, section, Linguagem:
; Lista de linguagens
Gui, Add, ComboBox,vLinguagem gLinguagemSelecionada xs, %Linguagens%

Gui, Add, Text, ys, Tema:
; Lista de Temas (tema da linguagem, ex: DOM)
Gui, Add, ComboBox, y+10 vTemas gTemaSelecionado, 

Gui, Add, Text, ys, Projeto:
; Lista de Projetos (projetos testes que vc criou da linguagem e tema selecionado)
Gui, Add, ComboBox, y+10 vProjetos gProjetoSelecionado, criar-novo||

Gui, Add, Button, x+10 gOpenProject vBtnProjeto +Default, Abrir Projeto 
Gui, Add, Button, x+10 gOpenFolder, Abrir Pasta 
Gui, Show, , Felipe - Praticar com Exercícios de Programação
; Escolher a linguagem DOM ao abrir a GUI
GuiControl,Choose, Linguagem, DOM
GoSub, LinguagemSelecionada
GoSub, TemaSelecionado
; GoSub, ProjetoSelecionado
Return

; Ao selecionar o Dropdown da Linguagem
LinguagemSelecionada:
Gui Submit, NoHide
; msgbox %Linguagem%
; * CAPTURAR TODAS AS PASTAS QUE ESTÃO LOCALIZADAS NA LINGUAGEM SELECIONADA
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
GuiControl,, Temas, %Topicos% ; Alterar itens da lista/dropdown Temas
GuiControl,Choose, Temas, 1 ; Selecionar o primeiro item da lista/dropdown Temas
GoSub, TemaSelecionado
Return

TemaSelecionado:
Gui Submit, NoHide
; msgbox %Linguagem%
; msgbox %Temas%
; * CAPTURAR TODAS AS PASTAS QUE ESTÃO LOCALIZADAS NA LINGUAGEM E TEMA SELECIONADOS
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
GuiControl,, Projetos, %ProjectName% ; Alterar itens da lista/dropdown Projetos
GuiControl,Choose, Projetos, 1 ; Selecionar o primeiro item da lista/dropdown Projetos
/*
   * Se o PROJETO selecionado for "criar-novo", alterar o texto do botão para "Criar Projeto"
*/
If(Projetos = "criar-novo")
   GuiControl,, BtnProjeto, Criar Projeto
Else
   GuiControl,1:, BtnProjeto, Abrir Projeto
Return

; * Ao selecionar um projeto no Dropdown
ProjetoSelecionado:
Gui Submit, NoHide
; msgbox %Projetos%
/*
   * Se o PROJETO selecionado for "criar-novo", alterar o texto do botão para "Criar Projeto"
*/
If(Projetos = "criar-novo")
   GuiControl,, BtnProjeto, Criar Projeto
Else
   GuiControl,1:, BtnProjeto, Abrir Projeto
Return

; * ABRIR PASTA DO PROJETO
OpenFolder:
Gui Submit, NoHide
Run, templates\%Linguagem%\%Temas%
Return

; * ABRIR PROJETO
OpenProject:
Gui Submit, NoHide
; FormatTime, DataCompleta, , dd_MM_yyyy_dddd_H-m-ss ; data com dia da semana
FormatTime, DataCompleta, , dd_MM_yyyy_HH-m-ss
; msgbox % DataCompleta
NewFileName := Temas "__" DataCompleta ; nome do arquivo com data
; msgbox % NewFileName

; * CASO O PROJETO SEJA 'criar-novo', Copiar os arquivos templates para uma nova pasta dentro da pasta 'projetos'
If(Projetos = "criar-novo")
{
   Loop, Files, templates\%Linguagem%\%Temas%\*.*, F
      {
         SplitPath, A_LoopFileFullPath, FileName
         ; msgbox %FileName%
         ; * CRIAR UMA PASTA DENTRO DA PASTA 'projetos' 
         FileCreateDir, templates\%Linguagem%\%Temas%\projetos\%DataCompleta%
         ; * COPIAR OS ARQUIVOS DA PASTA 'templates' para a pasta 'projetos'
         FileCopy, templates\%Linguagem%\%Temas%\%FileName%, templates\%Linguagem%\%Temas%\projetos\%DataCompleta%\%FileName%
         ; * SE OS ARQUIVOS COPIADOS PARA A NOVA PASTA FOREM .HTML, ABRIR ELES
         If(InStr("templates\" Linguagem "\" Temas "\projetos\" DataCompleta "\" FileName, ".html"))
            Run,  % "templates\" Linguagem "\" Temas "\projetos\" DataCompleta "\" FileName
      }
; abrir vs code com a pasta criada
RunWait, %ComSpec% /c code -n "templates\%Linguagem%\%Temas%\projetos\%DataCompleta%", , Hide
}
Else ; * CASO O PROJETO NÃO SEJA 'criar-novo', Abrir o vs code com a pasta do projeto e abrir os arquivos HTML no navegador
{
; abrir vs code com a pasta criada
RunWait, %ComSpec% /c code -n "templates\%Linguagem%\%Temas%\projetos\%Projetos%", , Hide
; Loop em todos arquivos da pasta
Loop, Files, templates\%Linguagem%\%Temas%\projetos\%Projetos%\*.*, F
   {
      SplitPath, A_LoopFileFullPath, FileName
      ; msgbox %FileName%
      ; !Se o nome do arquivo incluir ".html", abra o arquivo
      If(InStr(FileName, ".html"))
         Run,  %A_LoopFileFullPath%
   }
 Sleep, 100
}
Return