
class User_PC201503250128
{
    Ini()
    {
        this.Run := 1
    }
}

class User_DESKTOP_G195C4P
{
    Ini()
    {
        this.Run := 1
    }
}

;笔记本
class User_WoJiaoChaDiPC
{
    Ini()
    {
        this.Run := 1
    }
}

;台式机
class User_WOJIAOCHADI_PC
{
	Ini()
	{

	}
}

;赢时胜
class User_LAPTOP_CA75PL6O
{
    Ini()
    {

    }
}








;===============================+++++++++++++++++++++====================================o|
;========================================================================================o|
;  Mac互通                           Windows增强                                         ;|
;----------------------------------------------------------------------------------------o|
;   | * |    Win + Esc                   | 为 Alt+F4                                     ;|
;   |   |    Win + 滚轮                  | 调整窗口的透明度                              ;|
;   |   |    ESC                         | 按Esc切换输入法                               ;|
;   |   |    Ctrl + Win + C              | 复制文件路径                                  ;|
;   | + |    Ctrl + Delete               | 剪切（右Ctrl）                                ;|
;   | + |    Ctrl + PrintScreen          | 复制（右Ctrl）                                ;|
;   | + |    Ctrl & Insert               | 粘贴（右Ctrl）                                ;|
;   |   |    CapsLock + ESC                | 大小写切换                                    ;|
;   | * |    CapsLock + E/S/D/F          | 映射↑←↓→(Ctrl单词, Alt选择)                   ;|
;   | * |    CapsLock + I/J/K/L          | 映射↑←↓→(Ctrl单词, Alt选择)                   ;|
;   | * |    CapsLock + XC               | 映射Home、End(Alt Compatible)                 ;|
;   | * |    CapsLock + 1/2              | Ctrl+Home(Alt Compatible)                     ;|
;   | * |    CapsLock + 3/4              | 发送滚轮↑ ↓  (Alt ←/→)                        ;|
;   | * |    CapsLock + A/Z              | 发送PgUp/PgDn(Ctrl+PgUp/PgDn, Alt选择)        ;|
;   | * |    CapsLock + W/R              | 删除光标前后字符(Ctrl单词, Shift全部)         ;|
;   | * |    CapsLock + Space            | 等同于Enter                                   ;|
;   | + |    CapsLock + H                | 另起一行                                      ;|
;   | + |    CapsLock + ;                | 另起一行                                      ;|
;   | + |    CapsLock + Enter            | 另起一行                                      ;|
;   | + |    CapsLock + Y                | 删除本行所有内容                              ;|
;   | + |    CapsLock + BackSpace        | 删除本行所有内容                              ;|
;   | * |    CapsLock + 滚轮↑/↓          | 向左右滚动                                    ;|
;   | * |    CapsLock + ↑/↓/←/→          | 模拟鼠标移动(Alt加速)                         ;|
;   | * |    CapsLock + RCtrl            | 模拟鼠标左键                                  ;|
;   | * |    CapsLock + RShift           | 模拟鼠标右键                                  ;|
;   | * |    CapsLock + F1/F2/F3/F4/F5/F6| 媒体控制(静音/音量-/音量+/暂停/上一首/下一首) ;|
;   | * |    CapsLock + Q                | 窗口控制Ctrl+W(Alt Alt+F4)                    ;|
;   |   |    CapsLock + Tab              | 映射为 Win+Tab                                ;|
;   |   |    CapsLock + G                | 键盘上的鼠标右键                              ;|
;----------------------------------------------------------------------------------------o|
;   | * |    在MacOS中用Karabiner-Elements 实现                                          ;|
;   | + |    在MacOS中用Keyboard Maestro   实现                                          ;|
;----------------------------------------------------------------------------------------o|


;========================================================================================o|
;                              Win + Esc | 为 Alt+F4                                     ;|
;----------------------------------------------------------------------------------------o|
#Esc::!F4


;========================================================================================o|
;                             Win + 滚轮 | 调整窗口的透明度(默认10%调节，Shift修饰为1%调节)  ;|
;----------------------------------------------------------------------------------------o|
;~ #WheelUp::
    ;~ ;获取当前激活页面的id
    ;~ WinGet, active_id, ID, A
    ;~ ;获取当前激活页面的id
    ;~ WinGet, active_tran, Transparent, A
    ;~ if(active_tran == ""){
        ;~ active_tran = 255
    ;~ }
    ;~ active_tran := active_tran + 10
    ;~ if(active_tran >= 255){
        ;~ active_tran = 255
    ;~ }
    ;~ ;修改透明值
    ;~ WinSet, Transparent, %active_tran%, ahk_id %active_id%
    ;~ SYS_ToolTipText = Transparent %active_tran%
    ;~ Gosub, SYS_ToolTipFeedbackShow
;~ return

;~ #WheelDown::
    ;~ ;获取当前激活页面的id
    ;~ WinGet, active_id, ID, A
    ;~ ;获取当前激活页面的id
    ;~ WinGet, active_tran, Transparent, A
    ;~ if(active_tran == ""){
        ;~ active_tran = 255
    ;~ }
    ;~ active_tran := active_tran - 10
    ;~ if(active_tran <= 0){
        ;~ active_tran = 0
    ;~ }
    ;~ ;修改透明值
    ;~ WinSet, Transparent, %active_tran%, ahk_id %active_id%
    ;~ SYS_ToolTipText = Transparent %active_tran%
    ;~ Gosub, SYS_ToolTipFeedbackShow
;~ return

