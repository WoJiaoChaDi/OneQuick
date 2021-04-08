#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Persistent ;脚本运行完毕后，保持后台运行
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
;~ SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


;渲染菜单完成后，执行下一行代码
gosub,TRAYMENU
global flag := 1

SetTimer, remindMe, 5000		;定时器定时执行截图方法  单位毫秒

;~ 提醒方法
remindMe(){
    
    IniRead, setTime, RemindConfig.ini, para, setTime
    IniRead, internetName, RemindConfig.ini, para, internetName
    
    ;~ 获取当前时间
    nowTime = %A_Hour%:%A_Min%
    ;~ ToolTip, %setTime%-%internetName%---%nowTime%
    
    if(nowTime = setTime && flag = 1){
        ToolTip, %A_Hour%:%A_Min%
        SetTimer, RemoveToolTip, -2000
        
        flag:=!flag
        confirmWin()
        
        sleep, 80000
        flag:=!flag
        
    }
}

;~ 确认按钮
confirmWin(){
    msg = 现在时间是 %A_Hour%:%A_Min%:%A_Sec% ，是否断开网络？
    MsgBox, 4,, %msg%
    IfMsgBox Yes
        closeInternet()
}

;~ 关闭按钮
closeInternet(){
    ToolTip, 即将打开网络连接，等待5秒
    SetTimer, RemoveToolTip, -5000
    run, ncpa.cpl
    sleep, 5000
    
    activeNetwork()
}

activeNetwork(){
    IfWinExist, 网络连接
    {
        ToolTip, 找到网络连接窗口
        WinActivate
        Send, %internetName%
        sleep, 500
        Send, {AppsKey}
        sleep, 500
        Send, {Down}
        sleep, 500
        Send, {Enter}
        
        ToolTip, %internetName%断开成功
        SetTimer, RemoveToolTip, -5000
    } else {
        ToolTip, 未找到网络连接窗口
    }
}


RemoveToolTip:
    ToolTip
return

;渲染菜单
TRAYMENU:
    Menu,Tray,Tip, 小提醒		;鼠标弹窗
    Menu,TRAY,Icon, %A_ScriptDir%\remindMe.ico, 1, 0  ;图标
return

