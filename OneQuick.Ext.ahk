
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


class User_WoJiaoChaDiPC
{
	Ini()
	{
		this.Run := 1        
	}
}










;========================================================================================o|
;                                    Windows增强                                         ;|
;----------------------------------------------------------------------------------------o|
;                                Win+Esc映射为 alt+F4                                    ;|
;                                Ctrl+Win+C 复制文件路径                                 ;|
;                                Win+上滚轮 透明窗口                                     ;|
;                                Win+下滚轮  透明窗口                                    ;|
;                                按esc切换输入法                                         ;|
;                SwitchIME方法在   \OneQuick\script\OneQuick.Core.ahk                    ;|
;                                Ctrl+Delete 等于剪切（右Ctrl）                          ;|
;                                Ctrl+PrintScreen 等于复制（右Ctrl）                     ;|
;                                Ctrl & Insert 等于粘贴（右Ctrl）                        ;|
;                                CapsLock+ 功能 ;                                        ;|
;                        按住CapsLock + ESDF，映射上下左右                               ;|
;                        按住CapsLock + IJKL，映射Shift+上下左右                         ;|
;                            CapsLock + XC，映射Home、End                                ;|
;                            CapsLock+1 --> Ctrl+Home                                    ;|
;                            CapsLock+1 --> Ctrl+Shift+Home                              ;|
;                            CapsLock+1 --> Ctrl+End                                     ;|
;                            CapsLock+1 --> Ctrl+Shift+End                               ;|
;                            CapsLock + ↑ ↓，发送滚轮↑ ↓                                 ;|
;                            CapsLock + ZV，映射Shift+Home、Shift+End                    ;|
;                            CapsLock + AG，映射Ctrl + ← →                               ;|
;                            CapsLock + WR，删除光标前后的字母                           ;|
;                            CapsLock + QT，删除光标前后的单词                           ;|
;                            CapsLock + Space，等同于Enter                               ;|
;                            CapsLock + Enter，另起一行                                  ;|
;                            CapsLock + ;，另起一行                                      ;|
;                            CapsLock + BackSpace，删除本行所有内容                      ;|
;                            CapsLock + Y，删除本行所有内容                              ;|
;                            CapsLock + H，发送Enter                                     ;|
;                            CapsLock + 滚轮↑，向左滚动                                  ;|
;                        按住CapsLock + 滚轮下，向右滚动                                 ;|
;----------------------------------------------------------------------------------------o|


;========================================================================================o|
;                                Win+Esc映射为 alt+F4                                    ;|
;----------------------------------------------------------------------------------------o|
#Esc::!F4


;========================================================================================o|
;                                Ctrl+Win+C 复制文件路径                                 ;|
;----------------------------------------------------------------------------------------o|
^#c::
	send ^c
	sleep,200
	; 这句还是废话一下：windows 复制的时候，剪贴板保存的是“路径”。
	;只是路径不是字符串，只要转换成字符串就可以粘贴出来了。
	clipboard=%clipboard%

	tooltip,%clipboard%
	sleep,1000
	tooltip,
return 


;========================================================================================o|
;                                Win+上滚轮 透明窗口                                     ;|
;----------------------------------------------------------------------------------------o|
#WheelUp::
	;获取当前激活页面的id
	WinGet, active_id, ID, A
	;获取当前激活页面的id
	WinGet, active_tran, Transparent, A
	if(active_tran == ""){
		active_tran = 255
	}
	active_tran := active_tran + 10
	if(active_tran >= 255){
		active_tran = 255
	}
	;修改透明值
	WinSet, Transparent, %active_tran%, ahk_id %active_id%
return


;========================================================================================o|
;                                Win+下滚轮  透明窗口                                    ;|
;----------------------------------------------------------------------------------------o|
#WheelDown::
	;获取当前激活页面的id
	WinGet, active_id, ID, A
	;获取当前激活页面的id
	WinGet, active_tran, Transparent, A
	if(active_tran == ""){
		active_tran = 255
	}
	active_tran := active_tran - 10
	if(active_tran <= 0){
		active_tran = 0
	}
	;修改透明值
	WinSet, Transparent, %active_tran%, ahk_id %active_id%
return


;========================================================================================o|
;                                按esc切换输入法                                         ;|
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
;                                Ctrl+Delete 等于剪切（右Ctrl）                          ;|
;----------------------------------------------------------------------------------------o|
RControl & Del::
	Send ^x
return


;========================================================================================o|
;                                Ctrl+PrintScreen 等于复制（右Ctrl）                     ;|
;----------------------------------------------------------------------------------------o|
RControl & PrintScreen::
	Send ^c
return


;========================================================================================o|
;                                Ctrl & Insert 等于粘贴（右Ctrl）                        ;|
;----------------------------------------------------------------------------------------o|
RControl & Ins::
	Send ^v
return


