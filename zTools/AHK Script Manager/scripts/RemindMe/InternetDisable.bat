rem ��������
@echo off

rem �ù���ԱȨ��
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
goto UACPrompt
) else ( goto gotAdmin )
:UACPrompt
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
"%temp%\getadmin.vbs"
exit /B
:gotAdmin
if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
pushd "%CD%"
CD /D "%~dp0"

rem ��ȡini
For /f "tokens=1-2 delims==" %%i in (RemindConfig.ini) do (
	rem ��ȡini��ĳ������
	If /i "%%i"=="netname" (
		rem ��������ִ���л���������
		rem ǰ�沿���ǲ�ѯ����ѶϢ��ͨ��findstr������  ���� && ����Ŀ�������û��ִ�гɹ�����Ҫ������β�ѯ����
		rem netsh interface show interface|findstr "%%j"|findstr "������" && netsh interface set interface "%%j" disable
		netsh interface set interface "%%j" disable
	)
)
