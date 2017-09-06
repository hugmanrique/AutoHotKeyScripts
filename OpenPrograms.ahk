#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
Menu, Tray, Icon, shell32.dll, 16 ; change icon to laptop thingy

#IfWinActive

; Opens up Chrome
^numpad1:: ; Ctrl + 1
IfWinNotExist, ahk_exe chrome.exe
  Run, "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
if WinActive("ahk_exe chrome.exe")
  ; Switch between tabs (Ctrl+Tab)
  Send ^{tab}
else
  WinActivate ahk_class Chrome_WidgetWin_1
Return

; Explorer
^numpad2:: ; Ctrl + 2
IfWinNotExist, ahk_class CabinetWClass
  Run, explorer.exe
GroupAdd, hugExplorers, ahk_class CabinetWClass
if WinActive("ahk_exe explorer.exe")
  GroupActivate, hugExplorers, r
else
  ; Switch between open explorers
  WinActivate ahk_class CabinetWClass
Return

; VS Code
^numpad3:: ; Ctrl + 3
IfWinNotExist, ahk_exe Code.exe
  Run, "C:\Program Files\Microsoft VS Code\Code.exe"
WinActivate ahk_exe Code.exe
Return

; Tweeten
^numpad4:: ; Ctrl + 4
IfWinNotExist, ahk_exe tweeten.exe
  Run, "D:\Users\Hugo\AppData\Local\Tweeten\tweeten.exe"
WinActivate ahk_exe tweeten.exe
Return

; Discord Canary
^numpad5:: ; Ctrl + 5
IfWinNotExist, ahk_exe DiscordCanary.exe
  Run, "D:\Users\Hugo\AppData\Local\DiscordCanary\Update.exe"
WinActivate ahk_exe DiscordCanary.exe
Return