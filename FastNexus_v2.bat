cls
@echo off
shift /0
mode 128,33
color 9
title FastNexus 2.0
cd %systemroot%\system32
call :IsAdmin
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "DEL=%%a"
)

:menu
cls
echo.
echo.
echo.
echo.                                      "     ______        _   _   _                        "
echo.                                      "    |  ____|      | | | \ | |                       "
echo.                                      "    | |__ __ _ ___| |_|  \| | _____  ___   _ ___    "
echo.                                      "    |  __/ _` / __| __| . ` |/ _ \ \/ / | | / __|   "
echo.                                      "    | | | (_| \__ \ |_| |\  |  __/>  <| |_| \__ \   "
echo.                                      "    |_|  \__,_|___/\__|_| \_|\___/_/\_\\__,_|___/   "
echo.                                      "                                                    "
call :ColorText 08 "                                                          Version 2.0 .                                    "                                                    "
echo.                                                                                                                                          
call :ColorText 08 "                    _______________________________________________________________________________________"
echo.
echo.
echo.
call :ColorText 8 "                         [ "
call :ColorText B " 1 "
call :ColorText 8 " ] " 
call :ColorText F " Optimize Windows  "
call :ColorText 8 "                                              [ "
call :ColorText B " 2 "
call :ColorText 8 " ] " 
call :ColorText F " Optimize Fortnite "
echo.
echo.
echo.
call :ColorText 8 "                         [ "
call :ColorText B " 3 "
call :ColorText 8 " ] " 
call :ColorText F " Update"
call :ColorText 8 "                                                        [ "
call :ColorText B " 4 "
call :ColorText 8 " ] " 
call :ColorText F " Autres "
echo.
echo.
echo.
call :ColorText 8 "                                                        [ X to Exit ]"
echo.
echo.
set /p choose="> "

if /i "%choose%"=="1" (goto 1)
if /i "%choose%"=="2" (goto 2)
if /i "%choose%"=="3" (goto 3)
if /i "%choose%"=="4" (goto 4)
if /i "%choose%"=="X" (goto Exit)

:2
cls
echo.
echo.
call :ColorText 08  "                                                              Version 2.0 "
echo.
echo.
echo.                                      "     ______        _   _   _                        "
echo.                                      "    |  ____|      | | | \ | |                       "
echo.                                      "    | |__ __ _ ___| |_|  \| | _____  ___   _ ___    "
echo.                                      "    |  __/ _` / __| __| . ` |/ _ \ \/ / | | / __|   "
echo.                                      "    | | | (_| \__ \ |_| |\  |  __/>  <| |_| \__ \   "
echo.                                      "    |_|  \__,_|___/\__|_| \_|\___/_/\_\\__,_|___/   "
echo.                                      "                                                    "
echo. 
call :ColorText 08 "                         _________________________________________________________________________________"
echo.
echo.
echo.
call :ColorText 8 "                         [ "
call :ColorText B " 1 "
call :ColorText 8 " ] " 
call :ColorText F " Increase Performance "
call :ColorText 8 "                                          [ "
call :ColorText B " 2 "
call :ColorText 8 " ] " 
call :ColorText F " Memory Optimizer "
echo.
echo.
echo.
call :ColorText 8 "                         [ "
call :ColorText B " 3 "
call :ColorText 8 " ] " 
call :ColorText F " HighProperty Fortnite "
call :ColorText 8 "                                         [ "
call :ColorText B " 4 "
call :ColorText 8 " ] " 
call :ColorText F " Service Disabler "
echo.
echo.
echo.
call :ColorText 8 "                                                        [ X to go back ]"
echo.
echo.
set /p choose="> "

if /i "%choose%"=="1" (goto B1)
if /i "%choose%"=="2" (goto B2)
if /i "%choose%"=="3" (goto B3)
if /i "%choose%"=="4" (goto B4)
if /i "%choose%"=="X" (goto menu)


