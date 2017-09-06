#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
Menu, Tray, Icon, shell32.dll, 16 ; change icon to laptop thingy

#IfWinActive

; Opens up Chrome
^numpad1::
if WinActive("ahk_class Chrome_WidgetWin_1")
  ; Switch between tabs (Ctrl+Tab)
  Send ^{tab}
else
  WinActivate ahk_class Chrome_WidgetWin_1
Return

; Explorer
^numpad2::
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
^numpad3::
IfWinNotExist, ahk_exe Code.exe
  Run, Code.exe
WinActivate ahk_exe Code.exe
Return 