;========================================================================================o|
;                                CapsLock+ 功能 ;                                        ;|
;                        按住CapsLock + ESDF，映射上下左右                               ;|
;----------------------------------------------------------------------------------------o|
CapsLock & E::
	Send {Up}
return
CapsLock & S::
	Send {Left}
return
CapsLock & D::
	Send {Down}
return
CapsLock & F::
	Send {Right}
return


;========================================================================================o|
;                        按住CapsLock + IJKL，映射Shift+上下左右                         ;|
;----------------------------------------------------------------------------------------o|
CapsLock & I::
	Send +{Up}
return
CapsLock & J::
	Send +{Left}
return
CapsLock & K::
	Send +{Down}
return
CapsLock & L::
	Send +{Right}
return

CapsLock & N::
	Send +{Left 5}
return
CapsLock & M::
	Send +{Right 5}
return
CapsLock & B::
	Send +^{Left}
return
CapsLock & ,::
	Send +^{Right}
return


;========================================================================================o|
;                            CapsLock + XC，映射Home、End                                ;|
;----------------------------------------------------------------------------------------o|
CapsLock & X::
	Send {Home}
return
CapsLock & C::
	Send {End}
return


;========================================================================================o|
;                            CapsLock+1 --> Ctrl+Home                                    ;|
;----------------------------------------------------------------------------------------o|
CapsLock & 1::
	Send ^{Home}
return


;========================================================================================o|
;                            CapsLock+1 --> Ctrl+Shift+Home                              ;|
;----------------------------------------------------------------------------------------o|
CapsLock & F1::
	Send ^+{Home}
return


;========================================================================================o|
;                            CapsLock+1 --> Ctrl+End                                     ;|
;----------------------------------------------------------------------------------------o|
CapsLock & 2::
	Send ^{End}
return


;========================================================================================o|
;                            CapsLock+1 --> Ctrl+Shift+End                               ;|
;----------------------------------------------------------------------------------------o|
CapsLock & F2::
	Send ^+{End}
return


;========================================================================================o|
;                            CapsLock + ↑ ↓，发送滚轮↑ ↓                                 ;|
;----------------------------------------------------------------------------------------o|
CapsLock & 3::
	Loop 5
    Click WheelUp
return
CapsLock & 4::
	Loop 5
    Click WheelDown
return


;========================================================================================o|
;                            CapsLock + ZV，映射Shift+Home、Shift+End                    ;|
;----------------------------------------------------------------------------------------o|
CapsLock & Z::
	Send +{Home}
return
CapsLock & V::
	Send +{End}
return


;========================================================================================o|
;                            CapsLock + AG，映射Ctrl + ← →                               ;|
;----------------------------------------------------------------------------------------o|
CapsLock & A::
	Send ^{Left}
return
CapsLock & G::
	Send ^{Right}
return


;========================================================================================o|
;                            CapsLock + WR，删除光标前后的字母                           ;|
;----------------------------------------------------------------------------------------o|
CapsLock & W::
	Send {Backspace}
return
CapsLock & R::
	Send {Del}
return


;========================================================================================o|
;                            CapsLock + QT，删除光标前后的单词                           ;|
;----------------------------------------------------------------------------------------o|
CapsLock & Q::
	Send ^{Backspace}
return
CapsLock & T::
	Send ^{Del}
return


;========================================================================================o|
;                            CapsLock + Space，等同于Enter                               ;|
;----------------------------------------------------------------------------------------o|
CapsLock & Space::
	Send {Enter}
return


;========================================================================================o|
;                            CapsLock + Enter，另起一行                                  ;|
;----------------------------------------------------------------------------------------o|
CapsLock & Enter::
	Send {End}{Enter}
return


