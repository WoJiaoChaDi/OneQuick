/*

v.1.5.2.2
��������eclipse��svn�Աȹ���ʱ����insert����ͬ���滻�ɾ�����

v.1.5.2.1
�Ż�wpfʱ��ctrl+shift+f,�Զ�������һ��sheet�������棬��ʱ����Ч��bug

v1.5.2
wpfʱ��ctrl+shift+f,�Զ�������һ��sheet�������棬Ȼ������

v1.5.1
���ʹ��chromeʱ��ctrl+shift+x ӳ��Ϊ F12�򿪿���̨
*/

GroupAdd, EclipseAllWindow , ahk_class #32770
GroupAdd, EclipseAllWindow , ahk_class SWT_Window0

/*
----------------------------------------------------------------------------------------------------------------------ʹ��WPS���ʱ��Ŀ�ݼ�----------------------------------------------------------------------------------------------------------------------
*/
#IfWinActive ahk_exe et.exe
 /*
ʹ��WPS���ʱ����Ctrl+Shift+F ������ҳ��������
*/
^+f::
		title := Sys.Win.Title()
	indexSubmit := InStr(title,"WPS ���")
	if(indexSubmit != 0){
			MouseClick, left, 12, 1005 ;���ص�һ��ҳ��
			MouseClick, left, 107, 1010 ;���ص�һ��ҳ��
			MouseClick, left, 107, 1010 ;���ص�һ��ҳ��
			MouseClick, left, 121, 902 ;����һ������
			Send ^{Home}
			Send ^f
			Send ^v
			Send ^a
	}else{
			Send ^+f
	}	
return

#IfWinActive
/*
------------------------------------------------------------------------------------------------------------------ʹ��WPS���ʱ�����------------------------------------------------------------------------------------------------------------------
*/

 /*
----------------------------------------------------------------------------------------------------------------------ʹ��chromeʱ��Ŀ�ݼ�----------------------------------------------------------------------------------------------------------------------
*/
#IfWinActive ahk_exe chrome.exe
 /*
ʹ��chrome����alt+2  �鿴chrome��һ������
*/
!2::
	MouseGetPos, xpos, ypos ;��ȡ��굱ǰ��λ��
	MouseClick, left, 1851, 111, ,0 ;��һ��
	MouseMove, %xpos%, %ypos%, 0 ;�ƶ���굽ԭ��λ��
return

 /*
ʹ��chrome����alt+1  �鿴chrome��һ������
*/
!1::
	MouseGetPos, xpos, ypos ;��ȡ��굱ǰ��λ��
	MouseClick, left, 1824, 108, ,0 ;��һ��
	MouseMove, %xpos%, %ypos%, 0 ;�ƶ���굽ԭ��λ��
return

 /*
ʹ��chrome����ctrl+f  �Զ�����ѡ������
*/
^f::
	ClipboardOld = %clipboard% ;������������ԭ��������
	Send ^c
	Send ^f
	Send ^v
	Send ^a
	clipboard = %ClipboardOld%
return

 /*
ʹ��chromeʱ����Alt+v,�鿴���Դ����
*/
!v::
	MouseClick, right
	Send vv{enter}
return

 /*
ʹ��chromeʱ����Ctrl+Shift+X,�鿴���Դ����
*/
^+x::
	Send {F12}
return


#IfWinActive
/*
---------------------------------------------------------------------------------------------------ʹ��chromeʱ�����----------------------------------------------------------------------------
*/


/*
---------------------------------------------------------------------------------------------------ʹ��EclipseAllWindow��ʱ�򣨸ô����鶨����  ���ļ�ͷ  �У�----------------------------------------------------------------------------------------------------------------------
*/
#IfWinActive ahk_group EclipseAllWindow


