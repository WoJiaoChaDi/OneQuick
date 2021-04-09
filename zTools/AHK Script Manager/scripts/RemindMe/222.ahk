Gui, Add, Text, x22 y25 w100 h30 +Center, 提醒时间
Gui, Add, Text, x22 y69 w100 h30 +Center, 网络名称


;~ v给控件命名，后面用v后面的名称找空间
Gui, Add, Edit, x142 y19 w100 h30 +Center Limit5 vEdit01
Gui, Add, Edit, x142 y69 w100 h30 +Center Limit20 vEdit02

;~ 点击空间后，运行g标签，指向g后面的标签，即MyButton
Gui, Add, Button, x82 y119 w100 h30 , 确定
;~ 如果没有g标签，则默认是 组件+名字的标签，即 Button确认
;~ Gui, Add, Button, x82 y119 w100 h30 , 确定

Gui, Show, w271 h173, 设置
return