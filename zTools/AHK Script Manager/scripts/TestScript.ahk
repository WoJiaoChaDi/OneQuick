#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


;渲染菜单完成后，执行下一行代码
gosub,TRAYMENU



global banane := 0



;~ Minutes:=0.1                    ;检测的分钟数
;~ SetTimer, CheckTimeIdle, 1000   ;重新检测间隔

;~ CheckTimeIdle:
;~ If (A_TimeIdle>=Minutes*60*1000)
      ;~ ;需要运行的脚本
      ;~ MsgBox, NoOption
;~ return


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
;每个热键字符串最多存在的实例数量
#maxThreadsPerHotkey, 2
;^NumpadDiv::
^RButton::
    banane:=!banane
    if(banane=1){
        
        ToolTip, 开启
       
        while (banane=1)
        {
           loop, 1 {
                MouseMove, 0, -10, ,R
                MouseMove, 0, 10, ,R
                MouseMove, 5, 0, ,R
                MouseMove, -5, 0, ,R
                
                ;由于ahk新启动一个线程的时候，会暂停上一个线程。待新线程结束后，继续执行上一个线程。
                ;所以第二个更改状态的线程改了flag后，需要上一个线程快速判断是否退出。
                
                ;1.如果改用Sleep 5000。 在第二个线程结束后，第一个线程还在sleep中，开启第三个线程。
                ;2.三个线程无限循环，第一个线程等待第三个线程，导致两个线程占用了两个实力数量。
                ;3.最终导致无法再开启新的更改状态的flag线程
                loop, 10{
                    sleep, 10      ; 50毫秒，手动按热键几乎无法插入在50毫秒内
                    if(banane!=1){
                        Break
                    }
                }                           
            }
        }
    }else{
        ToolTip, 关闭
        SetTimer, RemoveToolTip, -2000
    }
return

#maxThreadsPerHotkey, 1

RemoveToolTip:
    ToolTip
return



;~ Anki制卡翻译
;~ 1::     ;~ 在Anki中向左划取一个单词，复制，向下切换粘贴，切换到欧陆词典，移动鼠标Manager
    ;~ Send {Ctrl Down}{Shift Down}{Left}{Ctrl Up}{Shift Up}   
    ;~ Send {Ctrl Down}c{Ctrl Up}
    ;~ Send {Tab}{Ctrl Down}v{Ctrl Up}
    ;~ Sleep 50
    ;~ Send {Alt Down}{tab}{Alt Up}
    ;~ Sleep 90
    ;~ Send {Ctrl Down}v{Ctrl Up}
    ;~ MouseMove, 593, 344             ;欧陆词典中的RelaPos
;~ return

;~ 2::     ;~ 在Anki中向右划取一个单词，复制，向下切换x3粘贴，切换到欧陆词典，移动鼠标Manager
    ;~ Send {Ctrl Down}{Shift Down}{Right}{Ctrl Up}{Shift Up}
    ;~ Send {Ctrl Down}c{Ctrl Up}
    ;~ Send {Tab}{Ctrl Down}v{Ctrl Up}
    ;~ Sleep 50
    ;~ Send {Alt Down}{tab}{Alt Up}
    ;~ Sleep 90
    ;~ Send {Ctrl Down}v{Ctrl Up}
    ;~ MouseMove, 593, 344
;~ return  

;~ 3::     ;~ 从欧陆词典复制到Anki
    ;~ Send {Ctrl Down}c{Ctrl Up}
    ;~ Send {Alt Down}{tab}{Alt Up}
    ;~ Sleep 100
    ;~ Send {Tab}{Ctrl Down}v{Ctrl Up}
;~ return

;~ 4::     ;~ 在Anki中选择下一个单词，并定位
    ;~ MouseClick, left, 577, 613  ;最后一个单词位置
    ;~ Send {Down}
    ;~ MouseClick, left, 575, 746  ;第一行输入框位置
;~ return



;~ F1::
    
        ;~ Send ^+c    
        ;~ Sleep 500
        ;~ Send {down}
;~ return

;~ ~F2::
    ;~ loop, 2 {
                ;~ MouseMove, 0, -10, ,R
                ;~ ToolTip, 11 . banane=%banane% . inFlag=%inFlag% . contiFlag=%contiFlag%
                ;~ sleep, 1000
                ;~ ToolTip, 22 . banane=%banane% . inFlag=%inFlag% . contiFlag=%contiFlag%
                ;~ sleep, 1000
                ;~ ToolTip, 33 . banane=%banane% . inFlag=%inFlag% . contiFlag=%contiFlag%
                ;~ sleep, 1000
                ;~ ToolTip, 44 . banane=%banane% . inFlag=%inFlag% . contiFlag=%contiFlag%
                ;~ sleep, 1000
                ;~ ToolTip
                ;~ MouseMove, 0, 10, ,R
            ;~ }
