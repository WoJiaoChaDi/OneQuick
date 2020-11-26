/*
modified = 20181203  - automatically remove some few characters after LastLine
created  = 20181112
Name     = exe2ahk_convert   
----------------------------------------------------------------------------
How to use   = Drag&Drop an xy.exe ( compiled ahk ) convert to  " a_now_xy.ahk "
- see  https://autohotkey.com/boards/viewtopic.php?f=9&t=29172 ---
- from user's : nnnik / just me /  Gucky_87 ...
----------------------------------------------------------------------------
NOTES=
  - comments are lost
  - the compiled ahk-xy.exe is not UTF-8 (?)
----------------------------------------------------------------------------
*/
;---------------------------------------------------------------------------
#Warn
#NoEnv
SendMode,Input
SetWorkingDir, %A_ScriptDir%
SetTitleMatchMode,2
SetBatchLines, -1
FileEncoding, UTF-8
editorx1 =%a_programfiles%\Notepad++\notepad++.exe
filename1=Drag&Drop  'XY.EXE'  -file (ahk)  convert >   'a_now_XY.AHK'
extensions:="exe" ;- < extensions

;---------------
Gui,2:default
GUI,2:+AlwaysOnTop
Gui,2: -DPIScale
SS_REALSIZECONTROL := 0x40
Gui,2:Font,s14 ,Lucida console
Gui,2:Color,Black
Gui,2:Color, ControlColor, Black
Gui,2:Add,Edit, x5 y10 w1280 h200 cGray vFilepath,
GUI,2:show , x20 y200 w1300 h290 ,%filename1%
return
2Guiclose:
exitapp
;=========================================
2GuiDropFiles:
GuiControl,2:,filepath
Loop, parse, A_GuiEvent, `n
{
SplitPath,a_loopfield, name, dir, ext, name_no_ext, drive
if ext in %extensions%
  {
  GuiControl,2:,Filepath,%A_LoopField%
  gosub,run1
  }
}
return
;-----------------------------------  
run1:
Gui,2:submit,nohide
SplitPath,filepath, name, dir, ext, name_no_ext, drive
newfile := a_scriptdir . "\" . a_now . "_" . name_no_ext . ".ahk"
  
cStr :="<COMPILER"
strencoding=
fileObj2 := scanFileForString( filePath, cStr, strEncoding )
if isObject( fileObj2 )
  {
  aah:=fileObj2.Read()
  loop,parse,aah,`n,`r
    {
    c:= a_loopfield
    if c=
      continue
    StringGetPos,P1,c,`> 
    break
    }
  p1:=(p1+1)
  stringtrimleft,c2,aah,P1        ;- some binary characters left 
  ;----------------------------  
  fx=%a_scriptdir%\test58.txt
  ifexist,%fx%
    filedelete,%fx%
  fileappend,%c2%,%fx%,UTF-8
  ;OEMCP := DllCall("GetOEMCP", "UInt")
  ;FileRead,aaz, *P%OEMCP% %fx%
  FileRead,aaz,  *P65001 %fx%       ;-read as UTF-8 ( but compiled script isn't (?) )
  FileRead,aaz,%fx%
  filedelete,%fx%
  ;------------------------
  StringGetPos, P2, aaz, `n, R1     ;- get position from LastLine
  StringTrimLeft,LastLine, aaz,%p2%
  newlastline:=""
  loop,parse,lastline               ;- remove the last characters from LastLine which usually begins with 'P'
    {
	x:=a_loopfield
	if (x="P")
	    break
	NewLastLine .= x
	}
  StringLeft,aaz,aaz,P2             ;- remove LastLine and replace with 'newlastline'
  fileappend,%aaz%%NewLastLine%`r`n;================= END SCRIPT ===================`r`n,%newfile%,UTF-8
  ;------------------------
  ifexist,%editorx1%
  run,%editorx1% "%newfile%"
  else
  run,notepad "%newfile%"
  aah=
  aaz=
  return  
  }
return  
;-----------------------------------  
scanFileForString( filePath, searchString, stringEncoding = "UTF-8" )
{
	VarSetCapacity( pBin, StrPut( searchString, stringEncoding ) * ( ( stringEncoding = "UTF-16" || stringEncoding = "cp1200" ) ? 2 : 1 ), 0 )
	searchBinaryLength := StrPut( searchString, &pBin, strLen( searchString ), stringEncoding ) * ( ( stringEncoding = "UTF-16" || stringEncoding = "cp1200" ) ? 2 : 1 )
	return scanFileForBinary( filePath, pBin, searchBinaryLength, stringEncoding )
}
scanFileForBinary( filePath, byref searchBinary, searchBinarylength, fileEncoding = "UTF-8" )
{
	if !FileExist( filePath )
		return
	Offset := 0
	fileObj := fileOpen( filePath, "r" )
	Loop
	{
		if ( fileObj.ReadUChar() = numGet( searchBinary, Offset, "UChar" ) )
		{
			Offset++
			if ( Offset = searchBinarylength )
			{
				fileObj.pos -= Offset
				return fileObj
			}
		} else if ( offset )
			fileObj.pos -= ( Offset - 1 ), Offset := 0
	}Until fileObj.AtEOF
    
    return
}

;=================== END script exe2ahk ==========================================