/*
��eclipse���棬win+w�����ɺϲ�������ļ�Ŀ¼
*/
#w::
	WinGet, active_id, ID, A    ;��ȡ��ǰ����ҳ���id����ֵ��active_id����
	WinGetClass, this_class, ahk_id %active_id%		;��ȡ����class
	WinGetTitle, this_title, ahk_id %active_id%		;��ȡ����title����
	
	index := InStr(this_title, " - ")
	
	mic := SubStr(this_title, 1, index-1)
	dir := SubStr(this_title, index+3)
	dir := SubStr(dir, 1, StrLen(file_name)-10 )
	dir := RegExReplace(dir, "\/", "\")     ;��ƥ����ַ����滻��"123"���������滻���ֵ
	
	real_dir = D:\Work\PeteCat\eclipse-jee-����_mic����_�ϲ�\%dir%
	
	open_dir(real_dir)	;���ļ�·��
	
return

/*
Ctrl+CapsLock --�� Ctrl + PgDn����һ����ͼ��
*/
^CapsLock::
	Send ^{PgDn}
return

/*
Ctrl+Shift+CapsLock --�� Ctrl + PgUp����һ����ͼ��
*/
^+CapsLock::
	Send ^{PgUp}
return

 /*
ʹ��eclipseʱ����Alt+Shift+Dִ��Ctrl+Shift+O  ����
*/
+!D::
	Send ^+o
return

 /*
ʹ��eclipseʱ����Ctrl+Bִ��Ctrl+O
*/
^B::
	Send ^o
return

 /*
ʹ��eclipseʱ����Alt+`ִ��Alt+/
*/
!`::
	Send !/
return

 /*
ʹ��eclipseʱ����ctrl+tab���������ż��л�
*/
^Tab::
	Send ^+p
return

 /*
��eclipse��svn�Աȹ���ʱ����insert����ͬ���滻�ɾ�����
*/
Insert::
	MouseGetPos, xpos, ypos ;��ȡ��굱ǰ��λ��
	title := Sys.Win.Title()
	indexSVN := InStr(title,"�ıȽ�")
	indexSVN2:= InStr(title,"SVN")
	indexJava := InStr(title,".java")
	indexXml := InStr(title,".xml")
	indexJsp  := InStr(title,".jsp")
	indexJs  := InStr(title,".js")
	if(indexSVN != 0 || indexSVN2 != 0 ){
		if(indexJsp != 0 && indexJs != 0){
			indexJs := 0
		}	
		if(indexJava != 0 `|`| indexJs != 0){
			MouseClick, left, 1769, 391, ,0 ;��svn�滻
		}
		if(indexXml != 0 `|`| indexJsp != 0 `|`| indexProperties != 0){
			MouseClick, left, 1769, 121, ,0 ;��svn�滻
		}
		MouseMove, %xpos%, %ypos%, 0 ;�ƶ���굽ԭ��λ��
				Send ^s
	}else{
		Send {Insert}
	}
return

 /*
ʹ��eclipseʱ����]  �鿴svnͬ������һ����ͬ
*/
]::
	title := Sys.Win.Title()
	indexSubmit := InStr(title,"�ύ")
	if(indexSubmit != 0){	;�ύʱ���
		MouseGetPos, xpos, ypos ;��ȡ��굱ǰ��λ��
		MouseClick, left, 1833, 114, ,0 ;��һ����ͬ
		MouseMove, %xpos%, %ypos%, 0 ;�ƶ���굽ԭ��λ��
	}else{
		indexSubmit2 := InStr(title,"Workspace")
		if(indexSubmit2 != 0){  ;synchronizeʱ���
			  MouseGetPos, xpos, ypos ;��ȡ��굱ǰ��λ��
			  title := Sys.Win.Title()
			  indexSVN := InStr(title,"�ıȽ�")
			  indexSVN2:= InStr(title,"SVN")
			  indexJava := InStr(title,".java")
			  indexXml := InStr(title,".xml")
			  indexJsp  := InStr(title,".jsp")
			  indexJs  := InStr(title,".js")
			  indexProperties  := InStr(title,".properties")
			  if(indexSVN != 0 || indexSVN2 != 0 ){
					  if(indexJsp != 0 && indexJs != 0){
									indexJs := 0
					  }	
					  if(indexJava != 0 `|`| indexJs != 0){
									;MouseClick, left, 1802, 391, ,0 ;��һ����ͬ
									
									ImageSearch, OutputVarXA, OutputVarYA, 0, 0, A_ScreenWidth, A_ScreenHeight,D:\SoftWare\AutoHotKey\AutoHotKey\tool\ReadFile\svn_next.bmp
									if ErrorLevel = 2 
									MsgBox ����ʵʩ������
									else if ErrorLevel = 1 
									1==1
									;MsgBox δ����Ļ��Ѱ��ͼ�ꡣ
									else{
											xa := OutputVarXA + 10
											ya := OutputVarYA
											MouseClick, left,  %xa%, %ya%, ,0	;��һ����ͬ
									}
					  }
					  if(indexXml != 0 `|`| indexJsp != 0 `|`| indexProperties != 0){
									;MouseClick, left, 1799, 119, ,0 ;��һ����ͬ
									
									ImageSearch, OutputVarXA, OutputVarYA, 0, 0, A_ScreenWidth, A_ScreenHeight,D:\SoftWare\AutoHotKey\AutoHotKey\tool\ReadFile\svn_next.bmp
									if ErrorLevel = 2 
									MsgBox ����ʵʩ������
									else if ErrorLevel = 1 
									1==1
									;MsgBox δ����Ļ��Ѱ��ͼ�ꡣ
									else{
											xa := OutputVarXA + 10
											ya := OutputVarYA
											MouseClick, left,  %xa%, %ya%, ,0	;��һ����ͬ
									}
					  }
					  MouseMove, %xpos%, %ypos%, 0 ;�ƶ���굽ԭ��λ��
				  }
		}else{
				Send ]
		}
	}	
return

 /*
ʹ��eclipseʱ����[  �鿴svnͬ������һ����ͬ
*/
[::
	title := Sys.Win.Title()
	indexSubmit := InStr(title,"�ύ")
	if(indexSubmit != 0){
		MouseGetPos, xpos, ypos ;��ȡ��굱ǰ��λ��
		MouseClick, left, 1857, 114, ,0 ;��һ����ͬ
		MouseMove, %xpos%, %ypos%, 0 ;�ƶ���굽ԭ��λ��
	}else{
		indexSubmit2 := InStr(title,"Workspace")
		if(indexSubmit2 != 0){
			  MouseGetPos, xpos, ypos ;��ȡ��굱ǰ��λ��
			  title := Sys.Win.Title()
			  indexSVN := InStr(title,"�ıȽ�")
			  indexSVN2:= InStr(title,"SVN")
			  indexJava := InStr(title,".java")
			  indexXml := InStr(title,".xml")
			  indexJsp  := InStr(title,".jsp")
			  indexJs  := InStr(title,".js")
			  if(indexSVN != 0 || indexSVN2 != 0 ){
					  if(indexJsp != 0 && indexJs != 0){
									indexJs := 0
					  }	
					  if(indexJava != 0 `|`| indexJs != 0){
									;MouseClick, left, 1822, 391, ,0 ;��һ����ͬ
									
									ImageSearch, OutputVarXA, OutputVarYA, 0, 0, A_ScreenWidth, A_ScreenHeight,D:\SoftWare\AutoHotKey\AutoHotKey\tool\ReadFile\svn_previous.bmp
									if ErrorLevel = 2 
									MsgBox ����ʵʩ������
									else if ErrorLevel = 1 
									1==1
									;MsgBox δ����Ļ��Ѱ��ͼ�ꡣ
									else{
											xa := OutputVarXA + 10
											ya := OutputVarYA
											MouseClick, left,  %xa%, %ya%, ,0	;��һ����ͬ
									}
					  }
					  if(indexXml != 0 `|`| indexJsp != 0 `|`| indexProperties != 0){
									;MouseClick, left, 1822, 121, ,0 ;��һ����ͬ
									
									ImageSearch, OutputVarXA, OutputVarYA, 0, 0, A_ScreenWidth, A_ScreenHeight,D:\SoftWare\AutoHotKey\AutoHotKey\tool\ReadFile\svn_previous.bmp
									if ErrorLevel = 2 
									MsgBox ����ʵʩ������
									else if ErrorLevel = 1 
									1==1
									;MsgBox δ����Ļ��Ѱ��ͼ�ꡣ
									else{
											xa := OutputVarXA + 10
											ya := OutputVarYA
											MouseClick, left,  %xa%, %ya%, ,0	;��һ����ͬ
									}
					  }
					  MouseMove, %xpos%, %ypos%, 0 ;�ƶ���굽ԭ��λ��
				  }
		}else{
		 Send [
		}
	}	
return

#IfWinActive
/*
------------------------------------------------------------------------------------------------------------------ʹ��EclipseAllWindowʱ�����
*/

/*
------------------------------------------------------------------------------------------------------------------ʹ���ļ���Դ������ʱ��ʼ----------------------------------------------------------------------------
*/
#IfWinActive ahk_exe explorer.exe

/*
�½��ļ��У����Ե�ǰ�����Զ�����

#t::
	now_dir:= A_Desktop
	;~ WinGetClass class, ahk_id WinExist("A")
	WinGet, active_id, ID, A    ;��ȡ��ǰ����ҳ���id����ֵ��active_id����
	WinGetClass, this_class, ahk_id %active_id%		;��ȡ����class
	WinGetTitle, this_title, ahk_id %active_id%		;��ȡ����title����

	 if (this_class ~= "(Cabinet|Explore)WClass") {
		Send,!d		;alt+d ��λ����ַ��
		ControlGetText,now_dir,Edit1,A	;�ӿؼ���ȡ����
		Send, {Enter}
	}
	dir_name=%A_YYYY%-%A_MM%-%A_DD%_	;ƴ��ʱ��
	dir_name_site=%dir_name%		    ;��ʱ�洢
	final_dir_name=%now_dir%\%dir_name%
	tmp_dir_name=%final_dir_name%
	while InStr(FileExist(tmp_dir_name), "D")	;�ж��ļ��Ƿ����
	{
		end_fix:=Chr(96+A_index)
		dir_name_site=%dir_name%%end_fix%
		tmp_dir_name=%final_dir_name%%end_fix%
	}
	final_dir_name=%tmp_dir_name%
	FileCreateDir, %final_dir_name%		;����Ŀ¼
	MouseClick, left
	Sleep 300
	SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
	Send, %dir_name_site%
return
*/

#IfWinActive
/*
------------------------------------------------------------------------------------------------------------------ʹ���ļ���Դ������ʱ�����----------------------------------------------------------------------------
*/

 /*
-----------------------------------------------------------�κ�ʱ��---------------------------------------------
*/


/*
 * @Description: alt+m �л���ǰ���ڵ����/��С��
 * @author XuDong
 */
WinStatus:=0		
!m::		
if WinStatus=0		
	{				 
		WinMaximize , A				 
		WinStatus:=1		
	}		
else		
	{				 
		WinRestore ,A				 
		WinStatus:=0		
	}		
return

/*
 * @Description: alt+n ��С����ǰ�����
 * @author XuDong
 */
!n::		
	WinMinimize, A
return

/*
 * @Description: Win+Escӳ��Ϊ alt+F4
 * @author XuDong
 */
#Esc::!F4

/*
 * @Description: alt+A ѡ�й���������������ݣ����ѹ�궨λ��ĩβ
 * @author XuDong
 */
!a::	
	Send {Home}
	Send {Home}	
	Send +{End}
 return		


/*
 * @Description: win+b ��sublime_text
 * @author XuDong
 */
#b::	
	Run D:\Work\Tools\Sublime Text 3\sublime_text.exe 
 return  

/*
 * @Description: win+f ��everything
 * @author XuDong
 */
#f::	
	Run E:\Software\Everything-1.4.0.713b.x86\Everything.exe
 return  

/*
 * @Description: win+t ��total commander
 * @author XuDong
 */
#t::	
	Run F:\software\Total Commander v9.51.62_64bit\TotalCMD\TotalCMD64.exe
 return  

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
 * @Description: win+alt+e  ����ѡ�е��ļ�·�����ڵ��ļ��У�����λ�����ļ�
 * @author XuDong
 */
#!e::	
	SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
	Send ^c
	xC_tmp := % Clipboard
	tempPath := RegExMatch(xC_tmp, ".*\\", UnquotedOutputVar)
	tempFile := RegExReplace(xC_tmp, ".*\\")
	run %UnquotedOutputVar%
	Sleep 1000
	Send %tempFile%
return

 /*
��esc�л����뷨
*/
~esc::
	; �·������ֻ����һ��
	SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
	; SwitchIME(0x08040804) ; ����(�й�) ��������-��ʽ����
return

 /*
 win+�Ϲ��� ͸������
*/
#WheelUp::
	WinGet, active_id, ID, A    ;��ȡ��ǰ����ҳ���id
	WinGet, active_tran, Transparent, A    ;��ȡ��ǰ����ҳ���id
	if(active_tran == ""){
		active_tran = 255
	}
	active_tran := active_tran + 10
	if(active_tran >= 255){
		active_tran = 255
	}
	WinSet, Transparent, %active_tran%, ahk_id %active_id%		;�޸�͸��ֵ
return

 /*
win+�¹���  ͸������
*/
#WheelDown::
	WinGet, active_id, ID, A    ;��ȡ��ǰ����ҳ���id
	WinGet, active_tran, Transparent, A    ;��ȡ��ǰ����ҳ���id
	if(active_tran == ""){
		active_tran = 255
	}
	active_tran := active_tran - 10
	if(active_tran <= 0){
		active_tran = 0
	}
	WinSet, Transparent, %active_tran%, ahk_id %active_id%		;�޸�͸��ֵ
return

 /*
	Win+P �Դ��ڵ��ö�/ȡ���ö�����
*/
#p::
Sys.Win.Topmost(WinMenu.InfoObj[3])
Return


 /*
���뷨�л�����
*/
SwitchIME(dwLayout){
		HKL:=DllCall("LoadKeyboardLayout", Str, dwLayout, UInt, 1)
		ControlGetFocus,ctl,A
		SendMessage,0x50,0,HKL,%ctl%,A
}

/*
���ļ�·��
*/
open_dir(real_dir){
	SwitchIME(0x04090409) ; Ӣ��(����) ��ʽ����
	Send {Shift}
	xC_tmp := real_dir
	tempPath := RegExMatch(xC_tmp, ".*\\", UnquotedOutputVar)
	tempFile := RegExReplace(xC_tmp, ".*\\")
	run %UnquotedOutputVar%
	Sleep 1000
	Send %tempFile%
}

/*
��50w���֤�����л�ȡ���֤
*/
 getIdCard(){
	ahkPath = %A_ScriptDir%
		idCardPath := SubStr(ahkPath, 1 , StrLen(ahkPath)-31) "tool\ReadFile\IdCardRandom_50W.txt"
	Random, idCardRand, 000000, 500000
	FileReadLine, idCardLine, %idCardPath%, %idCardRand%
	return %idCardLine%
}


 /*
ϵͳ��
*/
class Sys
	{
	 class Win
		 {
			 ID()
			 {
				 WinGet, winID, ID, A
				 return % winID
			 }

			 Title(winID := "")
			 {
				 if (winID == "")
						 winID := this.ID()
				 WinGetTitle, title, ahk_id %winID%
				 return % title
			 }
			 
			 IsTopmost(winID = "")
			{
				if (winID == "")
					winID := this.ID()
				WinGet, ExStyle, ExStyle, ahk_id %winID%
				if (ExStyle & 0x8)  ; 0x8 is WS_EX_TOPMOST.
					return true
				else
					return false
			}

			Topmost(winID := "", top := "")
			{
				if (winID == "")
					winID := this.ID()
				if (top = "")
					top := not this.IsTopmost(winID)
				if top
				{
					WinSet, AlwaysOnTop, on, ahk_id %winID%
				} 
				else
				{
					Winset, AlwaysOnTop, off, ahk_id %winID%
				}
			}
		 }
	}
	
/*
��4��PrintScreenϢ��
*/
~PrintScreen::
If Home_Presses > 0
{
    Home_Presses += 1
    Return
}
Home_Presses = 1
SetTimer, KeyHome, 1000	;��1000������
Return
 
KeyHome:
SetTimer, KeyHome, Off
If Home_Presses = 4		;����4�ΰ�ť
{
    Sleep 1000
	SendMessage, 0x112, 0xF170, 2,, Program Manager
}
Home_Presses = 0


/*
��סCapsLock���������λ�ã���������λ���϶���ǰ����
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

;~ :*:``::
	;~ Send {F2}{Home}
;~ return

;~ :*:`-::
	;~ Send {Shift}
	;~ Send _{Shift}
;~ return


/*
* �������ַ���,���ڱ��ű���ĩβ�����ֶΣ����Զ��滻�ȼ����������ַ�����
* ���ַ��������� :R::***::  ��ʽ�ģ����Բ�Ҫ�ڱ��ű��������ط���:R::***::��ʽ�����ַ��� 
* :R:: ��ʾ  ����ԭ�������滻�ı�
*/
#v:: 
	;��ȡ��ǰѡ�е��ı���ʹ�ü�������� "ControlGet Selected" 
	;����Ϊ�����ڸ�������ı༭��(Ҳ�����ִ������)�������á�
	;��ǰ�������е����ݽ������棬�Ա�֮��ָ�������ֻ�ָܻ����ı������ܱ�û�еĺã�
	AutoTrim Off  ;��������������β�Ŀհ��ַ���
	ClipboardOld = %ClipboardAll%
	Clipboard =  ;Ϊ������ȷ����Ҫ��ա�
	Send ^c
	ClipWait 1
	if ErrorLevel  ; ClipWait ��ʱ
		return
	;���س����к�/���з��滻Ϊ `n �Ա�ʹ����һ�� "send-raw" �����ַ����У�
	;���κ��� raw ģʽ�¿��ܳ�����������ַ�Ӧ��ͬ���Ĳ�����
	StringReplace, Hotstring, Clipboard, ``, ````, All  ;Ϊ�����������滻��ͻ����������滻��
	StringReplace, Hotstring, Hotstring, `r`n, ``r, All  ;��΢�� Word �ȵ������ `r �� `n ���ֵø��á�
	StringReplace, Hotstring, Hotstring, `n, ``r, All
	StringReplace, Hotstring, Hotstring, %A_Tab%, ``t, All
	StringReplace, Hotstring, Hotstring, `;, ```;, All
	Clipboard = %ClipboardOld%  ;�ָ����±�֮ǰ������
	;�⽫������Ի����еĹ���ƶ��������Ի���λ�ã�
	SetTimer, MoveCaret, 10
	;��ʾ�ṩ��ȱʡ���ַ���������Ի���
	InputBox, Hotstring, MyHotstring, �ڹ�괦���������д��`n��Ҫ�Ļ�����Ҳ���Ա༭�滻�ı��� , , , 150, , , , , :R:`::%Hotstring%
	if ErrorLevel  ;�û�ѡ����ȡ��
		return
	IfInString, Hotstring, :R`:::
	{
		MsgBox ��û��������д�����ַ������ᱻ��ӡ�
		return
	}
	
	;�жϸ��ȼ��Ƿ��Ѿ���ʹ�ã�����Ѿ���ʹ�ã���ɾ��ʹ�õ�����
	ahk_bak_flag = 0
	ahk_bak_dir = %A_ScriptFullPath%
	ahk_bak_dir := SubStr(ahk_bak_dir, 1 , StrLen(ahk_bak_dir) - 4)  ;�ַ�����ȡ
	ahk_bak_dir = %ahk_bak_dir%_bak.ahk
	FileDelete, %ahk_bak_dir%    ;ɾ�������ļ�
	
    Loop, read, %A_ScriptFullPath%    ;һ��һ��ѭ����ȡ�ļ�
    {
        ;~ MsgBox, �� %A_Index% ��Ƭ���� %A_LoopReadLine%��
		ahk_search_str = %Hotstring%
		
		ahk_index := InStr(ahk_search_str,"::") ;����::�ַ���titile��������е�λ�ã�����ֵ��indexJava  (λ���Ǵ�1��ʼ
		ahk_search_str := SubStr(ahk_search_str, 1 , ahk_index+1)  ;�ַ�����ȡ   ���ȼ��ַ���  :R:***::  �ⲿ��
        IfInString, A_LoopReadLine, %ahk_search_str%		;�ж��������ȼ��Ƿ��Ѿ����ڣ�����Ѿ����ڣ���������һ�������ļ����ȴ�д�걸���ļ���ɾ�����ļ������ı����ļ�����Ϊ���ļ�����
		{
			;����������ȼ��Ѿ����ڣ�����µ��ַ����������ļ�����д
			FileAppend, %Hotstring%`n, %ahk_bak_dir%  ;���ַ�����ͷ��һ�� `n �Է��ļ�������ĩβû�п��С�
			ahk_bak_flag = 1
        }else{
			;����������ȼ������ڣ���Ѿɵ��ַ����������ļ�����д
			FileAppend, %A_LoopReadLine%`n, %ahk_bak_dir%    ;������һ��д�뱸���ļ�
		}
    }
	
	if(1 == ahk_bak_flag){
		;������滻���ȼ�����ɾ��Դ�ļ������ѱ����ļ�������ΪԴ�ļ�
		FileDelete, %A_ScriptFullPath%    ;ɾ��Դ�ļ�
		FileMove, %ahk_bak_dir%, %A_ScriptFullPath% ; �����������ļ���
	}else{
		;������Դ�ļ��Ļ�����������ַ��������¼��ؽű���
		FileAppend, `n%Hotstring%, %A_ScriptFullPath%  ;���ַ�����ͷ��һ�� `n �Է��ļ�������ĩβû�п��С�
		FileDelete, %ahk_bak_dir%    ;ɾ�������ļ�
	}
	
	;���¼��ؽű�
	Reload
	Sleep 200 ;������¼��سɹ�����ô�� Sleep �ڼ�ͻ�ر����ʵ������������Զ�������е���һ�С�
	MsgBox, 4,, �ո���ӵ����ַ�����ʽ������ȷ����Ҫ�򿪽ű��༭ô��ע�⣬����������ַ����ڽű������һ�С�
	IfMsgBox, Yes, Edit
