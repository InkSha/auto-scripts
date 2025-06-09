#Requires AutoHotkey v2.0

TrayTip "脚本启动", "脚本提示", 1

; Ctrl + Alt + Shift + T
#Include always-on-top.ahk
; Win + numeric keyboard 1
; Win + numeric keyboard 2
; Win + numeric keyboard 3
; Win + numeric keyboard 4
; Win + numeric keyboard .
#Include auto-click.ahk
; /ok
#Include quick-word.ahk
; Ctrl + Alt + T
#Include terminal.ahk

; Ctrl + Win + Shift + Q
#^+Q:: {
  TrayTip "脚本退出", "脚本提示", 2
  ExitApp
}