:B1
cls
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" /t REG_DWORD /d "0" /f
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HiberbootEnabled" /t REG_DWORD /d "0" /f
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "VsyncIdleTimeout" /t REG_DWORD /d "0" /f
Reg.exe del "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "0" /f
Reg.exe del "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d "0" /f
Reg.exe del "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v "AllowgameDVR" /t REG_DWORD /d "0" /f
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "38" /f
Reg.exe del "HKLM\SYSTEM\ControlSet001\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "38" /f
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "0" /f
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d "0" /f
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsMftZoneReservation" /t REG_DWORD /d "1" /f
Reg.exe del "HKCU\Control Panel\Desktop" /v "AutoEndTasks" /t REG_SZ /d "1" /f
Reg.exe del "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d "0" /f
Reg.exe del "HKCU\Control Panel\Desktop" /v "WaitToKillAppTimeout" /t REG_SZ /d "5000" /f
Reg.exe del "HKCU\Control Panel\Desktop" /v "WaitToKillServiceTimeout" /t REG_SZ /d "1000" /f
Reg.exe del "HKCU\Control Panel\Desktop" /v "HungAppTimeout" /t REG_SZ /d "4000" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d "2" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "High" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Latency Sensitive" /t REG_SZ /d "True" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Clock Rate" /t REG_DWORD /d "10000" /

bcdedit /set useplatformclock false
taskkill /f /im explorer.exe
start explorer.exe
cls
goto 2


:B2
cls
bcdedit /set IncreaseUserVA 0
cls
goto 2

:B3
cls
reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "CpuPriorityClass" /d "3" /f
reg.exe add "HKEY_CURRENT_USER\System\GameConfigStore" /v "GameDVR_Enabled" /d "0" /f
reg.exe add "HKEY_CURRENT_USER\System\GameConfigStore" /v "GameDVR_FSEBehavior" /d "00000002" /f 
reg.exe add "HKEY_CURRENT_USER\System\GameConfigStore" /v "GameDVR_FSEBehaviorMode" d/ "00000002" /f
reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v "AllowGameDVR" d/ "0" /f 
reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /d "00000000" /f
reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /d "8" /f 
reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /d "6" /f 
reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /d "High" /f 
cls
taskkill /f /im explorer.exe
start explorer.exe
cls
goto 2

:B4
cls
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "MapsBroker" d/ "4" /f 
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "ALG" d/ "4" /f 
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "AppMgmt" d/ "4" /f 
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "PeerDistSvcr" d/ "4" /f 
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "CertPropSvc" d/ "4" /f 
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "irmon" d/ "4" /f 
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "MSiSCSI" d/ "4" /f 
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "NaturalAuthentication" d/ "4" /f 
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "Netlogon" d/ "4" /f 
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "RpcLocator" d/ "4" /f 
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "RetailDemo" d/ "4" /f 
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "SCPolicySvc" d/ "4" /f 
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "SNMPTRAP" d/ "4" /f 
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "wcncsvc" d/ "4" /f 
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "wisvc" d/ "4" /f 
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "WinRM" d/ "4" /f 
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "WwanSvc" d/ "4" /f 
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "XblAuthManager" d/ "4" /f 
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "XboxNetApiSvc" d/ "4" /f 
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "SessionEnv" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "TermService" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "UmRdpService" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "AJRouter" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "HvHost" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "vmickvpexchange" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "vmicguestinterface" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "vmicshutdown" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "vmicheartbeat" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "vmicvmsession" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "vmicrdv" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "SharedAccess" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "IpxlatCfgSvc" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "SEMgrSvc" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "SensorDataService" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "SensrSvc" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "SensorService" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "ScDeviceEnum" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "TabletInputService" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "WebClient" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "WFDSConSvc" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "FrameServer" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "icssvc" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "xbgm" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "lfsvc" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "NcdAutoSetup" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "NfsClnt" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "WMPNetworkSvc" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "lmhosts" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "CscService" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "msahc" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "CertPropSvc" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "p2pimsvc" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "PcaSvc" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "PNRPsvc" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "RemoteRegistry" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "HomeGroupListener" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "HomeGroupProvider" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "SENS" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "SysMain" d/ "4" /f
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_HonorUserFSEBehaviorMode" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_DXGIHonorFSEWindowsCompatible" /t REG_DWORD /d "1" /f
sc stop "WSearch"
taskkill /F /IM SearchUI.exe
cls
goto 2


