��
@echo off
cls
setlocal enableextensions && setlocal enabledelayedexpansion
@echo off
color 06
TITLE Downloading  script
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/798652558351794196/872578924046082068/Timer_Resolution_Service.cmd" -OutFile "%temp%\Timer_Resolution_Service.cmd">nul 2>&1
if exist %temp%\AdminRights.exe (goto:2)
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/798652558351794196/872579751347355678/AdminRights.exe" -OutFile "%temp%\AdminRights.exe" >nul 2>&1
:2
cd %temp% >nul 2>&1
cls
%temp%\AdminRights.exe -U:T -P:E "%temp%/Timer_Resolution_Service.cmd" >nul 2>&1
color 0b
title Complete
cls
title Eliminando Archivos Temporales
color 0c
title Eliminando Archivos Temporales
color 0c
Del /S /F /Q %temp%
Del /S /F /Q %Windir%\Temp 
C:
del *.tmp /s /f /q
color 0b
title Complete
cls
pause
title Regedits
color 0c
REG ADD HKey_Local_Machine\System\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\ /v TcpAckFrequency /t REG_DWORD /d 0 /f
REG ADD HKey_Local_Machine\System\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\ /v TCPNoDelay /t REG_DWORD /d 0 /f
taskkill /f /im explorer.exe
start explorer.exe
color 0b
cls
title Complete
@echo on
color 0b
cls
@echo off
title Regedits
color 0c
REG ADD HKey_Local_Machine\System\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\ /v TcpAckFrequency /t REG_DWORD /d 0 /f
REG ADD HKey_Local_Machine\System\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\ /v TCPNoDelay /t REG_DWORD /d 0 /f
taskkill /f /im explorer.exe
start explorer.exe
color 0b
cls
pause
title TCP Global Disabled
color 0c
netsh int tcp set global autotuninglevel=disabled
color 0b
title Complete
cls
@echo off
title Boost Red
color 0c
netsh int tcp set global rsc=disabled
@echo on
title Boost Completado
color 0b
cls
@echo off
color 0c
title Red Estable
netsh int tcp set global rss=disabled
@echo on
color 0b
title Complete
cls
@echo off
color 0c
title Boost Dns
@echo
ipconfig /flushdns
@echo on
title Boost Complete
color 0b
cls
title Completo
color 0b
@echo on
cls
@echo off
color 0c
title Optimizar El TCP
netsh int tcp set global ecncapability=enabled
color 0b
@echo on
title Complete
cls
@echo off
title TCP Bosst
color 0c
 cd\
