^!F4:: ;
Send, ^c ;
ClipWait ;
SearchQuery := Clipboard ;
; Run, https://www.google.com/search?q=%SearchQuery%
Run, https://www.google.com/search
return