#WheelUp::
#+WheelUp::
#WheelDown::
#+WheelDown::
	Gosub, TRA_CheckWinIDs
    ;设置在每次执行窗口命令(例如 WinActivate) 后自动的延时  -1 无延时
	SetWinDelay, -1
    ;获取当前激活的窗口
	IfWinActive, A
	{
		WinGet, TRA_WinID, ID
		If ( !TRA_WinID )
			Return
		WinGetClass, TRA_WinClass, ahk_id %TRA_WinID%
		If ( TRA_WinClass = "Progman" )
			Return

		IfNotInString, TRA_WinIDs, |%TRA_WinID%
			TRA_WinIDs = %TRA_WinIDs%|%TRA_WinID%
		TRA_WinAlpha := TRA_WinAlpha%TRA_WinID%
		TRA_PixelColor := TRA_PixelColor%TRA_WinID%

        ;最近一次热键包含的字符串+
		IfInString, A_ThisHotkey, +
			TRA_WinAlphaStep := 255 * 0.01 ; 1 percent steps
		Else
			TRA_WinAlphaStep := 255 * 0.1 ; 10 percent steps

		If ( TRA_WinAlpha = "" )
			TRA_WinAlpha = 255

        ;最近一次热键包含的字符串 WheelDown
		IfInString, A_ThisHotkey, WheelDown
			TRA_WinAlpha -= TRA_WinAlphaStep
		Else
			TRA_WinAlpha += TRA_WinAlphaStep

		If ( TRA_WinAlpha > 255 )
			TRA_WinAlpha = 255
		Else
			If ( TRA_WinAlpha < 0 )
				TRA_WinAlpha = 0

		If ( !TRA_PixelColor and (TRA_WinAlpha = 255) )
		{
			Gosub, TRA_TransparencyOff
			SYS_ToolTipText = Transparency: OFF
		}
		Else
		{
			TRA_WinAlpha%TRA_WinID% = %TRA_WinAlpha%

			If ( TRA_PixelColor )
				WinSet, TransColor, %TRA_PixelColor% %TRA_WinAlpha%, ahk_id %TRA_WinID%
			Else
				WinSet, Transparent, %TRA_WinAlpha%, ahk_id %TRA_WinID%

			TRA_ToolTipAlpha := TRA_WinAlpha * 100 / 255
			Transform, TRA_ToolTipAlpha, Round, %TRA_ToolTipAlpha%
			SYS_ToolTipText = Transparency: %TRA_ToolTipAlpha% `%
		}
		Gosub, SYS_ToolTipFeedbackShow
	}
Return

;========================================================================================o|
;                 Ctrl + Win + 左键（透明化点击窗口的颜色，并且可以穿透操作）
;                 Ctrl + Win + 中键（透明化点击窗口的颜色，并且可以穿透操作，并且添加60%透明效果）
;                        Win + 中键点击标题栏，撤销该窗口的透明效果
;                 Ctrl + Win + T 撤销上述的所有效果
;----------------------------------------------------------------------------------------o|
#^LButton::
#^MButton::
	Gosub, TRA_CheckWinIDs
	SetWinDelay, -1
	CoordMode, Mouse, Screen
	CoordMode, Pixel, Screen
	MouseGetPos, TRA_MouseX, TRA_MouseY, TRA_WinID
	If ( !TRA_WinID )
		Return
	WinGetClass, TRA_WinClass, ahk_id %TRA_WinID%
	If ( TRA_WinClass = "Progman" )
		Return

    ;激活窗口
	IfWinNotActive, ahk_id %TRA_WinID%
		WinActivate, ahk_id %TRA_WinID%

    ;拼接TRA窗口ID
	IfNotInString, TRA_WinIDs, |%TRA_WinID%
		TRA_WinIDs = %TRA_WinIDs%|%TRA_WinID%

    ;如果触发包含鼠标中键，设置置顶并且修改透明度为40%
	IfInString, A_ThisHotkey, MButton
	{
		AOT_WinID = %TRA_WinID%
		Gosub, AOT_SetOn
		TRA_WinAlpha%TRA_WinID% := 60 * 255 / 100
	}else{
        Gosub, AOT_SetOn
    }

	TRA_WinAlpha := TRA_WinAlpha%TRA_WinID%

	; TODO : the transparency must be set off first,
	; this may be a bug of AutoHotkey
	WinSet, TransColor, OFF, ahk_id %TRA_WinID%
	PixelGetColor, TRA_PixelColor, %TRA_MouseX%, %TRA_MouseY%, RGB
	WinSet, TransColor, %TRA_PixelColor% %TRA_WinAlpha%, ahk_id %TRA_WinID%
	TRA_PixelColor%TRA_WinID% := TRA_PixelColor

	IfInString, A_ThisHotkey, MButton
		SYS_ToolTipText = Transparency: 60 `% + %TRA_PixelColor% color (RGB) + Always on Top
	Else
		SYS_ToolTipText = Transparency: %TRA_PixelColor% color (RGB)
	Gosub, SYS_ToolTipFeedbackShow
Return

;鼠标中键，恢复透明效果
#MButton::
	Gosub, TRA_CheckWinIDs
	SetWinDelay, -1
	MouseGetPos, , , TRA_WinID
	If ( !TRA_WinID )
		Return
	IfWinNotActive, ahk_id %TRA_WinID%
		WinActivate, ahk_id %TRA_WinID%
	IfNotInString, TRA_WinIDs, |%TRA_WinID%
		Return
	Gosub, TRA_TransparencyOff

	SYS_ToolTipText = Transparency: OFF
	Gosub, SYS_ToolTipFeedbackShow
Return

;取消所有透明效果
#^t::
	Gosub, TRA_TransparencyAllOff
    Gosub, AOT_SetAllOff
	SYS_ToolTipText = Transparency: ALL OFF
	Gosub, SYS_ToolTipFeedbackShow
return

;========================================================================================o|
;                                    ESC | 按Esc切换输入法                               ;|
;                SwitchIME方法在   \OneQuick\script\OneQuick.Core.ahk                    ;|
;----------------------------------------------------------------------------------------o|
~esc::
    ; 下方代码可只保留一个
    ; 英语(美国) 美式键盘
    SwitchIME(0x04090409)

    ; 中文(中国) 简体中文-美式键盘
    ; SwitchIME(0x08040804)
return


;========================================================================================o|
;                         Ctrl + Win + C | 复制文件路径                                  ;|
;----------------------------------------------------------------------------------------o|
^#c::
    send ^c
    sleep,200
    ; 这句还是废话一下：windows 复制的时候，剪贴板保存的是“路径”。
    ;只是路径不是字符串，只要转换成字符串就可以粘贴出来了。
    clipboard=%clipboard%

    SYS_ToolTipText = %clipboard%
    Gosub, SYS_ToolTipFeedbackShow
return


;========================================================================================o|
;                          Ctrl + Delete | 剪切（右Ctrl）                                ;|
;----------------------------------------------------------------------------------------o|
RControl & Del::
    Send ^x
return


;========================================================================================o|
;                     Ctrl + PrintScreen | 复制（右Ctrl）                                ;|
;----------------------------------------------------------------------------------------o|
RControl & PrintScreen::
    Send ^c
return


;========================================================================================o|
;                          Ctrl & Insert | 粘贴（右Ctrl）                                ;|
;----------------------------------------------------------------------------------------o|
RControl & Ins::
    Send ^v
return


;========================================================================================o|
;                           CapsLock + ESC | 大小写切换(同时禁用大小写)                  ;|
;      禁用 SetCapsLockState, AlwaysOff  | 在..\OneQuick\script\OneQuick.Core.ahk        ;|
;----------------------------------------------------------------------------------------o|
CapsLock & ESC::
    GetKeyState, CapsLockState, CapsLock, T
    if CapsLockState = D
        SetCapsLockState, AlwaysOff
    else
        SetCapsLockState, AlwaysOn
    KeyWait, ``
return


;========================================================================================o|
;                              CapsLock+ | 功能                                          ;|
;                     CapsLock + E/S/D/F | 映射↑←↓→(Ctrl, Alt Compatible)                ;|
;----------------------------------------------------------------------------------------o|
CapsLock & E::
    if GetKeyState("control") = 0
    {
        if GetKeyState("alt") = 0
        {
            Send {Up}
        } else {
            Send +{Up}
        }
    } else {
        if GetKeyState("alt") = 0
        {
            Send ^{Up}
        } else {
            Send +^{Up}
        }
    }
return

CapsLock & S::
    if GetKeyState("control") = 0
    {
        if GetKeyState("alt") = 0
        {
            Send {Left}
        } else {
            Send +{Left}
        }
    } else {
        if GetKeyState("alt") = 0
        {
            Send ^{Left}
        } else {
            Send +^{Left}
        }
    }
return

CapsLock & D::
    if GetKeyState("control") = 0
    {
        if GetKeyState("alt") = 0
        {
            Send {Down}
        } else {
            Send +{Down}
        }
    } else {
        if GetKeyState("alt") = 0
        {
            Send ^{Down}
        } else {
            Send +^{Down}
        }
    }
return

CapsLock & F::
    if GetKeyState("control") = 0
    {
        if GetKeyState("alt") = 0
        {
            Send {Right}
        } else {
            Send +{Right}
        }
    } else {
        if GetKeyState("alt") = 0
        {
            Send ^{Right}
        } else {
            Send +^{Right}
        }
    }
return


;========================================================================================o|
;                     CapsLock + I/J/K/L | 映射↑←↓→(Ctrl, Alt Compatible)                ;|
;----------------------------------------------------------------------------------------o|
CapsLock & I::
    if GetKeyState("control") = 0
    {
        if GetKeyState("alt") = 0
        {
            Send {Up}
        } else {
            Send +{Up}
        }
    } else {
        if GetKeyState("alt") = 0
        {
            Send ^{Up}
        } else {
            Send +^{Up}
        }
    }
return

CapsLock & J::
    if GetKeyState("control") = 0
    {
        if GetKeyState("alt") = 0
        {
            Send {Left}
        } else {
            Send +{Left}
        }
    } else {
        if GetKeyState("alt") = 0
        {
            Send ^{Left}
        } else {
            Send +^{Left}
        }
    }
return

CapsLock & K::
    if GetKeyState("control") = 0
    {
        if GetKeyState("alt") = 0
        {
            Send {Down}
        } else {
            Send +{Down}
        }
    } else {
        if GetKeyState("alt") = 0
        {
            Send ^{Down}
        } else {
            Send +^{Down}
        }
    }
return

CapsLock & L::
    if GetKeyState("control") = 0
    {
        if GetKeyState("alt") = 0
        {
            Send {Right}
        } else {
            Send +{Right}
        }
    } else {
        if GetKeyState("alt") = 0
        {
            Send ^{Right}
        } else {
            Send +^{Right}
        }
    }
return


;========================================================================================o|
;                          CapsLock + XC | 映射Home、End(Alt Compatible)                 ;|
;----------------------------------------------------------------------------------------o|
CapsLock & X::
    if GetKeyState("alt") = 0
    {
        Send {Home}
    } else {
        Send +{Home}
    }
return
CapsLock & C::
    if GetKeyState("alt") = 0
    {
        Send {End}
    } else {
        Send +{End}
    }
return


;========================================================================================o|
;                         CapsLock + 1/2 | Ctrl+Home(Alt Compatible)                     ;|
;----------------------------------------------------------------------------------------o|
CapsLock & 1::
    if GetKeyState("alt") = 0
    {
        Send ^{Home}
    } else {
        Send +^{Home}
    }
return

CapsLock & 2::
    if GetKeyState("alt") = 0
    {
        Send ^{End}
    } else {
        Send +^{End}
    }
return


;========================================================================================o|
;                         CapsLock + 3/4 | 发送滚轮↑ ↓  (Alt ←/→)                        ;|
;----------------------------------------------------------------------------------------o|
CapsLock & 3::
	if GetKeyState("alt") = 0
	{
		Loop 5
    	Click WheelUp
	} else {
		Loop 5
    	Click WheelLeft
	}
return
CapsLock & 4::
	if GetKeyState("alt") = 0
	{
		Loop 5
    	Click WheelDown
	} else {
		Loop 5
    	Click WheelRight
	}
return


;========================================================================================o|
;                         CapsLock + A/Z | 发送PageUp/PageDown(Ctrl, Alt Compatible)     ;|
;----------------------------------------------------------------------------------------o|
CapsLock & A::
    if GetKeyState("control") = 0
    {
        if GetKeyState("alt") = 0
        {
            Send {PgUp}
        } else {
            Send +{PgUp}
        }
    } else {
        Send ^{PgUp}
    }
return

CapsLock & Z::
    if GetKeyState("control") = 0
    {
        if GetKeyState("alt") = 0
        {
            Send {PgDn}
        } else {
            Send +{PgDn}
        }
    } else {
        Send ^{PgDn}
    }
return


;========================================================================================o|
;                      CapsLock + W/R | 删除光标前后字符(Alt单词, Ctrl/Shift全部)        ;|
;----------------------------------------------------------------------------------------o|
CapsLock & W::
    if GetKeyState("alt") = 1
    {
        Send ^{Backspace}
    } else if(GetKeyState("shift") = 1 or GetKeyState("ctrl") = 1) {
            Send ^+{Backspace}
    } else {
        Send {Backspace}
    }
return

CapsLock & R::
    if GetKeyState("alt") = 1
    {
        Send ^{Del}
    } else if(GetKeyState("shift") = 1 or GetKeyState("ctrl") = 1) {
            Send ^+{Del}
    } else {
        Send {Del}
    }
return


;========================================================================================o|
;                       CapsLock + Space | 等同于Enter                                   ;|
;----------------------------------------------------------------------------------------o|
CapsLock & Space::
    Send {Enter}
return


;========================================================================================o|
;                           CapsLock + H | 另起一行                                      ;|
;                           CapsLock + ; | 另起一行                                      ;|
;                       CapsLock + Enter | 另起一行                                      ;|
;----------------------------------------------------------------------------------------o|
CapsLock & H::
    Send {End}{Enter}
return
CapsLock & `;::
    Send {End}{Enter}
return
CapsLock & Enter::
    Send {End}{Enter}
return


;========================================================================================o|
;                           CapsLock + Y | 删除本行所有内容                              ;|
;                   CapsLock + BackSpace | 删除本行所有内容                              ;|
;----------------------------------------------------------------------------------------o|
CapsLock & Y::
    Send {End}+{Home}{BackSpace}
return
CapsLock & BackSpace::
    Send {End}+{Home}{BackSpace}
return


;========================================================================================o|
;                     CapsLock + 滚轮↑/↓ | 向左右滚动                                    ;|
;----------------------------------------------------------------------------------------o|
CapsLock & WheelUp::
ControlGetFocus, fcontrol, A
    ;调大Loop值来快速滚动。
    Loop 15
        ; 0x114 是 WM_HSCROLL，它之后的 0 是 SB_LINELEFT。
        SendMessage, 0x114, 0, 0, %fcontrol%, A
return

CapsLock & WheelDown::
ControlGetFocus, fcontrol, A
    ;调大Loop值来快速滚动。
    Loop 15
        ; 0x114 是 WM_HSCROLL，它之后的 1 是 SB_LINERIGHT。
        SendMessage, 0x114, 1, 0, %fcontrol%, A
return


;========================================================================================o|
;                     CapsLock + ↑/↓/←/→ | 模拟鼠标移动(Alt加速)                         ;|
;                     CapsLock + RCtrl   | 模拟鼠标左键                                  ;|
;                     CapsLock + RShift  | 模拟鼠标右键                                  ;|
;----------------------------------------------------------------------------------------o|
CapsLock & Up::
    if GetKeyState("alt") = 0
    {
        MouseMove,   0, -10, 0, R
    } else {
        MouseMove,   0, -40, 0, R
    }
return

CapsLock & Down::
    if GetKeyState("alt") = 0
    {
        MouseMove,   0,  10, 0, R
    } else {
        MouseMove,   0,  40, 0, R
    }
return

CapsLock & Left::
    if GetKeyState("alt") = 0
    {
        MouseMove, -10,   0, 0, R
    } else {
        MouseMove, -40,   0, 0, R
    }
return

CapsLock & Right::
    if GetKeyState("alt") = 0
    {
        MouseMove,  10,   0, 0, R
    } else {
        MouseMove,  40,   0, 0, R
    }
return
;----------------------------------------------------------------------------------------o|
CapsLock & RCtrl::
    SendEvent {Blind}{LButton down}
    KeyWait Enter
    SendEvent {Blind}{LButton up}
return

CapsLock & RShift::
    SendEvent {Blind}{RButton down}
    KeyWait Enter
    SendEvent {Blind}{RButton up}
return


;========================================================================================o|
;      CapsLock + F1/F2/F3/F4/F5/F6| 媒体控制(静音/音量-/音量+/暂停/上一首/下一首)       ;|
;----------------------------------------------------------------------------------------o|
CapsLock & F1:: Send, {Volume_Mute}
CapsLock & F2:: Send, {Volume_Down}
CapsLock & F3:: Send, {Volume_Up}
CapsLock & F4:: Send, {Media_Play_Pause}
CapsLock & F5:: Send, {Media_Prev}
CapsLock & F6:: Send, {Media_Next}


;========================================================================================o|
;                         CapsLock + Q   | 窗口控制(Alt Compatible)                      ;|
;                         CapsLock + Tab | 映射为 Win+Tab                                ;|
;                         CapsLock + G   | 键盘上的鼠标右键                              ;|
;----------------------------------------------------------------------------------------o|
CapsLock & Q::
    if GetKeyState("alt") = 0
    {
        Send ^w
    } else {
        Send !{F4}
    }
return

;----------------------------------------------------------------------------------------o|
;                         CapsLock + Tab | 映射为 Alt+Tab                                ;|
CapsLock & Tab::
    Send #{Tab}
return

;----------------------------------------------------------------------------------------o|
;                         CapsLock + G   | 键盘上的鼠标右键                              ;|
CapsLock & g:: Send, {AppsKey}
















;===============================+++++++++++++++++++++====================================o|
;========================================================================================o|
;                                       //热键                                           ;|
;----------------------------------------------------------------------------------------o|
;                                    //e | Home+Tab 循环格式化                           ;|
;                                    //s | Home+多个空格  循环格式化                     ;|
;                                    //t | 计时器                                        ;|
;                                   //ca | 计算器                                        ;|
;                              //notepad | 记事本                                        ;|
;                              //mspaint | 画图                                          ;|
;                              //startup | 默认启动                                      ;|
;----------------------------------------------------------------------------------------o|


;========================================================================================o|
;                                    //e | Home+Tab 循环格式化                           ;|
;----------------------------------------------------------------------------------------o|
:://e::
    InputBox, loopTime, FormatEnter, Plz input number for End+Tab

    if (loopTime > 0) {
        Loop, %loopTime%
        {
            Send {Home}{Tab}{Down}
            Sleep 200
        }
    }
return


;========================================================================================o|
;                                    //s | Home+多个空格  循环格式化                     ;|
;----------------------------------------------------------------------------------------o|
:://s::
    InputBox, loopTime, FormatEnter, Plz input number for Format
    InputBox, spaceTime, FormatEnter, Plz input number for Space per %loopTime% row

    if (loopTime > 0) {
        Loop, %loopTime%
        {
            if (spaceTime > 0) {
                    Send {Home}{Space %spaceTime%}{Down}
                    Sleep 50
                    Send {End}
            }
        }
    }
return


;========================================================================================o|
;                                    //t | 计时器                                        ;|
;----------------------------------------------------------------------------------------o|
:://t::
    InputBox, time, timer, Plz input times unit is s    ; 弹出一个输入框，标题是“计时器”，内容是“请输入一个时间（单位是秒）”
    millisecond := time*1000    ; 如果一个变量要做计算的话，一定要像这样写，和平常的算式相比，多了一个冒号。sleep 的时间是按照千分之一秒算的，这里乘以 1000 就变成秒了。
    Sleep,%millisecond%
    MsgBox Time is Over(%time%s)
return


;========================================================================================o|
;                                   //ca | 计算器                                        ;|
;----------------------------------------------------------------------------------------o|
:://ca::
    Run calc
return


;========================================================================================o|
;                              //notepad | 记事本                                        ;|
;----------------------------------------------------------------------------------------o|
:://notepad::
    Run notepad
return


;========================================================================================o|
;                              //mspaint | 画图                                          ;|
;----------------------------------------------------------------------------------------o|
:://mspaint::
    Run mspaint
return


;========================================================================================o|
;                              //startup | 默认启动                                      ;|
;----------------------------------------------------------------------------------------o|
:://startup::
    Run shell:startup
return







;========================================================================================o|
;                             打开应用(用lnk定位到C:\Shortcut\中)                        ;|
;                                Win + B | 打开sublime_text                              ;|
;                                Win + F | 打开everything                                ;|
;                                Win + Y | 打开total commander                           ;|
;----------------------------------------------------------------------------------------o|


;========================================================================================o|
;                                Win + B | 打开sublime_text                              ;|
;----------------------------------------------------------------------------------------o|
#b::
    Run C:\Shortcut\Sublime Text 3.lnk
return


;========================================================================================o|
;                                Win + F | 打开everything                                ;|
;----------------------------------------------------------------------------------------o|
#f::
    Run C:\Shortcut\Everything.lnk
return


;========================================================================================o|
;                                Win + Y | 打开total commander                           ;|
;----------------------------------------------------------------------------------------o|
#y::
    Run C:\Shortcut\Total Commander.lnk
return






















;===============================+++++++++++++++++++++====================================o|
;========================================================================================o|
;                                    特色功能                                            ;|
;----------------------------------------------------------------------------------------o|
;                按住CapsLock和左键，可以在窗口的任意位置拖动当前窗口                    ;|
;                                  Win+V | 新增热字符串                                  ;|
;                                  Win+C | 超级执行（可多行）                            ;|
;----------------------------------------------------------------------------------------o|


;========================================================================================o|
;                     按住CapsLock+左键 | 可以在窗口的任意位置拖动当前窗口               ;|
;                     按住CapsLock+右键 | 可以在窗口的任意位置调整当前窗口               ;|
;                 按住CapsLock+Alt+左键 | 可以在窗口的任意位置最小化窗口              	 ;|
;                 按住CapsLock+Alt+右键 | 可以在窗口的任意位置最大化窗口              	 ;|
;                 按住CapsLock+Alt+中间 | 可以在窗口的任意位置关闭窗口              	 ;|
;----------------------------------------------------------------------------------------o|

; 这是在我的系统上运行的最顺畅的设置
; 根据您显卡和 CPU 的速度,
; 您可能要增加或减小这个值.
SetWinDelay,2

CoordMode,Mouse
return

CapsLock & LButton::
    if GetKeyState("alt") = 1
    {
        MouseGetPos,,,KDE_id
        ; 此消息大部分时候相当于 WinMinimize,
        ; 但是它避免了作用于 PSPad 时的问题.
        PostMessage,0x112,0xf020,,,ahk_id %KDE_id%
        DoubleAlt := false
        return
    }
    ; 获取初始的鼠标位置和窗口 id,
    ; 并在窗口处于最大化状态时返回.
    MouseGetPos,KDE_X1,KDE_Y1,KDE_id
    WinGet,KDE_Win,MinMax,ahk_id %KDE_id%
    If KDE_Win
        return
    ; 获取初始的窗口位置.
    WinGetPos,KDE_WinX1,KDE_WinY1,,,ahk_id %KDE_id%
    Loop
    {
        GetKeyState,KDE_Button,LButton,P ; 如果按钮已经被松开了则退出.
        If KDE_Button = U
            break
        MouseGetPos,KDE_X2,KDE_Y2 ; 获取当前的鼠标位置.
        KDE_X2 -= KDE_X1 ; 得到距离原来鼠标位置的偏移.
        KDE_Y2 -= KDE_Y1
        KDE_WinX2 := (KDE_WinX1 + KDE_X2) ; 把这个偏移应用到窗口位置.
        KDE_WinY2 := (KDE_WinY1 + KDE_Y2)
        WinMove,ahk_id %KDE_id%,,%KDE_WinX2%,%KDE_WinY2% ; 移动窗口到新的位置.
    }
return

CapsLock & RButton::
    if GetKeyState("alt") = 1
    {
        MouseGetPos,,,KDE_id
        ; 在最大化和还原状态中切换.
        WinGet,KDE_Win,MinMax,ahk_id %KDE_id%
        If KDE_Win
            WinRestore,ahk_id %KDE_id%
        Else
            WinMaximize,ahk_id %KDE_id%
        DoubleAlt := false
        return
    }

    ; 获取初始的鼠标位置和窗口 id,
    ; 并在窗口处于最大化状态时返回.
    MouseGetPos,KDE_X1,KDE_Y1,KDE_id
    WinGet,KDE_Win,MinMax,ahk_id %KDE_id%
    If KDE_Win
        return
    ; 获取初始的窗口位置和大小.
    WinGetPos,KDE_WinX1,KDE_WinY1,KDE_WinW,KDE_WinH,ahk_id %KDE_id%
    ; 定义鼠标当前所处的窗口区域.
    ; 四个区为左上, 右上, 左下和右下.
    If (KDE_X1 < KDE_WinX1 + KDE_WinW / 2)
       KDE_WinLeft := 1
    Else
       KDE_WinLeft := -1
    If (KDE_Y1 < KDE_WinY1 + KDE_WinH / 2)
       KDE_WinUp := 1
    Else
       KDE_WinUp := -1
    Loop
    {
        GetKeyState,KDE_Button,RButton,P ; 如果按钮已经松开了则退出.
        If KDE_Button = U
            break
        MouseGetPos,KDE_X2,KDE_Y2 ; 获取当前鼠标位置.
        ; 获取当前的窗口位置和大小.
        WinGetPos,KDE_WinX1,KDE_WinY1,KDE_WinW,KDE_WinH,ahk_id %KDE_id%
        KDE_X2 -= KDE_X1 ; 得到距离原来鼠标位置的偏移.
        KDE_Y2 -= KDE_Y1
        ; 然后根据已定义区域进行动作.
        WinMove,ahk_id %KDE_id%,, KDE_WinX1 + (KDE_WinLeft+1)/2*KDE_X2  ; 大小调整后窗口的 X 坐标
                                , KDE_WinY1 +   (KDE_WinUp+1)/2*KDE_Y2  ; 大小调整后窗口的 Y 坐标
                                , KDE_WinW  -     KDE_WinLeft  *KDE_X2  ; 大小调整后窗口的 W (宽度)
                                , KDE_WinH  -       KDE_WinUp  *KDE_Y2  ; 大小调整后窗口的 H (高度)
        KDE_X1 := (KDE_X2 + KDE_X1) ; 为下一次的重复重新设置初始位置.
        KDE_Y1 := (KDE_Y2 + KDE_Y1)
    }
return

CapsLock & MButton::
    if GetKeyState("alt") = 1
    {} else {
        MouseGetPos,,,KDE_id
        WinClose,ahk_id %KDE_id%
    }
return



;========================================================================================o|
;                                  Win+V | 新增热字符串                                  ;|
;                                                                                        ;|
;            是在本脚本的末尾新增字段（会自动替换热键重名的热字符串）                    ;|
;            由于使用了OneQuick核心库，所以新增的热字符串在下面的路径中                  ;|
;            ..\OneQuick\script\OneQuick.ahk                                             ;|
;                                                                                        ;|
;            热字符串都是以 :R::***::  形式的                                            ;|
;            所以不要在本脚本的其他地方用:R::***::形式的热字符串                         ;|
;            :R:: 表示  按照原样发送替换文本                                             ;|
;----------------------------------------------------------------------------------------o|
#v::
    ;获取当前选中的文本。使用剪贴板代替 "ControlGet Selected"
    ;是因为它能在更多种类的编辑器(也就是字处理软件)中起作用。
    ;当前剪贴板中的内容将被保存，以便之后恢复。尽管只能恢复纯文本，但总比没有的好：

    ;保留剪贴板中首尾的空白字符。
    AutoTrim Off
    ClipboardOld = %ClipboardAll%
    ;为检验正确，需要清空。
    Clipboard =
    Send ^c
    ClipWait 1
    if ErrorLevel  ; ClipWait 超时
        return
    ;将回车换行和/或换行符替换为 `n 以便使用在一个 "send-raw" 的热字符串中：
    ;对任何在 raw 模式下可能出问题的其他字符应用同样的操作：

    ;为避免与下列替换冲突，先作这个替换。
    StringReplace, Hotstring, Clipboard, ``, ````, All
    ;在微软 Word 等等软件中 `r 比 `n 表现得更好。
    StringReplace, Hotstring, Hotstring, `r`n, ``r, All
    StringReplace, Hotstring, Hotstring, `n, ``r, All
    StringReplace, Hotstring, Hotstring, %A_Tab%, ``t, All
    StringReplace, Hotstring, Hotstring, `;, ```;, All

    ;恢复记事本之前的内容
    Clipboard = %ClipboardOld%

    ;这将把输入对话框中的光标移动到更人性化的位置：
    SetTimer, MoveCaret, 10

    ;显示提供了缺省热字符串的输入对话框：
    ;InputBox, Hotstring, MyHotstring, 在光标处输入你的缩写。

    ;`n需要的话，你也可以编辑替换文本。 , , , 150, , , , , :RO:`::%Hotstring%
    InputBox, Hotstring, MyHotstring, Type your abbreviation at the cursor`, `nYou can also modify and edit the replacement text.  , , , 150, , , , , :RO:`::%Hotstring%

    ;用户选择了取消
    if ErrorLevel
        return
    IfInString, Hotstring, :RO`:::
    {
        MsgBox 你没有输入缩写。热字符串不会被添加。
        return
    }

    ;判断该热键是否已经被使用，如果已经被使用，则删除使用的那行
    ahk_bak_flag = 0
    ahk_bak_dir = %A_ScriptFullPath%

    ;字符串截取
    ahk_bak_dir := SubStr(ahk_bak_dir, 1 , StrLen(ahk_bak_dir) - 4)
    ahk_bak_dir = %ahk_bak_dir%_bak.ahk

    ;删除备份文件
    FileDelete, %ahk_bak_dir%

    ;一行一行循环读取文件
    Loop, read, %A_ScriptFullPath%
    {
        ;~ MsgBox, 第 %A_Index% 个片段是 %A_LoopReadLine%。
        ahk_search_str = %Hotstring%

        ;查找::字符在titile这个变量中的位置，并赋值给indexJava  (位置是从1开始
        ahk_index := InStr(ahk_search_str,"::")

        ;字符串截取   即热键字符串  :RO:***::  这部分(R代表不转义，O代表删除结束字符)
        ahk_search_str := SubStr(ahk_search_str, 1 , ahk_index+1)

        ;判断新增的热键是否已经存在，如果已经存在，则是新增一个备份文件，等待写完备份文件后，删除主文件，更改备份文件名称为主文件名称
        IfInString, A_LoopReadLine, %ahk_search_str%
        {
            ;如果新增的热键已经存在，则把新的字符串往备份文件里面写
            ;在字符串开头放一个 `n 以防文件在它的末尾没有空行。
            FileAppend, %Hotstring%`n, %ahk_bak_dir%
            ahk_bak_flag = 1
        }else{
            ;如果新增的热键不存在，则把旧的字符串往备份文件里面写
            ;除开第一行写入备份文件
            FileAppend, %A_LoopReadLine%`n, %ahk_bak_dir%
        }
    }

    if(1 == ahk_bak_flag){
        ;如果有替换的热键，则删除源文件，并把备份文件重命名为源文件
        ;删除源文件
        FileDelete, %A_ScriptFullPath%

        ;重命名单个文件。
        FileMove, %ahk_bak_dir%, %A_ScriptFullPath%
    }else{
        ;否则，在源文件的基础上添加热字符串并重新加载脚本：
        ;在字符串开头放一个 `n 以防文件在它的末尾没有空行。
        FileAppend, `n%Hotstring%, %A_ScriptFullPath%

        ;删除备份文件
        FileDelete, %ahk_bak_dir%
    }

    ;重新加载脚本
    Reload

    ;如果重新加载成功，那么在 Sleep 期间就会关闭这个实例，这样就永远不会运行到下一行。
    Sleep 200
    MsgBox, 4,, 刚刚添加的热字符串格式化不正确。你要打开脚本编辑么？注意，有问题的热字符串在脚本的最后一行。
    IfMsgBox, Yes, Edit
