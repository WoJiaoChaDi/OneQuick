
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

/*
==============================Windows增强=========================================
*/

/*
 * @Description: Win+Esc映射为 alt+F4
 * @author XuDong
 */
#Esc::!F4

/*
 * @Description: shift+alt+1 --> ctrl+home
 * @author XuDong
 */
+!1::
	Send ^{Home}
return

/*
 * @Description: shift+alt+1 --> ctrl+end
 * @author XuDong
 */
+!2::
	Send ^{End}
return

/*
 * @Description: ctrl+win+c 复制文件路径
 * @author XuDong
 */
^#c::
	send ^c
	sleep,200
	clipboard=%clipboard% ; 这句还是废话一下：windows 复制的时候，剪贴板保存的是“路径”。只是路径不是字符串，只要转换成字符串就可以粘贴出来了。
	tooltip,%clipboard%
	sleep,1000
	tooltip,
return 

 /*
 win+上滚轮 透明窗口
*/
#WheelUp::
	WinGet, active_id, ID, A    ;获取当前激活页面的id
	WinGet, active_tran, Transparent, A    ;获取当前激活页面的id
	if(active_tran == ""){
		active_tran = 255
	}
	active_tran := active_tran + 10
	if(active_tran >= 255){
		active_tran = 255
	}
	WinSet, Transparent, %active_tran%, ahk_id %active_id%		;修改透明值
return

 /*
win+下滚轮  透明窗口
*/
#WheelDown::
	WinGet, active_id, ID, A    ;获取当前激活页面的id
	WinGet, active_tran, Transparent, A    ;获取当前激活页面的id
	if(active_tran == ""){
		active_tran = 255
	}
	active_tran := active_tran - 10
	if(active_tran <= 0){
		active_tran = 0
	}
	WinSet, Transparent, %active_tran%, ahk_id %active_id%		;修改透明值
return

 /*
按esc切换输入法  --  SwitchIME方法在   \OneQuick\script\OneQuick.Core.ahk
*/
~esc::
	; 下方代码可只保留一个
	SwitchIME(0x04090409) ; 英语(美国) 美式键盘
	; SwitchIME(0x08040804) ; 中文(中国) 简体中文-美式键盘
return


/*
Ctrl+Delete 等于剪切（右Ctrl）
*/
RControl & Del::
	Send ^x
return

/*
Ctrl+PrintScreen 等于复制（右Ctrl）
*/
RControl & PrintScreen::
	Send ^c
return

/*
Ctrl & Insert 等于粘贴（右Ctrl）
*/
RControl & Ins::
	Send ^v
return

/* CapsLock+ 功能 */
/*
按住CapsLock + ESDF，映射上下左右
*/
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

/*
按住CapsLock + IJKL，映射Shift+上下左右
*/
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

/*
按住CapsLock + XC，映射Shift+Home、Shift+End  
*/
CapsLock & X::
	Send +{Home}
return
CapsLock & C::
	Send +{End}
return

/*
按住CapsLock + AG，映射Ctrl+左右  
*/
CapsLock & A::
	Send ^{Left}
return
CapsLock & G::
	Send ^{Right}
return

/*
按住CapsLock + WR，删除光标前后的字母
*/
CapsLock & W::
	Send {Backspace}
return
CapsLock & R::
	Send {Del}
return

/*
按住CapsLock + QT，删除光标前后的所有内容
*/
CapsLock & Q::
	Send ^{Backspace}
return
CapsLock & T::
	Send ^{Del}
return

/*
按住CapsLock + Space，另起一行
*/
CapsLock & Space::
	Send {Enter}
return

/*
按住CapsLock + Enter，另起一行
*/
CapsLock & Enter::
	Send {End}{Enter}
return

/*
按住CapsLock + BackSpace，删除本行所有内容
*/
CapsLock & BackSpace::
	Send {End}^{BackSpace}
return


/*
====================================快捷键输入========
*/
/*
* @Description: //enter Home+Tab格式化
* @author XuDong
*/
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

/*
 * @Description: //t 计时器
 * @author XuDong
 */
:://t::
	InputBox, time, timer, Plz input times unit is s	; 弹出一个输入框，标题是“计时器”，内容是“请输入一个时间（单位是秒）”
	millisecond := time*1000	; 如果一个变量要做计算的话，一定要像这样写，和平常的算式相比，多了一个冒号。sleep 的时间是按照千分之一秒算的，这里乘以 1000 就变成秒了。
	Sleep,%millisecond%
	MsgBox Time is Over(%time%s)
return



/*
====================================打开应用=============================================
*/

/*
 * @Description: win+b 打开sublime_text
 * @author XuDong
 */
#b::	
	Run E:\SoftWare\Sublime Text 3\sublime_text.exe
 return  

/*
 * @Description: win+f 打开everything
 * @author XuDong
 */
#f::	
	Run F:\SoftWare\Everything\Everything.exe
 return  

 /*
 * @Description: win+t 打开total commander
 * @author XuDong
 */
#y::	
	Run E:\Total Commander v9.51.62_64bit\TotalCMD\TotalCMD64.exe
 return  




/*
=================================特色功能================================================
*/

/*
按住CapsLock和左键任意位置，可以任意位置拖动当前窗口
*/
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

