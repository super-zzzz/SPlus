REM @ECHO OFF


set archPath=%1
set sysPath=%windir%\System32
set qtPath=%~dp0..\..\Qt\5.15.2\msvc2019_64
set instPath=%~dp0\SbiePlus64
IF %archPath% == x86 (
	set archPath=Win32
	set instPath=%~dp0\SbiePlus32
	set sysPath=%windir%\SysWOW64
  set qtPath=%~dp0..\..\Qt\5.15.2\msvc2019
)
set srcPath=%~dp0..\SandboxiePlus\Bin\%archPath%\Release
set sbiePath=%~dp0..\Sandboxie\Bin\%archPath%\SbieRelease

echo inst: %instPath%
echo arch: %archPath%
echo sys: %sysPath%
echo source: %srcPath%
echo source: %sbiePath%

mkdir %instPath%


copy /y %sbiePath%\SbieDrv.sys %instPath%\





