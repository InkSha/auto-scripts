#Requires AutoHotkey v2.0

oks := [
  "好的，收到",
  "了解了",
  "明白了",
  "知道了",
  "收到",
  "明白",
  "好的",
  "了解",
  "嗯",
  "好",
  "行",
  "ok",
  "OK",
]
count := oks.Length

::/ok:: {
  index := Random(1, count)
  Send(oks[index])
}
