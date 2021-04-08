Gui, Add, Text, x22 y19 w100 h30 +Center, 提醒时间
Gui, Add, Text, x22 y69 w100 h30 +Center, 网络名称

;~ v给控件命名，后面用v后面的名称找空间
Gui, Add, Edit, x142 y19 w100 h30 +Center vEdit01, 18:00
Gui, Add, Edit, x142 y69 w100 h30 +Center vEdit02, 以太网

;~ 点击空间后，运行g标签，指向g后面的标签，即MyButton
Gui, Add, Button, x82 y119 w100 h30 gMyButton, 确定
;~ 如果没有g标签，则默认是 组件+名字的标签，即 Button确认
;~ Gui, Add, Button, x82 y119 w100 h30 , 确定

Gui, Show, w271 h173, 设置
return

;~ Button确定:
    ;~ GuiControlGet, Edit02, Name, Edit02
    ;~ MsgBox, %Edit02%
;~ return

MyButton:
    ;~ 寻找Edit01命名的控件,将值赋值给editVal01
    GuiControlGet, editVal01, , Edit01
    MsgBox, %editVal01%
    
    ;~ 寻找Edit02命名的控件,将值赋值给Edit02
    GuiControlGet, Edit02
    MsgBox, %Edit02%
return

GuiEscape:
GuiClose:
ExitApp