:3
cls
echo.
echo.
call :ColorText 08  "                                                              Version 2.0 "
echo.
echo.
echo.                                      "     ______        _   _   _                        "
echo.                                      "    |  ____|      | | | \ | |                       "
echo.                                      "    | |__ __ _ ___| |_|  \| | _____  ___   _ ___    "
echo.                                      "    |  __/ _` / __| __| . ` |/ _ \ \/ / | | / __|   "
echo.                                      "    | | | (_| \__ \ |_| |\  |  __/>  <| |_| \__ \   "
echo.                                      "    |_|  \__,_|___/\__|_| \_|\___/_/\_\\__,_|___/   "
echo.                                      "                                                    "
echo.                                                                                               
echo. 
call :ColorText 08 "                         _________________________________________________________________________________"
echo.
echo.
echo.
call :ColorText 08 "                         - "
call :ColorText 0B " Nouveau GUI, Suppression Login "
echo.
echo.
call :ColorText 08 "                         - "
call :ColorText 0B " Ajout de Tweaks, Correction de certains code  "
echo.
echo.
call :ColorText 08 "                         - "
call :ColorText 0B " Security & Privacy, Increase FPS Boost "
echo.
echo.
echo.
call :ColorText 8 "                                                          Version 2.0 "
echo.
echo.
call :ColorText 8 "                                                Created By " & call :ColorText C " Aspect " & call :ColorText 8 " [ Aspect#1497 ] "
echo.
echo.
echo.
call :ColorText 8 "                                                        [ X to go Back ]"
echo.
echo.
set /p choose="> "

if /i "%choose%"=="X" (goto 4)



:4
cls
echo.
echo.
call :ColorText 08  "                                                        Version 2.0 "
echo.
echo.
echo.                                      "     ______        _   _   _                        "
echo.                                      "    |  ____|      | | | \ | |                       "
echo.                                      "    | |__ __ _ ___| |_|  \| | _____  ___   _ ___    "
echo.                                      "    |  __/ _` / __| __| . ` |/ _ \ \/ / | | / __|   "
echo.                                      "    | | | (_| \__ \ |_| |\  |  __/>  <| |_| \__ \   "
echo.                                      "    |_|  \__,_|___/\__|_| \_|\___/_/\_\\__,_|___/   "
echo.                                      "                                                    "
echo. 
call :ColorText 08 "                         _________________________________________________________________________________"
echo.
echo.
echo.
call :ColorText 8 "                         [ "
call :ColorText B " 1 "
call :ColorText 8 " ] " 
call :ColorText F " Change Color  "
call :ColorText 8 "                                       [ "
call :ColorText B " 2 "
call :ColorText 8 " ] " 
call :ColorText F " Point de Restauration "
echo.
echo.
echo.
call :ColorText 8 "                                                        [ X to go Back ]"
echo.
echo.
set /p choose="> "

if /i "%choose%"=="1" (goto ChangeColor)
if /i "%choose%"=="2" (goto About)
if /i "%choose%"=="X" (goto menu)


:ChangeColor
cls
cls
echo.
echo.
call :ColorText 08  "                                                              Version 2.0 "
echo.
echo.
echo.                                      "     ______        _   _   _                        "
echo.                                      "    |  ____|      | | | \ | |                       "
echo.                                      "    | |__ __ _ ___| |_|  \| | _____  ___   _ ___    "
echo.                                      "    |  __/ _` / __| __| . ` |/ _ \ \/ / | | / __|   "
echo.                                      "    | | | (_| \__ \ |_| |\  |  __/>  <| |_| \__ \   "
echo.                                      "    |_|  \__,_|___/\__|_| \_|\___/_/\_\\__,_|___/   "
echo.                                      "                                                    "
echo.                                                                                               
echo. 
call :ColorText 08 "                         _________________________________________________________________________________"
echo.
echo.
echo.
call :ColorText 8 "                         Les couleurs disponibles sont "
echo.
call :ColorText 1 "                         Bleu " & call :ColorText 8 ", " & call :ColorText 3 " Aqua " & call :ColorText 8 ", " & call :ColorText C " Rouge " & call :ColorText 8 ", " & call :ColorText 5 " Violet " & call :ColorText 8 ", " & call :ColorText 6 " Jaune " & call :ColorText 8 ", " & call :ColorText F " Blanc " & call :ColorText 8 " and " & call :ColorText 2 " Vert "
echo.
echo.
echo.
call :ColorText 8 "                                                        [ X to go Back ]"
echo.
echo.
set /p choose="> "

if /i "%choose%"=="X" (goto menu)


