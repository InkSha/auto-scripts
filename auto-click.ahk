#Requires AutoHotkey v2.0

global button := ""

AutoClick() {
  global button

  if button != "" {
    click(button)
    SetTimer(AutoClick, -Random(150, 1000))
  }
}

F6 & LButton::
{
  global button := "L"

  SetTimer(AutoClick, -Random(150, 1000))
}

F6 & RButton:: {
  global button := "R"

  SetTimer(AutoClick, -Random(150, 1000))
}

F8 & LButton:: {
  global button := "DL"

  SendEvent "{LButton down}"
}

F8 & RButton:: {
  global button := "DR"

  SendEvent "{RButton down}"
}

F11:: {
  global button

  if button == "DR" {
    SendEvent "{RButton up}"
  }
  else if button == "DL" {
    SendEvent "{LButton up}"
  }

  button := ""
}