;========================================================================================o|
;                            CapsLock + ;，另起一行                                      ;|
;----------------------------------------------------------------------------------------o|
CapsLock & `;::
	Send {End}{Enter}
return


;========================================================================================o|
;                            CapsLock + BackSpace，删除本行所有内容                      ;|
;----------------------------------------------------------------------------------------o|
CapsLock & BackSpace::
	Send {End}+{Home}{BackSpace}
return


;========================================================================================o|
;                            CapsLock + Y，删除本行所有内容                              ;|
;----------------------------------------------------------------------------------------o|
CapsLock & Y::
	Send {End}+{Home}{BackSpace}
return


;========================================================================================o|
;                            CapsLock + H，发送Enter                                     ;|
;----------------------------------------------------------------------------------------o|
CapsLock & H::
	Send {End}{Enter}
return


;========================================================================================o|
;                            CapsLock + 滚轮↑，向左滚动                                  ;|
;----------------------------------------------------------------------------------------o|
CapsLock & WheelUp::
ControlGetFocus, fcontrol, A
	;调大Loop值来快速滚动。 
	Loop 15  
		; 0x114 是 WM_HSCROLL，它之后的 0 是 SB_LINELEFT。
		SendMessage, 0x114, 0, 0, %fcontrol%, A 
return


;========================================================================================o|
;                        按住CapsLock + 滚轮下，向右滚动                                 ;|
;----------------------------------------------------------------------------------------o|
CapsLock & WheelDown::
ControlGetFocus, fcontrol, A
	;调大Loop值来快速滚动。 
	Loop 15   
		; 0x114 是 WM_HSCROLL，它之后的 1 是 SB_LINERIGHT。
		SendMessage, 0x114, 1, 0, %fcontrol%, A 
return
























;========================================================================================o|
;                                     快捷键输入                                         ;|
;----------------------------------------------------------------------------------------o|
;                               //e Home+Tab 循环格式化                                  ;|
;                               //s Home+多个空格  循环格式化                            ;|
;                                    //t 计时器                                          ;|
;----------------------------------------------------------------------------------------o|


;========================================================================================o|
;                               //e Home+Tab 循环格式化                                  ;|
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
;                               //s Home+多个空格  循环格式化                            ;|
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
;                                    //t 计时器                                          ;|
;----------------------------------------------------------------------------------------o|
:://t::
	InputBox, time, timer, Plz input times unit is s	; 弹出一个输入框，标题是“计时器”，内容是“请输入一个时间（单位是秒）”
	millisecond := time*1000	; 如果一个变量要做计算的话，一定要像这样写，和平常的算式相比，多了一个冒号。sleep 的时间是按照千分之一秒算的，这里乘以 1000 就变成秒了。
	Sleep,%millisecond%
	MsgBox Time is Over(%time%s)
return








;========================================================================================o|
;                                    打开应用                                            ;|
;----------------------------------------------------------------------------------------o|


;========================================================================================o|
;                                Win+b 打开sublime_text                                  ;|
;----------------------------------------------------------------------------------------o|
#b::	
	Run D:\Work\Tools\Sublime Text 3\sublime_text.exe
 return  


;========================================================================================o|
;                                Win+f 打开everything                                    ;|
;----------------------------------------------------------------------------------------o|
#f::	
	Run D:\SoftWare\Everything-1.4.0.713b.x86-Setup\Everything.exe
 return  


;========================================================================================o|
;                                Win+t 打开total commander                               ;|
;----------------------------------------------------------------------------------------o|
#y::	
	Run D:\SoftWare\Total Commander v9.51.62_64bit\TotalCMD\TotalCMD64.exe
 return  























;========================================================================================o|
;                                    特色功能                                            ;|
;----------------------------------------------------------------------------------------o|
;                按住CapsLock和左键，可以在窗口的任意位置拖动当前窗口                    ;|
;                                  Win+V 新增热字符串                                    ;|
;----------------------------------------------------------------------------------------o|


;========================================================================================o|
;                按住CapsLock和左键，可以在窗口的任意位置拖动当前窗口                    ;|
;----------------------------------------------------------------------------------------o|
CapsLock & LButton::
CoordMode, Mouse ; Switch to screen/absolute coordinates.
MouseGetPos, EWD_MouseStartX, EWD_MouseStartY, EWD_MouseWin
WinGetPos, EWD_OriginalPosX, EWD_OriginalPosY,,, ahk_id %EWD_MouseWin%
WinGet, EWD_WinState, MinMax, ahk_id %EWD_MouseWin% 
if EWD_WinState = 0 ; Only if the window isn't maximized 
SetTimer, EWD_WatchMouse, 10 ; Track the mouse as the user drags it.
return
 
EWD_WatchMouse:
GetKeyState, EWD_LButtonState, LButton, P
	if EWD_LButtonState = U ; Button has been released, so drag is complete.
	{
	SetTimer, EWD_WatchMouse, off
	return
	}
GetKeyState, EWD_EscapeState, Escape, P
	if EWD_EscapeState = D ; Escape has been pressed, so drag is cancelled.
	{
	SetTimer, EWD_WatchMouse, off
	WinMove, ahk_id %EWD_MouseWin%,, %EWD_OriginalPosX%, %EWD_OriginalPosY%
	return
	}
	; Otherwise, reposition the window to match the change in mouse coordinates
	; caused by the user having dragged the mouse:
	CoordMode, Mouse
	MouseGetPos, EWD_MouseX, EWD_MouseY
	WinGetPos, EWD_WinX, EWD_WinY,,, ahk_id %EWD_MouseWin%
	SetWinDelay, -1 ; Makes the below move faster/smoother.
	WinMove, ahk_id %EWD_MouseWin%,, EWD_WinX + EWD_MouseX - EWD_MouseStartX, EWD_WinY + EWD_MouseY - EWD_MouseStartY
	EWD_MouseStartX := EWD_MouseX ; Update for the next timer-call to this subroutine.
	EWD_MouseStartY := EWD_MouseY
return



;========================================================================================o|
;                                  Win+V 新增热字符串                                    ;|
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



