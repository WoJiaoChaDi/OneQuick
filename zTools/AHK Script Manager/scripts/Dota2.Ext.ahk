#maxThreadsPerHotkey, 2    ;
banana:=0    ;
bananb:=0    ;
bananc:=0    ;
banand:=0    ;
banane:=0    ;

;�Զ�����
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

;���ͷ�������
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

;���ͷ������루�ڷ����б��У�
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


; ���������
^Numpad0::
    bananb:=!bananb
    
    while (bananb=1)
    {
        MouseClick, left
        sleep, 2000
    }

return

;���ζ���ֹ�ر�
^NumpadDiv::

    banane:=!banane

    if(banane=1){
       MsgBox ����
    }else{
       MsgBox �ر�
    }
    
    while (banane=1)
    {

       loop, 1 {
	MouseMove, 0, -10, ,R
	MouseMove, 0, 10, ,R
        }
        sleep, 5000
    }


; ���������d
^Numpad1::
        MouseClick, left, , , , , D
return

; ���������W
^Numpad2::
        MouseClick, left, , , , , U
return

;google ����
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