if /i "%choose%"=="Bleu" (goto Blue)
if /i "%choose%"=="Aqua" (goto Aqua)
if /i "%choose%"=="Rouge" (goto Red)
if /i "%choose%"=="Violet" (goto Purple)
if /i "%choose%"=="Jaune" (goto Yellow)
if /i "%choose%"=="Blanc" (goto White)
if /i "%choose%"=="Vert" (goto Green)
if /i "%choose%"=="X" (goto 4)

:Blue
cls
color 1
goto ChangeColor

:Aqua
cls
color 3
goto ChangeColor

:Red
cls
color 4
goto ChangeColor

:Purple
cls
color 5
goto ChangeColor

:Yellow
cls
color 6
goto ChangeColor

:White
cls
color F
goto ChangeColor

:Green
cls
color 2
goto ChangeColor

:About
cls
echo.
echo.
call :ColorText 08  "                                                              Version 2.0 "
echo.
echo.
echo.                                      "     ______        _   _   _                        "
echo.                                      "    |  ____|      | | | \ | |                       "
echo.                                      "    | |__ __ _ ___| |_|  \| | _____  ___   _ ___    "
echo.                                      "    |  __/ _` / __| __| . ` |/ _ \ \/ / | | / __|   "
echo.                                      "    | | | (_| \__ \ |_| |\  |  __/>  <| |_| \__ \   "
echo.                                      "    |_|  \__,_|___/\__|_| \_|\___/_/\_\\__,_|___/   "
echo.                                      "                                                    "
echo.                                                                                               
echo. 
call :ColorText 08 "                         _________________________________________________________________________________"
echo.
echo.
echo.                  
echo                         Une page va s'ouvrire. Vous pourrez creer un point de restauration partir de celle-ci.
ping localhost -n 3 >nul
rstrui.exe
cls & goto :menu
goto 1
echo.
call :ColorText 8 "                                                        [ X to go Back ]"
echo.
echo.
set /p choose="> "

if /i "%choose%"=="X" (goto 4)

:1
cls
echo.
echo.
call :ColorText 08  "                                                              Version 2.0 "
echo.
echo.
echo.                                      "     ______        _   _   _                        "
echo.                                      "    |  ____|      | | | \ | |                       "
echo.                                      "    | |__ __ _ ___| |_|  \| | _____  ___   _ ___    "
echo.                                      "    |  __/ _` / __| __| . ` |/ _ \ \/ / | | / __|   "
echo.                                      "    | | | (_| \__ \ |_| |\  |  __/>  <| |_| \__ \   "
echo.                                      "    |_|  \__,_|___/\__|_| \_|\___/_/\_\\__,_|___/   "
echo.                                      "                                                    "
echo.                                                                                               
echo. 
call :ColorText 08 "                         _________________________________________________________________________________"
echo.
echo.
echo.
call :ColorText 8 "                         [ "
call :ColorText B " 1 "
call :ColorText 8 " ] " 
call :ColorText F " Cleaner "
call :ColorText 8 "                                                  [ "
call :ColorText B " 2 "
call :ColorText 8 " ] " 
call :ColorText F " Optimization Network "
echo.
echo.
echo.
call :ColorText 8 "                         [ "
call :ColorText B " 3 "
call :ColorText 8 " ] " 
call :ColorText F " Services Disable "
call :ColorText 8 "                                         [ "
call :ColorText B " 4 "
call :ColorText 8 " ] " 
call :ColorText F " Optimize Windows "
echo.
echo.
echo.
call :ColorText 8 "                         [ "
call :ColorText B " 5 "
call :ColorText 8 " ] " 
call :ColorText F " Disable Cortana "
call :ColorText 8 "                                          [ "
call :ColorText B " 6 "
call :ColorText 8 " ] " 
call :ColorText F " Disable Defender "
echo.
echo.
echo.
call :ColorText 8 "                                                        [ "
call :ColorText B " 7 "
call :ColorText 8 " ] " 
call :ColorText F " Debloat "
echo.
echo.
echo.
call :ColorText 8 "                                                        [ X to go Back ]"
echo.
echo.
set /p choose="> "

if /i "%choose%"=="1" (goto A1)
if /i "%choose%"=="2" (goto A2)
if /i "%choose%"=="3" (goto A3)
if /i "%choose%"=="4" (goto A4)
if /i "%choose%"=="5" (goto A5)
if /i "%choose%"=="6" (goto A6)
if /i "%choose%"=="7" (goto A7)
if /i "%choose%"=="X" (goto menu)

