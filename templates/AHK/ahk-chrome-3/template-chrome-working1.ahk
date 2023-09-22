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
website := "wappalyzer"

; Ignorar o erro que o ahk dá e continuar executando o script
; ComObjError(false)


; script começa aqui

Sleep, 500 ; esse sleep que salvou o WAITFORLOAD
PageInst := Chrome.GetPageByTitle("Adswerve ", "contains")
PageInst.WaitForLoad()
msgbox % Chrome.Jxon_Dump(PageInst.Evaluate("alert(document.getElementById('ap-advanced-toggle-label'))"))
 
   