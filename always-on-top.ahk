#Requires AutoHotkey v2.0

F6::
{
  win := WinGetID("A")
  WinSetAlwaysOnTop(-1, win)
}
