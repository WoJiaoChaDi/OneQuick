﻿#maxThreadsPerHotkey, 2    ;

;渲染菜单完成后，执行下一行代码
gosub,TRAYMENU

banana:=0    ;
bananb:=0    ;
bananc:=0    ;
banand:=0    ;
banane:=0    ;

;=================================+++++++++++++++++++++==================================o|
;========================================================================================o|
;                                       Dota2小工具                                      ;|
;                                                                                        ;|
;========================================================================================o|
;                                        自动接受                                        ;|
;========================================================================================o|
^Numpad7::
    ; banana:=!banana .... This assigns banana to the value of NOT (!) banana. so lets
    ; say banana starts out FALSE (0). you then turn banana to NOT FALSE. which is
    ; TRUE (1). so now banana is set to TRUE. and then lets say you toggle it again.
    ; you set banana to NOT TRUE, which is FALSE. banana is now set to FALSE.
    ; .... 1 is true, 0 is false. ! is NOT.
    banana:=!banana

    while (banana=1)
    {
        MouseClick, left, 1290, 700
        sleep, 100
    }
return


;========================================================================================o|
;                                      发送房间邀请                                      ;|
;========================================================================================o|
^Numpad8::
    ; banana:=!banana .... This assigns banana to the value of NOT (!) banana. so lets
    ; say banana starts out FALSE (0). you then turn banana to NOT FALSE. which is
    ; TRUE (1). so now banana is set to TRUE. and then lets say you toggle it again.
    ; you set banana to NOT TRUE, which is FALSE. banana is now set to FALSE.
    ; .... 1 is true, 0 is false. ! is NOT.
    bananc:=!bananc

    while (bananc=1)
    {
        MouseClick, left, 1516, 1251
        sleep, 100
        MouseClick, left, 1516, 1199
        sleep, 100
    }
return


;========================================================================================o|
;                                 发送房间邀请（在房间列表中）                           ;|
;========================================================================================o|
^Numpad9::
    ; banana:=!banana .... This assigns banana to the value of NOT (!) banana. so lets
    ; say banana starts out FALSE (0). you then turn banana to NOT FALSE. which is
    ; TRUE (1). so now banana is set to TRUE. and then lets say you toggle it again.
    ; you set banana to NOT TRUE, which is FALSE. banana is now set to FALSE.
    ; .... 1 is true, 0 is false. ! is NOT.
    banand:=!banand

    while (banand=1)
    {
        MouseClick, left, 1677, 1376
        sleep, 100
        MouseClick, left, 1677, 1331
        sleep, 100
    }
return

;========================================================================================o|
;                                      点击鼠标左键                                      ;|
;========================================================================================o|
^Numpad0::
    bananb:=!bananb

    while (bananb=1)
    {
        MouseClick, left
        sleep, 2000
    }

return

;========================================================================================o|
;                                      鼠标左键按下                                      ;|
;========================================================================================o|
^Numpad1::
        MouseClick, left, , , , , D
return

;========================================================================================o|
;                                      鼠标左键松开                                      ;|
;========================================================================================o|
^Numpad2::
        MouseClick, left, , , , , U
return


;渲染菜单
TRAYMENU:
    Menu,Tray,Tip, Dota2小脚本		;鼠标弹窗
    Menu,TRAY,Icon, %A_ScriptDir%\..\resources\Dota2.ico, 1, 0  ;图标
return