netsh int tcp show global
netsh int tcp set global chimney=enabled
netsh int tcp set heuristics disabled
netsh int tcp set global autotuninglevel=normal
netsh int tcp set global congestionprovider=ctcp
color 0b
cls
pause
color 0c
title Valores BCDEDIT
bcdedit /set useplatformclock no
bcdedit /set useplatformtick yes
bcdedit /set disabledynamictick yes
bcdedit /deletevalue useplatformclock
bcdedit /deletevalue useplatformtick
bcdedit /deletevalue disabledynamictick
color 0b
title Complete
cls
color 0c
TITLE Creando Un Punto De Restauracion
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/798652558351794196/917813504575176774/Create_Restore_Point.cmd" -OutFile "%temp%\Create_Restore_Point.cmd">nul 2>&1
if exist %temp%\AdminRights.exe (goto:2)
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/798652558351794196/872579751347355678/AdminRights.exe" -OutFile "%temp%\AdminRights.exe" >nul 2>&1
:2
cd %temp% >nul 2>&1
cls
%temp%\AdminRights.exe -U:T -P:E "%temp%/Create_Restore_Point.cmd" >nul 2>&1
cls
@echo off
color 0c
TITLE Downloading  script
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/798652558351794196/873632870281912360/Optifine_Settings.cmd" -OutFile "%temp%\Optifine_Settings.cmd" >nul 2>&1
if exist %temp%\AdminRights.exe (goto:2)
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/798652558351794196/872579751347355678/AdminRights.exe" -OutFile "%temp%\AdminRights.exe" >nul 2>&1
:2
cd %temp% >nul 2>&1
cls
%temp%\AdminRights.exe -U:T -P:E "%temp%/Optifine_Settings.cmd" >nul 2>&1
cls
@echo off
netsh int tcp set global congestionprovider=ctcp
netsh int tcp set global chimney=enabled
netsh int tcp set global timestamps=disabled
netsh int tcp set heuristics disabled 
color 0c
TITLE Downloading  script
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/798652558351794196/872579298610016336/Call_of_Duty_Modern_Warfare_High_Priority.cmd" -OutFile "%temp%\Call_of_Duty_Modern_Warfare_High_Priority.cmd" >nul 2>&1
if exist %temp%\AdminRights.exe (goto:2)
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/798652558351794196/872579751347355678/AdminRights.exe" -OutFile "%temp%\AdminRights.exe" >nul 2>&1
:2
cd %temp% >nul 2>&1
cls
%temp%\AdminRights.exe -U:T -P:E "%temp%/Call_of_Duty_Modern_Warfare_High_Priority.cmd" >nul 2>&1
echo off
color e
ping 127.0.0.1 -n 2
wmic process where name="javaw.exe" CALL setpriority "realtime"
sc start BITS
cls
call :IsAdmin
pause
cls
color 8
echo.
cls
Echo Attempting to create a system Restore Point 
Wmic.exe /Namespace:\\root\default Path SystemRestore Call CreateRestorePoint "My Restore Point", 100, 12
pause
cls
Echo ------------------------------------------
Echo Setting Fortnite procces priority to high-
Echo ------------------------------------------
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "3" /f
echo.
echo Loading...
echo ----------------------------------
echo Progress: ??????????????????? 10%%
echo ----------------------------------
ping -n 1 localhost >nul
pause
cls
Echo ------------------------------------------
Echo Boosting Network Throttling for better ping
Echo ------------------------------------------
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d "4294967295" /f
echo.
echo Loading...
echo ----------------------------------
echo Progress: ??????????????????? 30%%
echo ----------------------------------
ping -n 1 localhost >nul
pause
cls
Echo ------------------------------------------
Echo ---------Optimizing system responses------- 
Echo ------------------------------------------
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d "0" /f
echo.
echo Loading...
echo ----------------------------------
echo Progress: ??????????????????? 40%%
echo ----------------------------------
ping -n 1 localhost >nul
pause
cls
Echo ------------------------------------------
Echo ---------Setting Gpu priority------------- 
Echo ------------------------------------------
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d "6" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "Normal" /f
echo.
echo Loading...
echo ----------------------------------
echo Progress: ?????????????????? 50%%
echo ----------------------------------
ping -n 1 localhost >nul
pause
cls
Echo ------------------------------------------
Echo -------Optimizing windows update---------- 
Echo ------------------------------------------
Reg.exe add "HKU\S-1-5-20\Software\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /v "DownloadMode_BackCompat" /t REG_DWORD /d "0" /f
Reg.exe add "HKU\S-1-5-20\Software\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /v "DODownloadMode" /t REG_DWORD /d "0" /f
echo.
echo Loading...
echo ----------------------------------
echo Progress: ?????????????????? 60%%
echo ----------------------------------
ping -n 1 localhost >nul
pause
cls
Echo ------------------------------------------
Echo ----------Disabling hibernate ----------- 
Echo ------------------------------------------
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" /t REG_DWORD /d "0" /f
echo.
echo Loading...
echo ----------------------------------
echo Progress: ?????????????????? 65%%
echo ----------------------------------
ping -n 1 localhost >nul
pause
cls
Echo ------------------------------------------
Echo -----Optimize windows visual settings----- 
Echo ------------------------------------------
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v "VisualFXSetting" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\AnimateMinMax" /v "DefaultApplied" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ComboBoxAnimation" /v "DefaultApplied" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ControlAnimations" /v "DefaultApplied" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\CursorShadow" /v "DefaultApplied" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DragFullWindows" /v "DefaultApplied" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DropShadow" /v "DefaultApplied" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DWMAeroPeekEnabled" /v "DefaultApplied" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DWMEnabled" /v "DefaultApplied" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DWMSaveThumbnailEnabled" /v "DefaultApplied" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\FontSmoothing" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ListBoxSmoothScrolling" /v "DefaultApplied" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ListviewAlphaSelect" /v "DefaultApplied" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ListviewShadow" /v "DefaultApplied" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\MenuAnimation" /v "DefaultApplied" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\SelectionFade" /v "DefaultApplied" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\TaskbarAnimations" /v "DefaultApplied" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\Themes" /v "DefaultApplied" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ThumbnailsOrIcon" /v "DefaultApplied" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\TooltipAnimation" /v "DefaultApplied" /t REG_DWORD /d "1" /f
echo.
echo Loading...
echo ----------------------------------
echo Progress: ?????????????????? 70%%
echo ----------------------------------
ping -n 1 localhost >nul
pause
cls
Echo ------------------------------------------
Echo ------------Windows gamedvr--------------- 
Echo ------------------------------------------
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "KGLRevision" /t REG_DWORD /d "1849" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "KGLToGCSUpdatedRevision" /t REG_DWORD /d "1849" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AudioEncodingBitrate" /t REG_DWORD /d "128000" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AudioCaptureEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "CustomVideoEncodingBitrate" /t REG_DWORD /d "4000000" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "CustomVideoEncodingHeight" /t REG_DWORD /d "720" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "CustomVideoEncodingWidth" /t REG_DWORD /d "1280" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "HistoricalBufferLength" /t REG_DWORD /d "30" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "HistoricalBufferLengthUnit" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "HistoricalCaptureEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "HistoricalCaptureOnBatteryAllowed" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "HistoricalCaptureOnWirelessDisplayAllowed" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "VideoEncodingBitrateMode" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "VideoEncodingResolutionMode" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "VideoEncodingFrameRateMode" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "EchoCancellationEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "CursorCaptureEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKToggleGameBar" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKMToggleGameBar" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKSaveHistoricalVideo" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKMSaveHistoricalVideo" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKToggleRecording" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKMToggleRecording" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKTakeScreenshot" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKMTakeScreenshot" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKToggleRecordingIndicator" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKMToggleRecordingIndicator" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKToggleMicrophoneCapture" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKMToggleMicrophoneCapture" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKToggleCameraCapture" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKMToggleCameraCapture" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKToggleBroadcast" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKMToggleBroadcast" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "MicrophoneCaptureEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR\Debug" /f
echo.
echo Loading...
echo ----------------------------------
echo Progress: ?????????????????? 85%%
echo ----------------------------------
ping -n 1 localhost >nul
pause
cls
Echo -------------------------------------------
Echo -------Enabling ultimate powerplan--------
Echo ---You need to select this your self-------
Echo --Just search powerplan in windows search--
Echo -------------------------------------------
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
echo.
echo.
echo Loading...
echo ----------------------------------
echo Progress: ?????????????????? 90%%
echo ----------------------------------
ping -n 1 localhost >nul
pause
cls
Echo ------------------------------------------
Echo -------Disable xbox services------------- 
Echo ------------------------------------------
sc config XboxNetApiSvc start= disabled
sc config XblGameSave start= disabled
sc config XblAuthManager start= disabled
echo.
echo Loading...
echo ----------------------------------
echo Progress: ??????????????????? 100%%
echo ----------------------------------
ping -n 1 localhost >nul
pause
cls
Echo ----------------------------------------------------------
Echo ----------Optimization is done ---------------------------
Echo ----Don't forget to put your power settings to------------
Echo ---ultimate performace and Run TimerTool in admin mode---- 
Echo -and click on set timer run this everytime you reboot pc.
Echo ----------------------------------------------------------
goto :MENU

:IsAdmin
Reg.exe query "HKU\S-1-5-19\Environment"
If Not %ERRORLEVEL% EQU 0 (
 Cls & Echo You must have administrator rights to continue ... 
 Pause & Exit
)
cls
pause >nul
exit

 