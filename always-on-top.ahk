#Requires AutoHotkey v2.0

^!+T:: ; Ctrl + Alt + Shift + T
{
  win := WinGetID("A")
  WinSetAlwaysOnTop(-1, win)
}
