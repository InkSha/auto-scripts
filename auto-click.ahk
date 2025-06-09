#Requires AutoHotkey v2.0

global button := ""

AutoClick() {
  global button

  if button != "" {
    click(button)
    SetTimer(AutoClick, -Random(150, 1000))
  }
}

#Numpad1:: ; Win + 1
{
  global button := "L"

  SetTimer(AutoClick, -Random(150, 1000))
}

#Numpad2:: ; Win + 2
{
  global button := "R"

  SetTimer(AutoClick, -Random(150, 1000))
}

#Numpad3:: ; Win + 3
{
  global button := "DL"

  SendEvent "{LButton down}"
}

#Numpad4:: ; Win + 4
{
  global button := "DR"

  SendEvent "{RButton down}"
}

#NumpadDot:: ; Win + .
{
  global button

  if button == "DR" {
    SendEvent "{RButton up}"
  }
  else if button == "DL" {
    SendEvent "{LButton up}"
  }

  button := ""
}