return

MoveCaret:
    IfWinNotActive, MyHotstring
        return
    ;否则，将输入对话框中的光标移动到用户输入缩写的位置。
    Send {Home}{Right 4}
    SetTimer, MoveCaret, Off
return






;========================================================================================o|
;                                  Win+C | 超级执行（可多行）                            ;|
;         1.算数计算                                                                     ;|
;               如果是=结尾的表达式，将计算值放在表达式后面                              ;|
;               如果不是以=结尾的表达式，则将值放入剪切板                  				 ;|
;         2.打开网址                                                                     ;|
;         3.打开目录                                                                     ;|
;         4.magnet磁力链接执行                                                           ;|
;----------------------------------------------------------------------------------------o|
#c::
    calcFlag:=false
    notCalcFlag:=false
    runFlag:=false
    calcResult:=""
    selectResult:=""

    getZz:=Get_Zz()

    ;一行一行的读取
    Loop, parse, getZz, `n, `r
    {
        ;循环内获取一次内容
        S_LoopField=%A_LoopField%
        if(S_LoopField=""){
            ;拼接计算结果，按行分
            if(calcResult)
                calcResult.=A_LoopField "`n"
            ;拼接选择内容，按行分
            if(selectResult)
                selectResult.=A_LoopField "`n"
            continue
        }
        ;一键计算公式数字加减乘除 （匹配结尾数字或是=的字符串）
        if(RegExMatch(S_LoopField,"S)^[\(\)\.\d]+[+*/-]+[\(\)\.+*/-\d]+($|=$)")){
            formula:=S_LoopField
            ;（匹配结尾是=的字符串）
            if(RegExMatch(S_LoopField,"S)^[\(\)\.\d]+[+*/-]+[\(\)\.+*/-\d]+=$")){
                ;移除右边的一个字符（=）
                StringTrimRight, formula, formula, 1
            }
            ;调用js进行计算
            calc:=js_eval(formula)
            selectResult.=A_LoopField
            ;如果是=结尾，则计算
            if(RegExMatch(S_LoopField,"S)^[\(\)\.\d]+[+*/-]+[\(\)\.+*/-\d]+=$")){
                calcFlag:=true
                selectResult.=calc
            }else{
                ;否则拼接计算结果
                calcResult.=calc "`n"
            }
            selectResult.="`n"
            continue
        }else{
            notCalcFlag:=true
        }

        ;~ ;一键打开网址
        if(RegExMatch(S_LoopField,"iS)^([\w-]+://?|www[.]).*")){
            Run_Search(S_LoopField,"",BrowserPathRun)
            runFlag:=true
            continue
        }

        ;一键磁力下载
        if(InStr(S_LoopField,"magnet:?xt=urn:btih:")=1){
            Run,%S_LoopField%
            runFlag:=true
            continue
        }

        ;匹配av号，自动打开bilibili
        if(RegExMatch(S_LoopField, "i)\bav(\d+)", avn))
        {
            run("http://www.bilibili.com/video/av" avn1)
            continue
        }

        ;匹配bv号，自动打开bilibili
        if(RegExMatch(S_LoopField, "i)\bBV(.*)", avn))
        {
            run("http://www.bilibili.com/video/BV" avn1)
            continue
        }

        ;打开目录
        if(RegExMatch(S_LoopField,"S)^(\\\\|.:\\)")){
            ;一键打开目录
            if(InStr(FileExist(S_LoopField), "D")){
                If(OpenFolderPathRun){
                    Run,%OpenFolderPathRun%%A_Space%"%S_LoopField%"
                }else{
                    Run,%S_LoopField%
                }
                runFlag:=true
                continue
            }
            ;一键打开文件
            if(FileExist(S_LoopField)){
                Run,%S_LoopField%
                runFlag:=true
                continue
            }
        }
    }

    ;粘贴计算（不是以=结尾）
    if(calcResult){
        StringTrimRight, calcResult, calcResult, 1
        MouseGetPos, MouseX, MouseY
        ToolTip,%calcResult%,% MouseX-50,% MouseY-25
        Clipboard:=calcResult
        SetTimer,RemoveToolTip,% (calcResult="?") ? 1000 : 3000
        runFlag:=true
    }
    ;输出计算（以=结尾）
    if(calcFlag && !notCalcFlag && selectResult){  ;选中内容多种类型时不输出公式结果
        StringTrimRight, selectResult, selectResult, 1
        Send_Str_Zz(selectResult)
        runFlag:=true
    }

    ;如果都没执行，提示
    if(!runFlag){
        MouseGetPos, MouseX, MouseY
        ToolTip, 执行未成功, % MouseX-50, % MouseY-25
        SetTimer,RemoveToolTip, 3000

    }