return

MoveCaret:
	IfWinNotActive, MyHotstring
		return
	;���򣬽�����Ի����еĹ���ƶ����û�������д��λ�á�
	Send {Home}{Right 3}
	SetTimer, MoveCaret, Off
return

/*
 * @Description: ctrl+win+c �����ļ�·��
 * @author XuDong
 */
^#c::
	send ^c
	sleep,200
	clipboard=%clipboard% ; ��仹�Ƿϻ�һ�£�windows ���Ƶ�ʱ�򣬼����屣����ǡ�·������ֻ��·�������ַ�����ֻҪת�����ַ����Ϳ���ճ�������ˡ�
	tooltip,%clipboard%
	sleep,1000
	tooltip,
return 

/*
 * @Description: ctrl+delete ����
 * @author XuDong
 */
^Delete::
	send ^x
return 

/*
 * @Description: ctrl+insert ճ��
 * @author XuDong
 */
^Insert::
	send ^v
return 

/*
 * @Description: ctrl+\ ����
 * @author XuDong
 */
^\::
	send ^c
return 

 
/*
-------------------�κ�ʱ�򣬿���ַ�������Ҫ������Ӧ���ַ���--------------------
*/


/*
* @Description: //enter Home+Tab��ʽ��
* @author XuDong
*/
:://ee::
    InputBox, time, ��ʽ��, ������һ����ʽ������
    Loop, %time%
    {
        Send {Home}{Tab}{Down}
        Sleep 200
    }
