#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


;渲染菜单完成后，执行下一行代码
gosub,TRAYMENU

;每个热键字符串最多存在的实例数量
#maxThreadsPerHotkey, 1    


;========================================================================================o|
;                                      临时用快捷键                                      ;|
;                                       google新闻                                       ;|
;========================================================================================o|
;~ ^Numpad3::
    ;~ Send ^c
    ;~ Run https://www.google.com.hk/search?newwindow=1&safe=strict&tbm=nws&q=%clipboard%&oq=%clipboard%
    ;~ Sleep 800
    ;~ Send ^f
    ;~ Sleep 500
    ;~ Send ^v
    ;~ MouseClick, left, 130, 400
    ;~ MouseMove, 770, 588
;~ return

;========================================================================================o|
;                                      鼠标晃动防止息屏                                  ;|
;========================================================================================o|
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


;~ ~F2::
    ;~ Run, C:\Shortcut\git-bash.exe.lnk
;~ Return

;~ ~Enter::
    ;~ Sleep 200
    ;~ Send {Down}{F2}
    ;~ Sleep 200
    ;~ Send {Right}_
;~ Return



;~ 1:: 
    ;~ Send {Ctrl Down}{Shift Down}{Right}{Ctrl Up}{Shift Up}
    ;~ Send {Ctrl Down}c{Ctrl Up}
    ;~ Send {Tab}{Ctrl Down}v{Ctrl Up}
    ;~ Sleep 50
    ;~ Send {Alt Down}{tab}{Alt Up}
    ;~ Sleep 90
    ;~ Send {Ctrl Down}v{Ctrl Up}
    ;~ MouseMove, 593, 344
;~ return


;~ 2:: 
    ;~ Send {Ctrl Down}{Shift Down}{Right}{Ctrl Up}{Shift Up}
    ;~ Send {Ctrl Down}c{Ctrl Up}
    ;~ Send {Tab 3}{Ctrl Down}v{Ctrl Up}
    ;~ Sleep 50
    ;~ Send {Alt Down}{tab}{Alt Up}
    ;~ Sleep 90
    ;~ Send {Ctrl Down}v{Ctrl Up}
    ;~ MouseMove, 593, 344
;~ return

;~ 3::
    ;~ Send {Ctrl Down}c{Ctrl Up}
    ;~ Send {Alt Down}{tab}{Alt Up}
    ;~ Sleep 100
    ;~ Send {Tab}{Ctrl Down}v{Ctrl Up}
;~ return

;~ 4::
    ;~ MouseClick, left, 531, 279
    ;~ Send {Down}
    ;~ MouseClick, left, 356, 395
;~ return

;~ F4::
    ;~ if !DllCall("User32\OpenInputDesktop","int",0*0,"int",0*0,"int",0x0001L*1)
    ;~ {
    ;~ run, cmd
    ;~ }
;~ return


;~ Minutes:=0.5                    ;检测的分钟数
;~ SetTimer, CheckTimeIdle, 1000   ;重新检测间隔
;~ return

;~ CheckTimeIdle:
;~ If (A_TimeIdle>=Minutes*60*1000)
      ;~ ;需要运行的脚本
;~ return

;~ $RButton::
    ;~ Send {Shift Down}
    ;~ Send {RButton}
    ;~ Sleep 1000
    ;~ Send {LButton}
    ;~ Send {Shift Up}
;~ return

;~ global clickNum := 1

;~ RButton::
    ;~ if(clickNum == 1)
    ;~ {
        ;~ Send a
        ;~ clickNum += 1
    ;~ } else if (clickNum=2)
    ;~ {
        ;~ Send b
        ;~ clickNum +=1
    ;~ } else if (clickNum=3)
    ;~ {
        ;~ Send c
        ;~ clickNum = 1
    ;~ }
;~ return

Esc::ExitApp

;渲染菜单
TRAYMENU:
    Menu,Tray,Tip, 测试小脚本		;鼠标弹窗
    Menu,TRAY,Icon, %A_ScriptDir%\..\resources\script.ico, 1, 0  ;图标
return
