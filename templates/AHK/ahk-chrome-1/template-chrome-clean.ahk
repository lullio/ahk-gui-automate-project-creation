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
website := "https://www.reddit.com/r/Autohotkey"



page := Chrome.GetPageByURL("https://www.reddit.com/r/Autohotkey")
if(!Chrome.GetPageByURL("https://www.reddit.com/r/Autohotkey")){
   ChromeInst := new Chrome(profileName,website,"--remote-allow-origins=* --headless -disable-gpu",chPath)
}
Sleep, 600
if !IsObject(page){
   Msgbox, that wasn't an object
   ExitApp
}

; retorna 1 link (href)
js = [].filter.call(document.querySelectorAll("div h3"), (e) => e.innerText.includes("AHK"))[0].closest("a").href
Sleep, 800
page.WaitForLoad()
; msgbox em branco, ahk nao entende objetos, page.Evaluate retorna um objeto
msgbox % page.Evaluate(js)
msgbox % Chrome.Jxon_Dump(page.Evaluate(js))