return




;=================================+++++++++++++++++++++==================================o|
;========================================================================================o|
;                                    应用独享快捷键                                      ;|
;                                                                                        ;|
;========================================================================================o|
;                                        Chrome                                          ;|
;----------------------------------------------------------------------------------------o|
#IfWinActive ahk_exe chrome.exe

;----------------------------------------------------------------------------------------o|
;                                   Ctrl+F || 搜索选中的内容                             ;|
;----------------------------------------------------------------------------------------o|
^f::
    ClipboardOld = %clipboard% ;保留剪贴板中原来的内容
    Send ^c
    Send ^f
    Send ^v
    Send ^a
    clipboard = %ClipboardOld%
return

;----------------------------------------------------------------------------------------o|
;                                   Alt+1/2 || 搜索上/下一处                             ;|
;----------------------------------------------------------------------------------------o|
!1::
    Send {Shift down}{Enter}{Shift up}
return

!2::
    Send {Enter}
return


;----------------------------------------------------------------------------------------o|
;                                     Alt+V || 查看框架源代码                            ;|
;----------------------------------------------------------------------------------------o|
!v::
    Send {Ctrl down}u{Ctrl up}
return


;----------------------------------------------------------------------------------------o|
;                               Alt+Shift+V || F12查看源代码                             ;|
;----------------------------------------------------------------------------------------o|
!+v::
    Send {F12}