:A1
cls
rd "%USERPROFILE%\LOCALS~1\Temp" /s /q>NUL
rd "%WINDIR%\temp" /s /q>NUL
rd "%WINDIR%\Spool\Printers" /s /q>NUL
rd "%WINDIR%\logs" /s /q>NUL
rd "%WINDIR%\ModemLogs" /s /q>NUL
rd "%USERPROFILE%\Microsoft\Windows\WER\" /s /q>NUL
rd "%USERPROFILE%\LOCALS~1\SquirrelTemp" /s /q>NUL
rd "%USERPROFILE%\LOCALS~1\Google\Software Reporter Tool" /s /q>NUL
rd "%USERPROFILE%\LOCALS~1\Microsoft\Internet Explorer\CacheStorage" /s /q>NUL
rd "%ALLUSERSPROFILE%\USOShared" /s /q>NUL
rd "%ALLUSERSPROFILE%\USOPrivate" /s /q>NUL
rd "%ALLUSERSPROFILE%\Microsoft\Diagnosis\Temp" /s /q>NUL
rd "%ALLUSERSPROFILE%\Microsoft\Diagnosis\ETLLogs" /s /q>NUL
rd "%ALLUSERSPROFILE%\Microsoft\DiagnosticLogCSP" /s /q>NUL
rd "%ALLUSERSPROFILE%\Microsoft\Diagnosis\FeedbackHub" /s /q>NUL
del /s /f /q c:\windows\temp\*.*
rd /s /q c:\windows\temp
md c:\windows\temp
del /s /f /q %temp%\*.*
rd /s /q %temp%
md %temp%
cls
goto 1

:A2
cls
netsh winsock reset
netsh interface tcp set global autotuning = disabled
netsh interface teredo set state disabled
netsh interface 6to4 set state disabled
netsh int isatap set state disable
netsh int tcp set global nonsackrttresiliency=disabled
netsh int ip set global taskoffload=disabled
netsh int ip set global neighborcachelimit=4096
netsh int tcp set global timestamps=disabled
netsh int tcp set heuristics disabled
netsh int tcp set global autotuninglevel=disable
netsh int tcp set global congestionprovider=ctcp
netsh int tcp set supplemental custom congestionprovider=ctcp
netsh int tcp set supplemental Internet congestionprovider=CTCP
netsh int tcp set global chimney=disabled
netsh int tcp set global ecncapability=disabled
netsh int tcp set global rss=enabled
netsh int tcp set security mpp=disabled
netsh int tcp set global rsc=disabled
netsh int tcp set global dca=enabled
netsh int tcp set global netdma=enabled
netsh int tcp set security profiles=disabled
PowerShell Disable-NetAdapterChecksumOffload -Name "*"
PowerShell Disable-NetAdapterLso -Name "*"
PowerShell Disable-NetAdapterRsc -Name "*"
PowerShell Disable-NetAdapterIPsecOffload -Name "*"
PowerShell Disable-NetAdapterPowerManagement -Name "*"
PowerShell Disable-NetAdapterQos -Name "*"
cls
goto 1

