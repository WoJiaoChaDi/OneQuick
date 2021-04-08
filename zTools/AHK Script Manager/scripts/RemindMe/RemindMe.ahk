#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Persistent ;脚本运行完毕后，保持后台运行
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


;渲染菜单完成后，执行下一行代码
gosub,TRAYMENU
global setTime := 1
global internetName := 1
global flag := 1
global flag := 1

SetTimer, remindMe, 1000		;定时器定时执行截图方法  单位毫秒

!1::
	IniRead, setTime, RemindConfig.ini, para, remindTime
    IniRead, internetName, RemindConfig.ini, para, netName
	
	
	ToolTipOnMouse(setTime)
return

;~ 提醒方法
remindMe(){
    
    IniRead, setTime, RemindConfig.ini, para, remindTime
    IniRead, internetName, RemindConfig.ini, para, netName
    
    ;~ 获取当前时间
    nowTime = %A_Hour%:%A_Min%
    ;~ ToolTip, %A_ScriptDir%-%setTime%-%internetName%---%nowTime%
    
    if(nowTime = setTime && flag = 1){
		ToolTipOnMouse(A_Hour . ":" . A_Min)
        
        flag:=!flag
        confirmWin()
        
        sleep, 80000
        flag:=!flag
        
    }
}

;~ 确认按钮
confirmWin(){
    msg = 现在时间是 %A_Hour%:%A_Min%:%A_Sec% ，是否切换网络？
    MsgBox, 4,, %msg%
    IfMsgBox Yes
        closeInternet()
}

;~ 关闭按钮
closeInternet(){

	MouseGetPos, OutputVarX, OutputVarY
    ToolTip, 即将打开网络连接，等待5秒, % OutputVarX, % OutputVarY-20
    SetTimer, RemoveToolTip, -5000
    run, ncpa.cpl
    sleep, 5000
    
    activeNetwork()
}

;~ 激活网络连接窗口
activeNetwork(){
    IfWinExist, 网络连接
    {
		ToolTipOnMouse("找到网络连接窗口")
        WinActivate
        Send, %internetName%
        sleep, 500
        Send, {AppsKey}
        sleep, 500
        Send, {Down}
        sleep, 500
        Send, {Enter}
        
		ToolTipOnMouse(internetName . "切换成功")
    } else {
	ToolTipOnMouse("未找到网络连接窗口")
    }
}

;~ 移除提示
RemoveToolTip:
    ToolTip
return

;~ 提示位移
ToolTipOnMouse(text){
	MouseGetPos, OutputVarX, OutputVarY
	ToolTip, %text%, % OutputVarX, % OutputVarY-20
	SetTimer, RemoveToolTip, -2000
}


EXIT:
ExitApp

;渲染菜单
TRAYMENU:
    Menu,Tray,Tip, 自动切换网络		;鼠标弹窗
    Menu,TRAY,Icon, %A_ScriptDir%\remindMe.ico, 1, 0  ;图标
	Menu,TRAY,NoStandard
	Menu,TRAY,DeleteAll
	;~ Menu,TRAY,Add
	Menu,TRAY,Add, 手动切换网络 , closeInternet
	Menu,TRAY,Add, 退出（&E）,EXIT
return

