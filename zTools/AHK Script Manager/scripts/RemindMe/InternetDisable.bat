rem 禁用网络
@echo off

rem 用管理员权限
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

rem 读取ini
For /f "tokens=1-2 delims==" %%i in (RemindConfig.ini) do (
	rem 获取ini的某个配置
	If /i "%%i"=="netname" (
		rem 根据配置执行切换网络配置
		rem 前面部分是查询网络讯息，通过findstr来过滤  但是 && 后面的开关网络没有执行成功，需要看看如何查询参数
		rem netsh interface show interface|findstr "%%j"|findstr "已启用" && netsh interface set interface "%%j" disable
		netsh interface set interface "%%j" disable
	)
)