/*
* 新增热字符串,是在本脚本的末尾新增字段（会自动替换热键重名的热字符串）
* 热字符串都是以 :R::***::  形式的，所以不要在本脚本的其他地方用:R::***::形式的热字符串 
* :R:: 表示  按照原样发送替换文本
*/
#v:: 
	;获取当前选中的文本。使用剪贴板代替 "ControlGet Selected" 
	;是因为它能在更多种类的编辑器(也就是字处理软件)中起作用。
	;当前剪贴板中的内容将被保存，以便之后恢复。尽管只能恢复纯文本，但总比没有的好：
	AutoTrim Off  ;保留剪贴板中首尾的空白字符。
	ClipboardOld = %ClipboardAll%
	Clipboard =  ;为检验正确，需要清空。
	Send ^c
	ClipWait 1
	if ErrorLevel  ; ClipWait 超时
		return
	;将回车换行和/或换行符替换为 `n 以便使用在一个 "send-raw" 的热字符串中：
	;对任何在 raw 模式下可能出问题的其他字符应用同样的操作：
	StringReplace, Hotstring, Clipboard, ``, ````, All  ;为避免与下列替换冲突，先作这个替换。
	StringReplace, Hotstring, Hotstring, `r`n, ``r, All  ;在微软 Word 等等软件中 `r 比 `n 表现得更好。
	StringReplace, Hotstring, Hotstring, `n, ``r, All
	StringReplace, Hotstring, Hotstring, %A_Tab%, ``t, All
	StringReplace, Hotstring, Hotstring, `;, ```;, All
	Clipboard = %ClipboardOld%  ;恢复记事本之前的内容
	;这将把输入对话框中的光标移动到更人性化的位置：
	SetTimer, MoveCaret, 10
	;显示提供了缺省热字符串的输入对话框：
	;InputBox, Hotstring, MyHotstring, 在光标处输入你的缩写。`n需要的话，你也可以编辑替换文本。 , , , 150, , , , , :R:`::%Hotstring%
	InputBox, Hotstring, MyHotstring, Type your abbreviation at the cursor`, `nYou can also modify and edit the replacement text.  , , , 150, , , , , :R:`::%Hotstring%
	if ErrorLevel  ;用户选择了取消
		return
	IfInString, Hotstring, :R`:::
	{
		MsgBox 你没有输入缩写。热字符串不会被添加。
		return
	}
	
	;判断该热键是否已经被使用，如果已经被使用，则删除使用的那行
	ahk_bak_flag = 0
	ahk_bak_dir = %A_ScriptFullPath%
	ahk_bak_dir := SubStr(ahk_bak_dir, 1 , StrLen(ahk_bak_dir) - 4)  ;字符串截取
	ahk_bak_dir = %ahk_bak_dir%_bak.ahk
	FileDelete, %ahk_bak_dir%    ;删除备份文件
	
    Loop, read, %A_ScriptFullPath%    ;一行一行循环读取文件
    {
        ;~ MsgBox, 第 %A_Index% 个片段是 %A_LoopReadLine%。
		ahk_search_str = %Hotstring%
		
		ahk_index := InStr(ahk_search_str,"::") ;查找::字符在titile这个变量中的位置，并赋值给indexJava  (位置是从1开始
		ahk_search_str := SubStr(ahk_search_str, 1 , ahk_index+1)  ;字符串截取   即热键字符串  :R:***::  这部分
        IfInString, A_LoopReadLine, %ahk_search_str%		;判断新增的热键是否已经存在，如果已经存在，则是新增一个备份文件，等待写完备份文件后，删除主文件，更改备份文件名称为主文件名称
		{
			;如果新增的热键已经存在，则把新的字符串往备份文件里面写
			FileAppend, %Hotstring%`n, %ahk_bak_dir%  ;在字符串开头放一个 `n 以防文件在它的末尾没有空行。
			ahk_bak_flag = 1
        }else{
			;如果新增的热键不存在，则把旧的字符串往备份文件里面写
			FileAppend, %A_LoopReadLine%`n, %ahk_bak_dir%    ;除开第一行写入备份文件
		}
    }
	
	if(1 == ahk_bak_flag){
		;如果有替换的热键，则删除源文件，并把备份文件重命名为源文件
		FileDelete, %A_ScriptFullPath%    ;删除源文件
		FileMove, %ahk_bak_dir%, %A_ScriptFullPath% ; 重命名单个文件。
	}else{
		;否则，在源文件的基础上添加热字符串并重新加载脚本：
		FileAppend, `n%Hotstring%, %A_ScriptFullPath%  ;在字符串开头放一个 `n 以防文件在它的末尾没有空行。
		FileDelete, %ahk_bak_dir%    ;删除备份文件
	}
	
	;重新加载脚本
	Reload
	Sleep 200 ;如果重新加载成功，那么在 Sleep 期间就会关闭这个实例，这样就永远不会运行到下一行。
	MsgBox, 4,, 刚刚添加的热字符串格式化不正确。你要打开脚本编辑么？注意，有问题的热字符串在脚本的最后一行。
	IfMsgBox, Yes, Edit
return

MoveCaret:
	IfWinNotActive, MyHotstring
		return
	;否则，将输入对话框中的光标移动到用户输入缩写的位置。
	Send {Home}{Right 3}
	SetTimer, MoveCaret, Off
return