return	

/*
 * @Description: ����//n��һ����ֹ������notepad
 * @author XuDong
 */
:://n::	
	Run notepad	
 return		

/*
 * @Description: //calc��һ����ֹ�����򿪼�����
 * @author XuDong
 */
:://calc::	
	 Run calc
 return		

/*
 * @Description: //f�򿪰ٶȷ���
 * @author XuDong
 */
:://f::	
	Run https://fanyi.baidu.com/
 return  
 
 /*
 * @Description: //b�򿪰ٶ�
 * @author XuDong
 */
:://b::	
	Run https://www.baidu.com/
 return  


/*
 * @Description: //d��d��
 * @author XuDong
 */
:://d::	
	Run D:\
 return		

/*
 * @Description: //e��e��
 * @author XuDong
 */
:://e::	
	Run E:\
 return 


/*
 * @Description: //t ��ʱ��
 * @author XuDong
 */
:://t::
	InputBox, time, ��ʱ��, ������һ��ʱ�䣨��λ���룩	; ����һ������򣬱����ǡ���ʱ�����������ǡ�������һ��ʱ�䣨��λ���룩��
	millisecond := time*1000	; ���һ������Ҫ������Ļ���һ��Ҫ������д����ƽ������ʽ��ȣ�����һ��ð�š�sleep ��ʱ���ǰ���ǧ��֮һ����ģ�������� 1000 �ͱ�����ˡ�
	Sleep,%millisecond%
	MsgBox ��ʱ������%time%�룩
return


/*
 * @Description: //tab tab���������������Ű�
 * @author XuDong
 */
:://tab::
	InputBox, loopTime, End+Tab ѭ������, ������ѭ������
	
	if (loopTime > 0) {
		Loop, %loopTime% {
			Send {Down}{Home}{Tab}
		}
	}
return


/*
---------------��������----------------
*/

 /*
 * f12::ExitApp ;f12�˳�	
 * f11::Pause ;��ͣ
 */


/*
 * @Description: ����//n����notepad  ������Ҫ��ֹ����
 * @author XuDong

 :*://n::	
	Run notepad	
 return		

 */


 
;~��������ʱ��ݼ��������ַ���
;~:R:***:�Ķ�����ʱ�����ַ���
