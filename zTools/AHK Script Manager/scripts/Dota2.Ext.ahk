#maxThreadsPerHotkey, 2    ;
banana:=0    ;
bananb:=0    ;
bananc:=0    ;
banand:=0    ;
banane:=0    ;

;自动接受
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

;发送房间邀请
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

;发送房间邀请（在房间列表中）
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


; 点击鼠标左键
^Numpad0::
    bananb:=!bananb
    
    while (bananb=1)
    {
        MouseClick, left
        sleep, 2000
    }

return

;鼠标晃动防止关闭
^NumpadDiv::

    banane:=!banane

    if(banane=1){
       MsgBox 开启
    }else{
       MsgBox 关闭
    }
    
    while (banane=1)
    {

       loop, 1 {
	MouseMove, 0, -10, ,R
	MouseMove, 0, 10, ,R
        }
        sleep, 5000
    }


; 点击鼠标左键d
^Numpad1::
        MouseClick, left, , , , , D
return

; 点击鼠标左键W
^Numpad2::
        MouseClick, left, , , , , U
return

;google 新闻
;^Numpad6::
^Numpad3::
    Send ^c
    Run https://www.google.com.hk/search?newwindow=1&safe=strict&tbm=nws&q=%clipboard%&oq=%clipboard%
    Sleep 800
    Send ^f
    Sleep 500
    Send ^v
    MouseClick, left, 130, 400
    MouseMove, 770, 588
return