:A3
cls
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\MapsBroker" /v 
reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" v/ "EnableLUA" d/ "4" /f 
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "MapsBroker" d/ "4" /f 
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "ALG" d/ "4" /f 
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "AppMgmt" d/ "4" /f 
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "PeerDistSvcr" d/ "4" /f 
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "CertPropSvc" d/ "4" /f 
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "irmon" d/ "4" /f 
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "MSiSCSI" d/ "4" /f 
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "NaturalAuthentication" d/ "4" /f 
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "Netlogon" d/ "4" /f 
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "RpcLocator" d/ "4" /f 
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "RetailDemo" d/ "4" /f 
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "SCPolicySvc" d/ "4" /f 
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "SNMPTRAP" d/ "4" /f 
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "wcncsvc" d/ "4" /f 
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "wisvc" d/ "4" /f 
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "WinRM" d/ "4" /f 
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "WwanSvc" d/ "4" /f 
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "XblAuthManager" d/ "4" /f 
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "XboxNetApiSvc" d/ "4" /f 
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "SessionEnv" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "TermService" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "UmRdpService" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "AJRouter" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "HvHost" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "vmickvpexchange" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "vmicguestinterface" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "vmicshutdown" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "vmicheartbeat" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "vmicvmsession" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "vmicrdv" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "SharedAccess" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "IpxlatCfgSvc" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "SEMgrSvc" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "SensorDataService" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "SensrSvc" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "SensorService" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "ScDeviceEnum" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "TabletInputService" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "WebClient" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "WFDSConSvc" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "FrameServer" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "icssvc" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "xbgm" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "lfsvc" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "NcdAutoSetup" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "NfsClnt" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "WMPNetworkSvc" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "lmhosts" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "CscService" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "msahc" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "CertPropSvc" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "p2pimsvc" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "PcaSvc" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "PNRPsvc" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "RemoteRegistry" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "HomeGroupListener" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "HomeGroupProvider" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "SENS" d/ "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\" v/ "SysMain" d/ "4" /f
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_HonorUserFSEBehaviorMode" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_DXGIHonorFSEWindowsCompatible" /t REG_DWORD /d "1" /f
sc stop "WSearch"
taskkill /F /IM SearchUI.exe
move "%windir%\SystemApps\Microsoft.Windows.Cortana_cw5n1h2txyewy" "%windir%\SystemApps\Microsoft.Windows.Cortana_cw5n1h2txyewy.bak"
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "AllowCortana" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "BingSearchEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "CortanaEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "SearchboxTaskbarMode" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortana" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCloudSearch" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWeb" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWebOverMeteredConnections" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "DisableWebSearch" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowSearchToUseLocation" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortanaAboveLock" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Speech_OneCore\Preferences" /v "ModelDownloadAllowed" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\InputPersonalization\TrainedDataStore" /v "HarvestContacts" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Personalization\Settings" /v "AcceptedPrivacyPolicy" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\ServiceUI" /v "EnableCortana" /t REG_DWORD /d "0" /f >nul
netsh advfirewall firewall add rule name="SearchUI.exe Telemetry" dir=out action=block program="%SystemRoot%\SystemApps\Microsoft.Windows.Cortana_cw5n1h2txyewy\SearchUI.exe"

cls
goto 1

:A4
cls
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "DisableDeleteNotification" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "LongPathsEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsAllowExtendedCharacter8dot3Rename" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsBugcheckOnCorrupt" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsDisableCompression" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsDisableEncryption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsEncryptPagingFile" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsMemoryUsage" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsMftZoneReservation" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "RefsDisableLastAccessUpdate" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "UdfsSoftwareDefectManagement" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "Win31FileSystem" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "FileNameCache" /t REG_DWORD /d "1024" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "PathCache" /t REG_DWORD /d "128" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsDisable8dot3NameCreation" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "ContigFileAllocSize" /t REG_DWORD /d "1536" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "DontVerifyRandomDrivers" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\FileSystem" /v "DisableDeleteNotification" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\FileSystem" /v "LongPathsEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\FileSystem" /v "NtfsAllowExtendedCharacter8dot3Rename" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\FileSystem" /v "NtfsBugcheckOnCorrupt" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\FileSystem" /v "NtfsDisableCompression" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\FileSystem" /v "NtfsDisableEncryption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\FileSystem" /v "NtfsEncryptPagingFile" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\FileSystem" /v "NtfsMemoryUsage" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\FileSystem" /v "NtfsMftZoneReservation" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\FileSystem" /v "RefsDisableLastAccessUpdate" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\FileSystem" /v "UdfsSoftwareDefectManagement" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\FileSystem" /v "Win31FileSystem" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\FileSystem" /v "FileNameCache" /t REG_DWORD /d "1024" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\FileSystem" /v "PathCache" /t REG_DWORD /d "128" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\FileSystem" /v "NtfsDisable8dot3NameCreation" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\FileSystem" /v "ContigFileAllocSize" /t REG_DWORD /d "1536" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\FileSystem" /v "DontVerifyRandomDrivers" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableFirstLogonAnimation" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "SynchronousUserGroupPolicy" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "VerboseStatus" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "SynchronousMachineGroupPolicy" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "HungAppTimeout" /t REG_SZ /d "1000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "ActiveWndTrkTimeout" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "AutoEndTasks" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "FontSmoothing" /t REG_SZ /d "2" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "PaintDesktopVersion" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "WaitToKillAppTimeout" /t REG_SZ /d "2000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "LowLevelHooksTimeout" /t REG_SZ /d "2000" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoLowDiskSpaceChecks" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "LinkResolveIgnoreLinkInfo" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoResolveSearch" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoResolveTrack" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "DisableLogonBackgroundImage" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched" /v "TimerResolution" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control" /v "SystemStartOptions" /t REG_SZ /d " NOEXECUTE=OPTIN  NOGUIBOOT  BOOTLOGO" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control" /v "DirtyShutdownCount" /t REG_DWORD /d "120" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control" /v "WaitToKillServiceTimeout" /t REG_SZ /d "2000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control" /v "WaitToKillAppTimeout" /t REG_SZ /d "2000" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /v "StartupDelayInMSec" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "Max Cached Icons" /t REG_SZ /d "2000" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ExtendedUIHoverTime" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarAnimations" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ListviewAlphaSelect" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Services\LanmanWorkstation\Parameters" /v "MaxCollectionCount" /t REG_DWORD /d "32" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Services\LanmanWorkstation\Parameters" /v "MaxThreads" /t REG_DWORD /d "30" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Services\LanmanWorkstation\Parameters" /v "MaxCmds" /t REG_DWORD /d "30" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\PCHealth\ErrorReporting" /v "ShowUI" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\PCHealth\ErrorReporting" /v "DoReport" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AeDebug" /v "Auto" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Session Manager" /v "AutoChkTimeOut" /t REG_DWORD /d "5" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "AutoRestartShell" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Multimedia\Audio" /v "UserDuckingPreference" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\LogonUI" /v "ButtonSet" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ListviewShadow" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ListviewShadow" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v "VisualFXSetting" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v "DontReportinfectioninformation" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Policies\Microsoft\Windows\Explorer" /v "NoWindowMinimizingShortcuts" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Lsa" /v "forceguest" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Dfrg\BootOptimizeFunction" /v "Enable" /t REG_SZ /d "N" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableStartupSound" /t REG_DWORD /d "1" /f
taskkill /f /im explorer.exe
start explorer.exe
cls
goto 1

