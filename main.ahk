#Requires AutoHotkey v2.0

; Win + Alt + Shift

F8::
{
  if !WinExist("无标题 - Notepad") {
    Run "Notepad"
  }

  WinActivate("无标题 - Notepad")
  WinWaitActive("无标题 - Notepad")

  SendInput ("Hello World1")
  SendInput ("Hello World2")
  SendInput ("Hello World3")
  SendInput ("Hello World4")
}

F9:: {
  ; MsgBox("Exit App", "Exit Title")
  ExitApp
}