return
#IfWinActive


;========================================================================================o|
;                                     Explorer资源浏览器                                 ;|
;----------------------------------------------------------------------------------------o|
;----------------------------------------------------------------------------------------o|
;                             Win+N || 新建文件夹，并以当前日期自动命名                  ;|
;----------------------------------------------------------------------------------------o|
#IfWinActive ahk_exe explorer.exe

#n::
    now_dir:= A_Desktop
    ;~ WinGetClass class, ahk_id WinExist("A")
    WinGet, active_id, ID, A                        ;获取当前激活页面的id并赋值给active_id变量
    WinGetClass, this_class, ahk_id %active_id%     ;获取窗口class
    WinGetTitle, this_title, ahk_id %active_id%     ;获取窗口title标题

    if (this_class ~= "(Cabinet|Explore)WClass") {
        Send,!d                                     ;Explorer资源浏览器 Alt+D 定位到地址栏
        ControlGetText,now_dir,Edit1,A              ;从控件获取内容
        Send, {Enter}
    }

    dir_name = %A_YYYY%-%A_MM%-%A_DD%_              ;拼接时间
    dir_name_site = %dir_name%                      ;临时存储文件夹名
    final_dir_name = %now_dir%\%dir_name%           ;获取文件夹真实路径：文件夹目录+文件夹名
    tmp_dir_name = %final_dir_name%                 ;设置临时文件夹真实路径
    while InStr(FileExist(tmp_dir_name), "D")       ;判断文件夹真实路径是否存在
    {
        end_fix := Chr(96+A_index)                  ;如果存在，循环添加abcd..后缀
        dir_name_site = %dir_name%%end_fix%
        tmp_dir_name = %final_dir_name%%end_fix%
    }
    final_dir_name = %tmp_dir_name%                 ;最终的文件夹名
    Send {Alt down}2{Alt up}                        ;新建文件夹

    ClipboardOld = %clipboard%                      ;保留剪贴板中原来的内容
    clipboard = %dir_name_site%

    SwitchIME(0x04090409)                           ; 英语(美国) 美式键盘
    Send %dir_name_site%
    Send {Enter}
    clipboard = %ClipboardOld%
