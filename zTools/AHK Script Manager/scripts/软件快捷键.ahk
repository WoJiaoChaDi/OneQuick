
/*
===================================使用chrome时候的快捷键================================
*/
*/
#IfWinActive ahk_exe chrome.exe
 /*
使用chrome，按alt+2  查看chrome下一处搜索
*/
!2::
	MouseGetPos, xpos, ypos ;获取鼠标当前的位置
	MouseClick, left, 1851, 111, ,0 ;下一个
	MouseMove, %xpos%, %ypos%, 0 ;移动鼠标到原来位置
return

 /*
使用chrome，按alt+1  查看chrome上一处搜索
*/
!1::
	MouseGetPos, xpos, ypos ;获取鼠标当前的位置
	MouseClick, left, 1824, 108, ,0 ;上一个
	MouseMove, %xpos%, %ypos%, 0 ;移动鼠标到原来位置
return

 /*
使用chrome，按ctrl+f  自动搜索选中文字
*/
^f::
	ClipboardOld = %clipboard% ;保留剪贴板中原来的内容
	Send ^c
	Send ^f
	Send ^v
	Send ^a
	clipboard = %ClipboardOld%
return

 /*
使用chrome时，按Alt+v,查看框架源代码
*/
!v::
	MouseClick, right
	Send vv{enter}
return

 /*
使用chrome时，按Ctrl+Shift+X,查看框架源代码
*/
^+x::
	Send {F12}
return
#IfWinActive


/*
====================================使用文件资源管理器时候开始====================
*/
#IfWinActive ahk_exe explorer.exe

/*
新建文件夹，并以当前日期自动命名

#t::
	now_dir:= A_Desktop
	;~ WinGetClass class, ahk_id WinExist("A")
	WinGet, active_id, ID, A    ;获取当前激活页面的id并赋值给active_id变量
	WinGetClass, this_class, ahk_id %active_id%		;获取窗口class
	WinGetTitle, this_title, ahk_id %active_id%		;获取窗口title标题

	 if (this_class ~= "(Cabinet|Explore)WClass") {
		Send,!d		;alt+d 定位到地址栏
		ControlGetText,now_dir,Edit1,A	;从控件获取内容
		Send, {Enter}
	}
	dir_name=%A_YYYY%-%A_MM%-%A_DD%_	;拼接时间
	dir_name_site=%dir_name%		    ;临时存储
	final_dir_name=%now_dir%\%dir_name%
	tmp_dir_name=%final_dir_name%
	while InStr(FileExist(tmp_dir_name), "D")	;判断文件是否存在
	{
		end_fix:=Chr(96+A_index)
		dir_name_site=%dir_name%%end_fix%
		tmp_dir_name=%final_dir_name%%end_fix%
	}
	final_dir_name=%tmp_dir_name%
	FileCreateDir, %final_dir_name%		;创建目录
	MouseClick, left
	Sleep 300
	SwitchIME(0x04090409) ; 英语(美国) 美式键盘
	Send, %dir_name_site%
return
*/

#IfWinActive