:A5
cls
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortana" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCloudSearch" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWeb" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWebOverMeteredConnections" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "DisableWebSearch" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowSearchToUseLocation" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortanaAboveLock" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Speech_OneCore\Preferences" /v "ModelDownloadAllowed" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\InputPersonalization\TrainedDataStore" /v "HarvestContacts" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Personalization\Settings" /v "AcceptedPrivacyPolicy" /t REG_DWORD /d "0" /f
cls
goto 1


:A6
cls
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableRoutinelyTakingAction" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableBehaviorMonitoring" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableOnAccessProtection" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableScanOnRealtimeEnable" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Services\WinDefend" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\WinDefend" /v "Start" /t REG_DWORD /d "4" /f
cls
goto 1

:A7
cls
PowerShell -Command "Get-AppxPackage *PandoraMediaInc* | Remove-AppxPackage" > nul
PowerShell -Command "Get-AppxPackage *Flipboard* | Remove-AppxPackage" > nul
PowerShell -Command "Get-AppxPackage *Microsoft.BingNews* | Remove-AppxPackage" > nul
PowerShell -Command "Get-AppxPackage *Microsoft.GetHelp* | Remove-AppxPackage" > nul
PowerShell -Command "Get-AppxPackage *Microsoft.Getstarted* | Remove-AppxPackage" > nul
PowerShell -Command "Get-AppxPackage *Microsoft.Messaging* | Remove-AppxPackage" > nul
PowerShell -Command "Get-AppxPackage *CandyCrush* | Remove-AppxPackage" > nul
PowerShell -Command "Get-AppxPackage *Microsoft.Microsoft3DViewer* | Remove-AppxPackage" > nul
PowerShell -Command "Get-AppxPackage *Microsoft.MicrosoftOfficeHub* | Remove-AppxPackage" > nul
PowerShell -Command "Get-AppxPackage *Microsoft.MicrosoftSolitaireCollection* | Remove-AppxPackage" > nul
PowerShell -Command "Get-AppxPackage *Microsoft.NetworkSpeedTest* | Remove-AppxPackage" > nul
PowerShell -Command "Get-AppxPackage *Microsoft.Office.Sway* | Remove-AppxPackage" > nul
PowerShell -Command "Get-AppxPackage *Microsoft.OneConnect* | Remove-AppxPackage" > nul
PowerShell -Command "Get-AppxPackage *Microsoft.People* | Remove-AppxPackage" > nul
PowerShell -Command "Get-AppxPackage *Microsoft.Print3D* | Remove-AppxPackage" > nul
PowerShell -Command "Get-AppxPackage *Microsoft.WindowsAlarms* | Remove-AppxPackage" > nul
PowerShell -Command "Get-AppxPackage *Microsoft.WindowsCamera* | Remove-AppxPackage" > nul
PowerShell -Command "Get-AppxPackage *microsoft.windowscommunicationsapps* | Remove-AppxPackage" > nul
PowerShell -Command "Get-AppxPackage *Microsoft.WindowsFeedbackHub* | Remove-AppxPackage" > nul
PowerShell -Command "Get-AppxPackage *Microsoft.XboxGameOverlay* | Remove-AppxPackage" > nul
PowerShell -Command "Get-AppxPackage *Microsoft.WindowsMaps* | Remove-AppxPackage" > nul
PowerShell -Command "Get-AppxPackage *Spotify* | Remove-AppxPackage" > nul
PowerShell -Command "Get-AppxPackage *Microsoft.WindowsSoundRecorder* | Remove-AppxPackage" > nul
PowerShell -Command "Get-AppxPackage *Microsoft.Xbox.TCUI* | Remove-AppxPackage" > nul
PowerShell -Command "Get-AppxPackage *Microsoft.XboxApp* | Remove-AppxPackage" > nul
PowerShell -Command "Get-AppxPackage *Microsoft.XboxIdentityProvider* | Remove-AppxPackage" > nul
PowerShell -Command "Get-AppxPackage *Microsoft.XboxSpeechToTextOverlay* | Remove-AppxPackage" > nul
PowerShell -Command "Get-AppxPackage *Microsoft.ZuneMusic* | Remove-AppxPackage" > nul
PowerShell -Command "Get-AppxPackage *Microsoft.WindowsCalculator* | Remove-AppxPackage" > nul
PowerShell -Command "Get-AppxPackage *Microsoft.SkypeApp* | Remove-AppxPackage" > nul
PowerShell -Command "Get-AppxPackage *Microsoft.ZuneVideo* | Remove-AppxPackage" > nul
PowerShell -Command "Get-AppxPackage *EclipseManager* | Remove-AppxPackage" > nul
PowerShell -Command "Get-AppxPackage *AdobeSystemsIncorporated.AdobePhotoshopExpress* | Remove-AppxPackage" > nul
PowerShell -Command "Get-AppxPackage *Duolingo-LearnLanguagesforFree* | Remove-AppxPackage" > nul
PowerShell -Command "Get-AppxPackage *Wunderlist* | Remove-AppxPackage" > nul
PowerShell -Command "Get-AppxPackage *Twitter* | Remove-AppxPackage" > nul
PowerShell -Command "Get-AppxPackage *Facebook* | Remove-AppxPackage" > nul
PowerShell -Command "Get-AppxPackage *Microsoft.Advertising.Xaml_10.1712.5.0_x64__8wekyb3d8bbwe* | Remove-AppxPackage" > nul
PowerShell -Command "Get-AppxPackage *Microsoft.Advertising.Xaml_10.1712.5.0_x86__8wekyb3d8bbwe* | Remove-AppxPackage" > nul
PowerShell -Command "Get-AppxPackage *Microsoft.BingWeather* | Remove-AppxPackage" > nul
PowerShell -Command "Get-AppxPackage *Microsoft.MSPaint* | Remove-AppxPackage" > nul
PowerShell -Command "Get-AppxPackage *Microsoft.MicrosoftStickyNotes* | Remove-AppxPackage" > nul
PowerShell -Command "Get-AppxPackage *Microsoft.Windows.Photos* | Remove-AppxPackage" > nul
PowerShell -Command "Get-AppxPackage *Microsoft.WindowsStore* | Remove-AppxPackage" > nul
sc stop AppXSvc > nul
sc config AppXSvc start= disabled > nul
timeout 2 > nul
cls
taskkill /f /im explorer.exe
start explorer.exe
cls
goto 1



:ColorText
rem echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1
GOTO :EOF

:IsAdmin
Reg.exe query "HKU\S-1-5-19\Environment"
If Not %ERRORLEVEL% EQU 0 (
 Cls & Echo You must have administrator rights to continue ... 
 Pause & Exit
)
Cls
goto:eof
goto :eof