return

#IfWinActive




;========================================================================================o|
;                                      Total Commander                                   ;|
;----------------------------------------------------------------------------------------o|
;----------------------------------------------------------------------------------------o|
;                             Win+N || 新建文件夹，并以当前日期自动命名                  ;|
;----------------------------------------------------------------------------------------o|
#IfWinActive ahk_exe TotalCMD64.exe

#n::

    ClipboardOld = %clipboard%                      ;保留剪贴板中原来的内容

    now_dir:= A_Desktop
    ;~ WinGetClass class, ahk_id WinExist("A")
    WinGet, active_id, ID, A                        ;获取当前激活页面的id并赋值给active_id变量
    WinGetClass, this_class, ahk_id %active_id%     ;获取窗口class
    WinGetTitle, this_title, ahk_id %active_id%     ;获取窗口title标题

    Send {Ctrl down}1{Ctrl up}                      ;total commander获取当前文件夹路径快捷键

    dir_name=%A_YYYY%-%A_MM%-%A_DD%_                ;拼接时间
    dir_name_site=%dir_name%                        ;临时存储文件夹名
    final_dir_name=%clipboard%\%dir_name%           ;获取文件夹真实路径：文件夹目录+文件夹名
    tmp_dir_name=%final_dir_name%                   ;设置临时文件夹真实路径
    while InStr(FileExist(tmp_dir_name), "D")       ;判断文件夹真实路径是否存在
    {
        end_fix:=Chr(96+A_index)                    ;如果存在，循环添加abcd..后缀
        dir_name_site=%dir_name%%end_fix%
        tmp_dir_name=%final_dir_name%%end_fix%
    }
    final_dir_name=%tmp_dir_name%
    FileCreateDir, %final_dir_name%                 ;创建文件夹真实路径的目录

    MouseClick, left
    Sleep 100
    Send {Ctrl down}r{Ctrl up}                      ;total commander  刷新目录
    Sleep 100

    SwitchIME(0x04090409)                           ; 英语(美国) 美式键盘
    Send, %dir_name_site%                           ; 定位到新创建的文件夹
return

#IfWinActive