;~ Return

;~ F4::
    ;~ if !DllCall("User32\OpenInputDesktop","int",0*0,"int",0*0,"int",0x0001L*1)
    ;~ {
    ;~ run, cmd
    ;~ }
;~ return

;~ ~Enter::
    ;~ Sleep 200
    ;~ Send {Down}{F2}
    ;~ Sleep 200
    ;~ Send {Right}_
;~ Return



;& 连接快捷键，会让& 之前的按键原本的功能失效
;~ Numpad0 & MButton::Send a
;~ Numpad0::Send {Numpad0}


;家里台式机，JJDown 唧唧全屏，自动化 脚本
;~ 1::
    ;~ MouseClick, left, 50, 182
    ;~ Sleep, 200
    ;~ MouseClick, left, 336, 79
    ;~ Sleep, 200
    ;~ MouseClick, left, 329, 149
    ;~ Sleep, 200
    ;~ MouseClick, left, 204, 473
    ;~ Sleep, 200
    ;~ MouseClick, left, 369, 29
    ;~ Sleep, 200
    ;~ Send, !{tab}
;~ return




; 环境: AutoHotkey 1.1.05.01 Unicode, Windows XP

;~ 1::
    ;~ ahkcs := "http://www.baidu.com"
    ;~ MsgBox, % "上网方式: " W_InternetGetConnectedState() "`n连接状态: " W_IsNetworkAlive() "`n"
    ;~ MsgBox, % W_InternetCheckConnection(ahkcs) ? "成功连接到 baidu.com":"连接失败"
;~ Return

;        判断网络连接方式
W_InternetGetConnectedState()
{
        INTERNET_CONNECTION_MODEM := 0x01
        INTERNET_CONNECTION_LAN := 0x02
        INTERNET_CONNECTION_PROXY := 0x04
        
        lpdwFlags := ""        ; 上网方式
        IsOnline := TRUE        ; 是否在线
        dwReserved := 0
        
        IsOnline := DllCall("Wininet.dll\InternetGetConnectedState", "UInt*", lpdwFlags, "Uint", dwReserved, "Int")
        if (IsOnline)        ; 在线  
        {  
                if ((lpdwFlags & INTERNET_CONNECTION_MODEM) = INTERNET_CONNECTION_MODEM)
                {
                        return, "Local system uses a modem to connect to the Internet."
                }
                if ((lpdwFlags & INTERNET_CONNECTION_LAN) = INTERNET_CONNECTION_LAN)
                {
                        return, "Local system uses a local area network to connect to the Internet."
                }
                if ((lpdwFlags & INTERNET_CONNECTION_PROXY) = INTERNET_CONNECTION_PROXY)
                {
                        return, "Local system uses a proxy server to connect to the Internet."
                }
        }
        else
                return, "Local system is in offline mode."
}

;        判断当前网络连接状态
W_IsNetworkAlive()
{
    NETWORK_ALIVE_LAN := 0x1
    NETWORK_ALIVE_WAN := 0x2
    NETWORK_ALIVE_AOL := 0x4
        
          lpdwFlags := ""        ; 上网方式
        IsOnline := TRUE        ; 是否在线

        IsOnline := DllCall("Sensapi.dll\IsNetworkAlive", "UInt*", lpdwFlags)
        if A_LastError
                return, "ERROR"
        if (IsOnline)
        {  
                if ((lpdwFlags & NETWORK_ALIVE_LAN) = NETWORK_ALIVE_LAN)
                {
                        return, "NETWORK_ALIVE_LAN"
                }
                if ((lpdwFlags & NETWORK_ALIVE_WAN) = NETWORK_ALIVE_WAN)
                {
                        return, "NETWORK_ALIVE_WAN"
                }
                if ((lpdwFlags & NETWORK_ALIVE_AOL) = NETWORK_ALIVE_AOL)
                {
                        return, "NETWORK_ALIVE_AOL"
                }
        }
        else
                return, "Local system is in offline mode."
}

;        判断是否可以与某个 URL 建立连接
W_InternetCheckConnection(lpszUrl)
{
        FLAG_ICC_FORCE_CONNECTION := 0x1
        dwReserved := 0x0
        return, DllCall("Wininet.dll\InternetCheckConnection", "Ptr", &lpszUrl, "UInt", FLAG_ICC_FORCE_CONNECTION, "UInt", dwReserved, "Int")
}


;渲染菜单
TRAYMENU:
    Menu,Tray,Tip, 测试小脚本		;鼠标弹窗
    Menu,TRAY,Icon, %A_ScriptDir%\..\resources\script.ico, 1, 0  ;图标
return

;~ $R::
    ;~ send 3
    ;~ sleep 50
    ;~ send r
;~ return