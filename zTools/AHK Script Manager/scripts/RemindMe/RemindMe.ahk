#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance Force
#Persistent ;脚本运行完毕后，保持后台运行
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


;渲染菜单完成后，执行下一行代码
gosub,TRAYMENU

global flag := 1
global autoFlag := OneQuick.GetConfig("autorun", "para")
global setTime := OneQuick.GetConfig("remindtime", "para")
global internetName := OneQuick.GetConfig("netname", "para")


;用于画Gui
global Edit01
global Edit02

SetTimer, remindMe, 1000		;定时器定时执行截图方法  单位毫秒
init()

;~ 初始化
init(){
    autoflag := Regedit.IsAutorun(Regedit.AhkName, Regedit.AhkFullPath)
    if(autoflag){
        Menu, Tray, Check, 开机启动
    }else{
        Menu, Tray, UnCheck, 开机启动
    }
    
    setTime := OneQuick.GetConfig("remindtime", "para")
    internetName := OneQuick.GetConfig("netname", "para")
}

;~ 提醒方法
remindMe(){
    
    ;~ IniRead, setTime, RemindConfig.ini, para, remindtime
    ;~ IniRead, internetName, RemindConfig.ini, para, netname
    
    ;~ 获取当前时间
    nowTime = %A_Hour%:%A_Min%
    ;~ ToolTip, %A_ScriptDir%-%setTime%-%internetName%---%nowTime%
    
    if(nowTime = setTime && flag = 1){
		ToolTipOnMouse(A_Hour . ":" . A_Min)
        
        flag:=!flag
        confirmWin()
        
        ;添加60s睡眠时间，等待这一次分钟数过去
        sleep, 60000
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

;~ 关闭网络按钮
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

;~ 更新设置参数
setPara(){
    Gui, Add, Text, x32 y29 w80 h30 +Right, 提醒时间：
    Gui, Add, Text, x32 y69 w80 h30 +Right, 网络名称：

    paraTime := OneQuick.GetConfig("remindtime", "18:00", "para")
    paraNetNm := OneQuick.GetConfig("netname", "以太网" , "para")
    ;~ v给控件命名，后面用v后面的名称找空间
    Gui, Add, Edit, x112 y25 w100 h20 +Center Limit5 vEdit01, %paraTime%
    Gui, Add, Edit, x112 y65 w100 h20 +Center Limit20 vEdit02, %paraNetNm%

    ;~ 点击空间后，运行g标签，指向g后面的标签，即MyButton
    Gui, Add, Button, x72 y109 w100 h30 gMyButton, 确定
    ;~ 如果没有g标签，则默认是 组件+名字的标签，即 Button确认
    ;~ Gui, Add, Button, x82 y119 w100 h30 , 确定

    Gui, Show, w247 h162, 设置
    return

    ;~ Button确定:
        ;~ GuiControlGet, Edit02, Name, Edit02
        ;~ MsgBox, %Edit02%
    ;~ return

    MyButton:
    
        updateFlag := 1
        ;~ 寻找Edit01命名的控件,将值赋值给editVal01
        GuiControlGet, editVal01, , Edit01
        
        ;~ 判断时间输入格式
        idx_01 := SubStr(editVal01, 1, 1)
        if idx_01 not in 0,1,2
            updateFlag := 0
            
        idx_02 := SubStr(editVal01, 2, 1)
        if idx_02 not in 0,1,2,3,4,5,6,7,8,9
            updateFlag := 0
        
        idx_03 := SubStr(editVal01, 3, 1)
        if idx_03 not in :
            updateFlag := 0
        
        idx_04 := SubStr(editVal01, 4, 1)
        if idx_04 not in 0,1,2,3,4,5
            updateFlag := 0
        
        idx_05 := SubStr(editVal01, 5, 1)
        if idx_05 not in 0,1,2,3,4,5,6,7,8,9
            updateFlag := 0
        
        if(!updateFlag){
            gosub errorFormat
            return
        }
        
        ;~ 判断是否更新
        if(updateFlag){
            OneQuick.SetConfig("remindtime", editVal01)
        
            ;~ 寻找Edit02命名的控件,将值赋值给Edit02
            GuiControlGet, Edit02
            OneQuick.SetConfig("netname", Edit02)
            
            ;~ 初始化设置
            init()
            
            MsgBox, 设置成功！
            
            Gui, Destroy
        }
        
    return
    
    GuiClose:
    GuiEscape:
        Gui, Destroy
    return
    
    errorFormat:
        MsgBox, 请输入正确的时间，如 18:00
    return
    
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
return


;~ 关闭按钮
registerAutoRun(){
    ToolTip, 即将打开
    SetTimer, RemoveToolTip, -5000
    
    SetAutorun("toggle")
}

;~ 开机自启动    ;函数，变量act的默认值为toggle
SetAutorun(act="toggle")
{
    ;~ 先获配置文件 自启动值（如果配置文件中没有，则默认0）
    cfg := OneQuick.GetConfig("autorun", 0)
    ;~ 如果方法是想要获取配置文件，则用配置文件的值，否则用方法的参数
    autorun := (act="config")? cfg :act
    ;~ 如果方法参数是 toggle，则获取 配置文件相反的值，否则用刚刚配置文件的值
    autorun := (act="toggle")? !cfg :autorun
    
    ;~ 切换配置文件， 用程序名字与路径注册
    Regedit.Autorun(autorun, Regedit.AhkName, Regedit.AhkFullPath)
        
    ;~ 修改配置文件
    OneQuick.SetConfig("autorun", autorun)
    
    ;~ 更新菜单
    if(autorun)
    {
        Menu, Tray, Check, 开机启动
    }
    Else
    {
        Menu, Tray, UnCheck, 开机启动
    }
}


class Regedit
{
    static Subkey_Autorun := "Software\Microsoft\Windows\CurrentVersion\Run"
    static AhkName := "RemindMe"
    static AhkFullPath := A_ScriptFullPath

    ;~ Regedit.Autorun   注册开启自启
    ;~ 参数：switch切换、name注册的程序名、path程序路径
    Autorun(switch, name, path="")
    {
        if(switch)
        {
            RegWrite, REG_SZ, HKCU, % Regedit.Subkey_Autorun, % name, % path
        }
        Else
        {
            RegDelete, HKCU, % Regedit.Subkey_Autorun, % name
        }
    }

    ;~ Regedit.IsAutorun 判断是否已经注册开机自启动
    IsAutorun(name, path)
    {
        RegRead, output, HKCU, % Regedit.Subkey_Autorun, % name
        return % output==path
    }
}

class OneQuick
{
    static config_file := "RemindConfig.ini"
    
    ;~ 获取配置文件 autoWrite=true  默认如果没有获取到，则往配置文件里面写文件
    GetConfig(key, default="", section="para", autoWrite=true)
    {
        IniRead, output, % OneQuick.config_file, % section, % key
        if(output=="ERROR")
        {
            if(autoWrite) {
                OneQuick.SetConfig(key, default, section)
            }
            return default
        }
        return output
    }
    
    ;~ 设置配置文件
    SetConfig(key, value, section="para")
    {
        IniWrite, % value, % OneQuick.config_file, % section, % key
    }
}


;渲染菜单
TRAYMENU:
    Menu, Tray, Tip, 自动切换网络		;鼠标弹窗
    Menu, Tray, Icon, %A_ScriptDir%\imgur_compressed_02.ico, 1, 0  ;图标
	Menu, Tray, NoStandard  ;~ 删除所有标准菜单
	Menu, Tray, DeleteAll   ;~ 清除其他菜单
    
    Menu, Tray, Add, 开机启动     ;添加空白开机启动，然后再关联一个切换的开关
    Menu, Tray, Add             ;添加空白菜单
	Menu, Tray, Add, 手动切换网络 (&Q) , closeInternet
    Menu, Tray, Add, 配置 (&S) , setPara
	Menu, Tray, Add, 退出（&E）, EXIT
return

开机启动:
    Menu, Tray, ToggleCheck, 开机启动
    SetAutorun()
return




