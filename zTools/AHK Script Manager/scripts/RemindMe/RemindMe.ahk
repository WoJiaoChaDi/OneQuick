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
        ;~ confirmWin()
        remindPanel()
        
        ;添加60s睡眠时间，等待这一次分钟数过去
        sleep, 60000
        flag:=!flag
    }
}

;~ 禁用网络
disableInternetByCmd(){
    Run *RunAs InternetDisable.bat
}

;~ 启用网络
enableInternetByCmd(){
    Run *RunAs InternetEnable.bat
}

;~ 说明设置
infoPanel(){
    Gui, Destroy

    paraTime := OneQuick.GetConfig("remindtime", "18:00", "para")
    paraNetNm := OneQuick.GetConfig("netname", "以太网" , "para")
    
    Gui, Add, Text, x22 y19 w340 h100 +Left, 说明：`n`n1.点击"网络连接"按钮，找到网线端口对应的网络连接名称`n`n2.将"网络名称"项改为1中网络连接名称`n`n3.点击保存
    Gui, Add, Button, x242 y119 w90 h30 gOpenNet, 网络连接
    Gui, Add, Text, x22 y132 w70 h20 +Right, 提醒时间：
    Gui, Add, Text, x32 y162 w60 h20 +Right, 网络名称：
    ;~ v给控件命名，后面用v后面的名称找空间
    Gui, Add, Edit, x92 y129 w110 h20 +Left Limit5 vEdit01, %paraTime%
    Gui, Add, Edit, x92 y159 w110 h20 +Left Limit20 vEdit02, %paraNetNm%
    ;~ 点击空间后，运行g标签，指向g后面的标签，即MyButton
    Gui, Add, Button, x242 y159 w90 h30 gMyButton, 保存
    
    ; Generated using SmartGUI Creator for SciTE
    Gui, Show, w392 h208, 设置
    return
    
    OpenNet:
        run, ncpa.cpl
    return
    
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
            
            MsgBox, , 提示, 设置成功！
            
            Gui, Destroy
        }
        
    return
    
    errorFormat:
        MsgBox, 请输入正确的时间，如 18:00
    return
}


;~ 提醒窗口
remindPanel(){
    Gui, Destroy
    
    Gui, Add, Button, x22 y69 w100 h30 genableButton, 启用网络
    Gui, Add, Button, x142 y69 w100 h30 gdisableButton, 禁用网络
    Gui, Add, Button, x262 y69 w100 h30 gcancelButtion, 取消
    Gui, Add, Text, x22 y29 w340 h30 +Center, 现在时间是 %A_Hour%:%A_Min%:%A_Sec% ，是否切换网络？
    ; Generated using SmartGUI Creator for SciTE
    Gui, Show, w384 h131, 提醒
    return

    ;~ Button确定:
        ;~ GuiControlGet, Edit02, Name, Edit02
        ;~ MsgBox, %Edit02%
    ;~ return

    enableButton:
        enableInternetByCmd()
        Gui, Destroy
    return
    
    disableButton:
        disableInternetByCmd()
        Gui, Destroy
    return
    
    cancelButtion:
        Gui, Destroy
    return
    
    ;~ GuiClose:
    ;~ GuiEscape:
        ;~ Gui, Destroy
    ;~ return
}

GuiClose:
GuiEscape:
    Gui, Destroy
return

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
    ;~ Menu, Tray, Icon, %A_ScriptDir%\ico\imgur_compressed_02.ico, 1, 0  ;图标
	Menu, Tray, NoStandard  ;~ 删除所有标准菜单
	Menu, Tray, DeleteAll   ;~ 清除其他菜单
    
    Menu, Tray, Add, 开机启动     ;添加空白开机启动，然后再关联一个切换的开关
    Menu, Tray, Add             ;添加空白菜单
	;~ Menu, Tray, Add, 手动切换网络 (&Q) , closeInternet
    ;~ Menu, Tray, Add, 手动提示 (&Q) , confirmWin
    Menu, Tray, Add, 手动提示 (&T) , remindPanel
    Menu, Tray, Add, 禁用网络 (&D) , disableInternetByCmd
    Menu, Tray, Add, 启用网络 (&E) , enableInternetByCmd
    Menu, Tray, Add, 设置 (&S) , infoPanel
	Menu, Tray, Add, 退出（&Q）, EXIT
return

开机启动:
    Menu, Tray, ToggleCheck, 开机启动
    SetAutorun()
return




