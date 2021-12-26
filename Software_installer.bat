@echo off
color 0B

mode con: cols=120 lines=40
SET TempVBSFile=%temp%\~tmpSendKeysTemp.vbs
IF EXIST "%TempVBSFile%" DEL /F /Q "%TempVBSFile%"
ECHO Set WshShell = WScript.CreateObject("WScript.Shell") >>"%TempVBSFile%"
ECHO Wscript.Sleep 1                                    >>"%TempVBSFile%"
ECHO WshShell.SendKeys "{F11}"                            >>"%TempVBSFile%
ECHO Wscript.Sleep 1                                    >>"%TempVBSFile%"

CSCRIPT //nologo "%TempVBSFile%"
cls

echo Made by Boenix
timeout /T 5 /NOBREAK > nul
cls
goto start

:start
color 0A
echo Which program whould you like to install ?
echo.
echo 1) 7zip (Installed silently)
echo 2) Discord (Installed silently)
echo 3) Epic Games (Installed silently)
echo 4) Nsudo (portable program) ( Download Place = On Desktop)
echo 5) ISLC (portable program) ( Download Place = On Desktop)
echo 6) Steam (Installed silently)
echo 7) Battle.net (Manual install) ( Download Place = On Desktop)
echo 8) Origin (Manual install) ( Download Place = On Desktop)
echo 9) Timer Resolution (Portable program) ( Download Place = On Desktop)
echo 10) Notepad++ (Installed silently)
echo 11) Open shell (Installed silently)
echo 12) Msi afterburner (Installed silently)
echo 13) VLC (Installed silently)
echo 14) Autoruns (Portable program) ( Download Place = On Desktop)
echo 15) Nvidia Profile Inspector (Portable program) ( Download Place = On Desktop)
echo 16) NVCleanstall (Portable program) ( Download Place = On Desktop)
echo 17) DDU (Portable program) ( Download Place = On Desktop) 
echo 18) Msi Mode (Portable program) ( Download Place = On Desktop)
echo 19) Winrar (Installed silently) 
echo 20) NVslimmer (Portable program) ( Download Place = On Desktop)
echo 21) Firefox (Installed silently) 
echo 22) Chrome (Installed silently)
echo 23) GPU-Z (Installed silently)
echo 24) CPU-Z (Installed silently)
echo 25) OBS (Installed silently)
echo 26) Stream labs (Installed silently)
echo 27) Malwarebytes (Installed silently)
echo 28) Revo Uninstaller (Portable program) ( Download Place = On Desktop)
echo 29) Everything search (Installed silently) Process Hacker
echo 30) Process Hacker (Installed silently)
echo 0) EXIT
echo.
set /p download=:

if "%download%"=="1" goto 7zip
if "%download%"=="2" goto Discord
if "%download%"=="3" goto EpicGames
if "%download%"=="4" goto Nsudo 
if "%download%"=="5" goto ISLC
if "%download%"=="6" goto Steam 
if "%download%"=="7" goto Battle.net
if "%download%"=="8" goto Origin
if "%download%"=="9" goto TimerResolution
if "%download%"=="10" goto Notepad++
if "%download%"=="11" goto Openshell
if "%download%"=="12" goto Msiafterburner
if "%download%"=="13" goto VLC
if "%download%"=="14" goto Autoruns
if "%download%"=="15" goto NvidiaProfileInspector
if "%download%"=="16" goto NVCleanstall
if "%download%"=="17" goto DDU
if "%download%"=="18" goto MsiMode
if "%download%"=="19" goto Winrar
if "%download%"=="20" goto NVslimmer
if "%download%"=="21" goto Firefox
if "%download%"=="22" goto Chrome
if "%download%"=="23" goto GPU-Z
if "%download%"=="24" goto CPU-Z
if "%download%"=="25" goto OBS
if "%download%"=="26" goto Streamlabs
if "%download%"=="27" goto Malwarebytes
if "%download%"=="28" goto RevoUninstaller
if "%download%"=="29" goto Everythingsearch
if "%download%"=="30" goto ProcessHacker
if "%download%"=="0" goto Exit

cls
color 4
echo invalid input , reseting ...
timeout /T 3 /NOBREAK > nul
cls
goto start

:7zip
cls
echo loading files...
powershell Invoke-WebRequest "https://www.7-zip.org/a/7z2106-x64.exe" -OutFile "C:\7zip.exe"
cls
start C:\7zip.exe /S
echo Installing.
timeout /T 3 /NOBREAK > nul
cls
echo Installing..
timeout /T 3 /NOBREAK > nul
cls
echo Installing...
timeout /T 3 /NOBREAK > nul
cls
Reg.exe add "HKCU\Software\7-Zip\FM\Columns" /v "RootFolder" /t REG_BINARY /d "0100000000000000010000000400000001000000A0000000" /f > nul
Reg.exe add "HKCU\Software\7-Zip\Options" /v "ElimDupExtract" /t REG_DWORD /d "0" /f > nul
Reg.exe add "HKCU\Software\7-Zip\Options" /v "ContextMenu" /t REG_DWORD /d "4100" /f > nul
Reg.exe add "HKCU\Software\Classes\.001" /ve /t REG_SZ /d "7-Zip.001" /f > nul
Reg.exe add "HKCU\Software\Classes\.7z" /ve /t REG_SZ /d "7-Zip.7z" /f > nul
Reg.exe add "HKCU\Software\Classes\.arj" /ve /t REG_SZ /d "7-Zip.arj" /f > nul
Reg.exe add "HKCU\Software\Classes\.bz2" /ve /t REG_SZ /d "7-Zip.bz2" /f > nul
Reg.exe add "HKCU\Software\Classes\.bzip2" /ve /t REG_SZ /d "7-Zip.bzip2" /f > nul
Reg.exe add "HKCU\Software\Classes\.cab" /ve /t REG_SZ /d "7-Zip.cab" /f > nul
Reg.exe add "HKCU\Software\Classes\.cpio" /ve /t REG_SZ /d "7-Zip.cpio" /f > nul
Reg.exe add "HKCU\Software\Classes\.deb" /ve /t REG_SZ /d "7-Zip.deb" /f > nul
Reg.exe add "HKCU\Software\Classes\.dmg" /ve /t REG_SZ /d "7-Zip.dmg" /f > nul
Reg.exe add "HKCU\Software\Classes\.fat" /ve /t REG_SZ /d "7-Zip.fat" /f > nul
Reg.exe add "HKCU\Software\Classes\.gz" /ve /t REG_SZ /d "7-Zip.gz" /f > nul
Reg.exe add "HKCU\Software\Classes\.gzip" /ve /t REG_SZ /d "7-Zip.gzip" /f > nul
Reg.exe add "HKCU\Software\Classes\.hfs" /ve /t REG_SZ /d "7-Zip.hfs" /f > nul
Reg.exe add "HKCU\Software\Classes\.iso" /ve /t REG_SZ /d "7-Zip.iso" /f > nul
Reg.exe add "HKCU\Software\Classes\.lha" /ve /t REG_SZ /d "7-Zip.lha" /f > nul
Reg.exe add "HKCU\Software\Classes\.lzh" /ve /t REG_SZ /d "7-Zip.lzh" /f > nul
Reg.exe add "HKCU\Software\Classes\.lzma" /ve /t REG_SZ /d "7-Zip.lzma" /f > nul
Reg.exe add "HKCU\Software\Classes\.ntfs" /ve /t REG_SZ /d "7-Zip.ntfs" /f > nul
Reg.exe add "HKCU\Software\Classes\.rar" /ve /t REG_SZ /d "7-Zip.rar" /f > nul
Reg.exe add "HKCU\Software\Classes\.rpm" /ve /t REG_SZ /d "7-Zip.rpm" /f > nul
Reg.exe add "HKCU\Software\Classes\.squashfs" /ve /t REG_SZ /d "7-Zip.squashfs" /f > nul
Reg.exe add "HKCU\Software\Classes\.swm" /ve /t REG_SZ /d "7-Zip.swm" /f > nul
Reg.exe add "HKCU\Software\Classes\.tar" /ve /t REG_SZ /d "7-Zip.tar" /f > nul
Reg.exe add "HKCU\Software\Classes\.taz" /ve /t REG_SZ /d "7-Zip.taz" /f > nul
Reg.exe add "HKCU\Software\Classes\.tbz" /ve /t REG_SZ /d "7-Zip.tbz" /f > nul
Reg.exe add "HKCU\Software\Classes\.tbz2" /ve /t REG_SZ /d "7-Zip.tbz2" /f > nul
Reg.exe add "HKCU\Software\Classes\.tgz" /ve /t REG_SZ /d "7-Zip.tgz" /f > nul
Reg.exe add "HKCU\Software\Classes\.tpz" /ve /t REG_SZ /d "7-Zip.tpz" /f > nul
Reg.exe add "HKCU\Software\Classes\.txz" /ve /t REG_SZ /d "7-Zip.txz" /f > nul
Reg.exe add "HKCU\Software\Classes\.vhd" /ve /t REG_SZ /d "7-Zip.vhd" /f > nul
Reg.exe add "HKCU\Software\Classes\.wim" /ve /t REG_SZ /d "7-Zip.wim" /f > nul
Reg.exe add "HKCU\Software\Classes\.xar" /ve /t REG_SZ /d "7-Zip.xar" /f > nul
Reg.exe add "HKCU\Software\Classes\.xz" /ve /t REG_SZ /d "7-Zip.xz" /f > nul
Reg.exe add "HKCU\Software\Classes\.z" /ve /t REG_SZ /d "7-Zip.z" /f > nul
Reg.exe add "HKCU\Software\Classes\.zip" /ve /t REG_SZ /d "7-Zip.zip" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.001" /ve /t REG_SZ /d "001 Archive" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.001\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,9" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.001\shell" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.001\shell\open" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.001\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.7z" /ve /t REG_SZ /d "7z Archive" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.7z\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,0" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.7z\shell" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.7z\shell\open" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.7z\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.arj" /ve /t REG_SZ /d "arj Archive" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.arj\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,4" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.arj\shell" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.arj\shell\open" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.arj\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.bz2" /ve /t REG_SZ /d "bz2 Archive" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.bz2\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,2" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.bz2\shell" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.bz2\shell\open" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.bz2\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.bzip2" /ve /t REG_SZ /d "bzip2 Archive" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.bzip2\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,2" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.bzip2\shell" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.bzip2\shell\open" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.bzip2\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.cab" /ve /t REG_SZ /d "cab Archive" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.cab\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,7" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.cab\shell" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.cab\shell\open" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.cab\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.cpio" /ve /t REG_SZ /d "cpio Archive" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.cpio\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,12" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.cpio\shell" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.cpio\shell\open" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.cpio\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.deb" /ve /t REG_SZ /d "deb Archive" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.deb\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,11" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.deb\shell" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.deb\shell\open" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.deb\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.dmg" /ve /t REG_SZ /d "dmg Archive" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.dmg\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,17" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.dmg\shell" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.dmg\shell\open" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.dmg\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.fat" /ve /t REG_SZ /d "fat Archive" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.fat\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,21" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.fat\shell" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.fat\shell\open" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.fat\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.gz" /ve /t REG_SZ /d "gz Archive" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.gz\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,14" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.gz\shell" /ve /t REG_SZ /d "" /f > nul 
Reg.exe add "HKCU\Software\Classes\7-Zip.gz\shell\open" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.gz\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.gzip" /ve /t REG_SZ /d "gzip Archive" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.gzip\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,14" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.gzip\shell" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.gzip\shell\open" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.gzip\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.hfs" /ve /t REG_SZ /d "hfs Archive" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.hfs\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,18" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.hfs\shell" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.hfs\shell\open" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.hfs\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.iso" /ve /t REG_SZ /d "iso Archive" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.iso\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,8" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.iso\shell" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.iso\shell\open" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.iso\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.lha" /ve /t REG_SZ /d "lha Archive" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.lha\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,6" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.lha\shell" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.lha\shell\open" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.lha\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.lzh" /ve /t REG_SZ /d "lzh Archive" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.lzh\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,6" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.lzh\shell" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.lzh\shell\open" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.lzh\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.lzma" /ve /t REG_SZ /d "lzma Archive" /f > nul 
Reg.exe add "HKCU\Software\Classes\7-Zip.lzma\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,16" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.lzma\shell" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.lzma\shell\open" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.lzma\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.ntfs" /ve /t REG_SZ /d "ntfs Archive" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.ntfs\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,22" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.ntfs\shell" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.ntfs\shell\open" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.ntfs\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.rar" /ve /t REG_SZ /d "rar Archive" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.rar\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,3" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.rar\shell" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.rar\shell\open" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.rar\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.rpm" /ve /t REG_SZ /d "rpm Archive" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.rpm\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,10" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.rpm\shell" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.rpm\shell\open" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.rpm\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.squashfs" /ve /t REG_SZ /d "squashfs Archive" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.squashfs\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,24" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.squashfs\shell" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.squashfs\shell\open" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.squashfs\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.swm" /ve /t REG_SZ /d "swm Archive" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.swm\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,15" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.swm\shell" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.swm\shell\open" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.swm\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.tar" /ve /t REG_SZ /d "tar Archive" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.tar\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,13" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.tar\shell" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.tar\shell\open" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.tar\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.taz" /ve /t REG_SZ /d "taz Archive" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.taz\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,5" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.taz\shell" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.taz\shell\open" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.taz\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f> nul
Reg.exe add "HKCU\Software\Classes\7-Zip.tbz" /ve /t REG_SZ /d "tbz Archive" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.tbz2" /ve /t REG_SZ /d "tbz2 Archive" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.tbz2\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,2" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.tbz2\shell" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.tbz2\shell\open" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.tbz2\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.tbz\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,2" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.tbz\shell" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.tbz\shell\open" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.tbz\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.tgz" /ve /t REG_SZ /d "tgz Archive" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.tgz\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,14" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.tgz\shell" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.tgz\shell\open" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.tgz\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.tpz" /ve /t REG_SZ /d "tpz Archive" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.tpz\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,14" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.tpz\shell" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.tpz\shell\open" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.tpz\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.txz" /ve /t REG_SZ /d "txz Archive" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.txz\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,23" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.txz\shell" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.txz\shell\open" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.txz\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.vhd" /ve /t REG_SZ /d "vhd Archive" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.vhd\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,20" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.vhd\shell" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.vhd\shell\open" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.vhd\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.wim" /ve /t REG_SZ /d "wim Archive" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.wim\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,15" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.wim\shell" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.wim\shell\open" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.wim\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.xar" /ve /t REG_SZ /d "xar Archive" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.xar\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,19" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.xar\shell" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.xar\shell\open" /ve /t REG_SZ /d "" /f > nul 
Reg.exe add "HKCU\Software\Classes\7-Zip.xar\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.xz" /ve /t REG_SZ /d "xz Archive" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.xz\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,23" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.xz\shell" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.xz\shell\open" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.xz\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.z" /ve /t REG_SZ /d "z Archive" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.z\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,5" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.z\shell" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.z\shell\open" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.z\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.zip" /ve /t REG_SZ /d "zip Archive" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.zip\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,1" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.zip\shell" /ve /t REG_SZ /d "" /f > nul
Reg.exe add "HKCU\Software\Classes\7-Zip.zip\shell\open" /ve /t REG_SZ /d "" /f > nul
del /q /f "C:\7zip.exe"
cls
echo 7zip installed!
timeout /T 3 /NOBREAK > nul
cls
goto start

:Exit
cls
echo Exiting.
timeout 1 > nul
cls
echo Exiting..
timeout 1 > nul
cls
echo Exiting...
timeout 1 > nul
cls
exit

:Discord
cls
echo loading files...
powershell Invoke-WebRequest "https://dl.discordapp.net/distro/app/stable/win/x86/1.0.9003/DiscordSetup.exe" -OutFile "C:\Discord.exe"
cls
start C:\Discord.exe -s
echo Installing.
timeout /T 10 /NOBREAK > nul
cls
echo Installing..
timeout /T 10 /NOBREAK > nul
cls
echo Installing...
timeout /T 10 /NOBREAK > nul
cls
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Discord.exe" /v "UseLargePages" /t REG_DWORD /d "1" /f > nul
del /q /f "C:\Discord.exe"
echo Discord installed!
timeout /T 3 /NOBREAK > nul
cls
goto start

:EpicGames
cls
echo loading files...
powershell Invoke-WebRequest "https://launcher-public-service-prod06.ol.epicgames.com/launcher/api/installer/download/EpicGamesLauncherInstaller.msi?trackingId=90fe9b1b98d54caf989df910b0e55e53" -OutFile "C:\EpicGames.msi"
cls
start C:\EpicGames.msi /qn /norestart
echo Installing.
timeout /T 40 /NOBREAK > nul
cls
echo Installing..
timeout /T 35 /NOBREAK > nul
cls
echo Installing...
timeout /T 20 /NOBREAK > nul
cls
del /q /f "C:\EpicGames.msi"
echo Epic Games installed!
timeout /T 3 /NOBREAK > nul
cls
goto start

:Nsudo
cls
echo loading files...
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/919533685785632798/919540160083931206/NSudoLG.exe" -OutFile "C:\users\%username%\Desktop\Nsudo.exe"
cls
echo Installing.
timeout /T 2 /NOBREAK > nul
cls
echo Installing..
timeout /T 1 /NOBREAK > nul
cls
echo Installing...
timeout /T 1 /NOBREAK > nul
cls
echo Nsudo installed!
timeout /T 3 /NOBREAK > nul
cls
goto start

:ISLC
cls
echo loading files...
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/919533685785632798/919552354502713364/ISLC.7z" -OutFile "C:\users\%username%\Desktop\ISLC.7z"
cls
echo Installing.
timeout /T 2 /NOBREAK > nul
cls
echo Installing..
timeout /T 2 /NOBREAK > nul
cls
echo Installing...
timeout /T 1 /NOBREAK > nul
cls
echo ISLC installed!
timeout /T 3 /NOBREAK > nul
cls
goto start

:Steam
cls
echo loading files...
powershell Invoke-WebRequest "https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe" -OutFile "C:\Steam.exe"
cls
start C:\Steam.exe /S
echo Installing.
timeout /T 10 /NOBREAK > nul
cls
echo Installing..
timeout /T 5 /NOBREAK > nul
cls
echo Installing...
timeout /T 10 /NOBREAK > nul
cls
del /q /f "C:\Steam.exe"
echo Steam installed!
timeout /T 3 /NOBREAK > nul
cls
goto start

:Battle.net
cls
echo loading files...
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/919533685785632798/919558822916407316/Battle.net-Setup.exe" -OutFile "C:\users\%username%\Desktop\Battle.net-Setup.exe"
cls
echo Installing.
timeout /T 2 /NOBREAK > nul
cls
echo Installing..
timeout /T 2 /NOBREAK > nul
cls
echo Installing...
timeout /T 1 /NOBREAK > nul
cls
echo Battle.net installed!
timeout /T 3 /NOBREAK > nul
cls
goto start

:Origin
cls
echo loading files...
powershell Invoke-WebRequest "https://www.dm.origin.com/download" -OutFile "C:\users\%username%\Desktop\Origin.exe"
cls
echo Installing.
timeout /T 2 /NOBREAK > nul
cls
echo Installing..
timeout /T 2 /NOBREAK > nul
cls
echo Installing...
timeout /T 1 /NOBREAK > nul
cls
echo Origin installed!
timeout /T 3 /NOBREAK > nul
cls
goto start

:TimerResolution
cls
echo loading files...
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/919533685785632798/921429831848169522/TimerResolution.zip" -OutFile "C:\users\%username%\Desktop\TimerResolution.zip"
cls
echo Installing.
timeout /T 4 /NOBREAK > nul
cls
echo Installing..
timeout /T 6 /NOBREAK > nul
cls
echo Installing...
timeout /T 1 /NOBREAK > nul
cls
echo Timer Resolution installed!
timeout /T 3 /NOBREAK > nul
cls
goto start

:Notepad++
cls
echo loading files...
powershell Invoke-WebRequest "https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v8.1.9.3/npp.8.1.9.3.Installer.x64.exe" -OutFile "C:\notepad++.exe"
cls
start C:\notepad++.exe /S
echo Installing.
timeout /T 7 /NOBREAK > nul
cls
echo Installing..
timeout /T 5 /NOBREAK > nul
cls
echo Installing...
timeout /T 3 /NOBREAK > nul
cls
del /q /f "C:\notepad++.exe"
echo Notepad++ installed!
timeout /T 3 /NOBREAK > nul
cls
goto start

:Openshell
cls
echo loading files...
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/919533685785632798/919579841353887754/OpenShellSetup_4_4_168.exe" -OutFile "C:\Openshell.exe"
cls
start C:\Openshell.exe /qn
echo Installing.
timeout /T 10 /NOBREAK > nul
cls
echo Installing..
timeout /T 10 /NOBREAK > nul
cls
echo Installing...
timeout /T 10 /NOBREAK > nul
cls
del /q /f "C:\Openshell.exe"
echo Open shell installed!
timeout /T 3 /NOBREAK > nul
cls
goto start

:Msiafterburner
cls
echo loading files...
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/919533685785632798/919584694058762320/MSIAfterburnerSetup464.exe" -OutFile "C:\msiafterburner.exe"
cls
start C:\msiafterburner.exe /S
echo Installing.
timeout /T 10 /NOBREAK > nul
cls
echo Installing..
timeout /T 10 /NOBREAK > nul
cls
echo Installing...
timeout /T 10 /NOBREAK > nul
cls
del /q /f "C:\msiafterburner.exe"
echo Msi afterburner installed!
timeout /T 3 /NOBREAK > nul
cls
goto start

:VLC
cls
echo loading files...
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/919533685785632798/919611781402488853/vlc-3.0.8-win64.msi" -OutFile "C:\users\%username%\Desktop\vlc.msi"
cls
start C:\users\%username%\Desktop\vlc.msi /qn
echo Installing.
timeout /T 10 /NOBREAK > nul
cls
echo Installing..
timeout /T 10 /NOBREAK > nul
cls
echo Installing...
timeout /T 10 /NOBREAK > nul
cls
del /q /f "C:\users\%username%\Desktop\vlc.msi"
echo VLC installed!
timeout /T 3 /NOBREAK > nul
cls
goto start

:Autoruns
cls
echo loading files...
powershell Invoke-WebRequest "https://download.sysinternals.com/files/Autoruns.zip" -OutFile "C:\users\%username%\Desktop\Autoruns.zip"
cls
echo Installing.
timeout /T 4 /NOBREAK > nul
cls
echo Installing..
timeout /T 6 /NOBREAK > nul
cls
echo Installing...
timeout /T 1 /NOBREAK > nul
cls
echo Autoruns installed!
timeout /T 3 /NOBREAK > nul
cls
goto start

:NvidiaProfileInspector
cls
echo loading files...
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/919533685785632798/919619956348424282/nvidiaProfileInspector.7z" -OutFile "C:\users\%username%\Desktop\nvidiaProfileInspector.7z"
cls
echo Installing.
timeout /T 4 /NOBREAK > nul
cls
echo Installing..
timeout /T 6 /NOBREAK > nul
cls
echo Installing...
timeout /T 1 /NOBREAK > nul
cls
echo Nvidia Profile Inspector installed!
timeout /T 3 /NOBREAK > nul
cls
goto start

:NVCleanstall
cls
echo loading files...
powershell Invoke-WebRequest "https://de1-dl.techpowerup.com/files/QVLm8NirnINOGC1c4HDwyg/1639368531/NVCleanstall_1.12.0.exe" -OutFile "C:\users\%username%\Desktop\NVCleanstall.exe"
cls
echo Installing.
timeout /T 4 /NOBREAK > nul
cls
echo Installing..
timeout /T 6 /NOBREAK > nul
cls
echo Installing...
timeout /T 1 /NOBREAK > nul
cls
echo NVCleanstall installed!
timeout /T 3 /NOBREAK > nul
cls
goto start


:DDU
cls
echo loading files...
powershell Invoke-WebRequest "https://ftp.nluug.nl/pub/games/PC/guru3d/ddu/[Guru3D.com]-DDU.zip" -OutFile "C:\users\%username%\Desktop\DDU.zip"
cls
echo Installing.
timeout /T 4 /NOBREAK > nul
cls
echo Installing..
timeout /T 6 /NOBREAK > nul
cls
echo Installing...
timeout /T 1 /NOBREAK > nul
cls
echo DDU installed!
timeout /T 3 /NOBREAK > nul
cls
goto start

:MsiMode
cls
echo loading files...
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/919533685785632798/919624102837383218/MSI_Mode.exe" -OutFile "C:\users\%username%\Desktop\MSIMode.exe"
cls
echo Installing.
timeout /T 4 /NOBREAK > nul
cls
echo Installing..
timeout /T 6 /NOBREAK > nul
cls
echo Installing...
timeout /T 1 /NOBREAK > nul
cls
echo Msi Mode installed!
timeout /T 3 /NOBREAK > nul
cls
goto start

:Winrar
cls
echo loading files...
powershell Invoke-WebRequest "https://www.win-rar.com/fileadmin/winrar-versions/winrar/winrar-x64-602.exe" -OutFile "C:\winrar.exe"
cls
start C:\winrar.exe /S
echo Installing.
timeout /T 10 /NOBREAK > nul
cls
echo Installing..
timeout /T 10 /NOBREAK > nul
cls
echo Installing...
timeout /T 10 /NOBREAK > nul
cls
del /q /f "C:\winrar.exe"
echo Winrar installed!
timeout /T 3 /NOBREAK > nul
cls
goto start

:NVslimmer
cls
echo loading files...
powershell Invoke-WebRequest "https://ftp.nluug.nl/pub/games/PC/guru3d/nvslimmer/[Guru3D.com]-NVSlimmer.zip" -OutFile "C:\users\%username%\Desktop\NVslimmer.zip"
cls
echo Installing.
timeout /T 4 /NOBREAK > nul
cls
echo Installing..
timeout /T 6 /NOBREAK > nul
cls
echo Installing...
timeout /T 1 /NOBREAK > nul
cls
echo NVslimmer installed!
timeout /T 3 /NOBREAK > nul
cls
goto start

:Firefox
cls
echo loading files...
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/919533685785632798/919655658935156756/Firefox_Setup_95.0.msi" -OutFile "C:\Firefox.msi"
cls
start C:\Firefox.msi /quiet
echo Installing.
timeout /T 10 /NOBREAK > nul
cls
echo Installing..
timeout /T 10 /NOBREAK > nul
cls
echo Installing...
timeout /T 10 /NOBREAK > nul
cls
del /q /f "C:\Firefox.msi"
echo Firefox installed!
timeout /T 3 /NOBREAK > nul
cls
goto start

:Chrome
cls
echo loading files...
powershell Invoke-WebRequest "https://dl.google.com/tag/s/appguid%3D%7B8A69D345-D564-463C-AFF1-A69D9E530F96%7D%26iid%3D%7B0591C8EB-EB40-E317-CBB6-B2EAA37EF590%7D%26lang%3Den%26browser%3D4%26usagestats%3D0%26appname%3DGoogle%2520Chrome%26needsadmin%3Dtrue%26ap%3Dx64-stable-statsdef_0%26brand%3DGCEA/dl/chrome/install/googlechromestandaloneenterprise64.msi" -OutFile "C:\chrome.msi"
cls
start C:\chrome.msi /qn
echo Installing.
timeout /T 10 /NOBREAK > nul
cls
echo Installing..
timeout /T 10 /NOBREAK > nul
cls
echo Installing...
timeout /T 10 /NOBREAK > nul
cls
del /q /f "C:\chrome.msi"
echo Chrome installed!
timeout /T 3 /NOBREAK > nul
cls
goto start

:GPU-Z
cls
echo loading files...
powershell Invoke-WebRequest "https://de1-dl.techpowerup.com/files/6W15h9Xf0-zKxiQ3UCnzlg/1639385017/GPU-Z.2.43.0.exe" -OutFile "C:\GPU-Z.exe"
cls
start C:\GPU-Z.exe -installSilent
echo Installing.
timeout /T 10 /NOBREAK > nul
cls
echo Installing..
timeout /T 10 /NOBREAK > nul
cls
echo Installing...
timeout /T 10 /NOBREAK > nul
cls
del /q /f "C:\GPU-Z.exe"
echo GPU-Z installed!
timeout /T 3 /NOBREAK > nul
cls
goto start

:CPU-Z
cls
echo loading files...
powershell Invoke-WebRequest "https://download.cpuid.com/cpu-z/cpu-z_1.98-en.exe" -OutFile "C:\CPU-Z.exe"
cls
start C:\CPU-Z.exe /VERYSILENT /NORESTART
echo Installing.
timeout /T 10 /NOBREAK > nul
cls
echo Installing..
timeout /T 10 /NOBREAK > nul
cls
echo Installing...
timeout /T 10 /NOBREAK > nul
cls
del /q /f "C:\CPU-Z.exe"
echo CPU-Z installed!
timeout /T 3 /NOBREAK > nul
cls
goto start

:OBS
cls
echo loading files...
powershell Invoke-WebRequest "https://cdn-fastly.obsproject.com/downloads/OBS-Studio-27.1.3-Full-Installer-x64.exe" -OutFile "C:\OBS.exe"
cls
start C:\OBS.exe /S
echo Installing.
timeout /T 10 /NOBREAK > nul
cls
echo Installing..
timeout /T 10 /NOBREAK > nul
cls
echo Installing...
timeout /T 10 /NOBREAK > nul
cls
del /q /f "C:\OBS.exe"
echo OBS installed!
timeout /T 3 /NOBREAK > nul
cls
goto start

:Streamlabs
cls
echo loading files...
powershell Invoke-WebRequest "https://streamlabs.com/streamlabs-desktop/download" -OutFile "C:\streamlabs.exe"
cls
start C:\streamlabs.exe /S
echo Installing.
timeout /T 10 /NOBREAK > nul
cls
echo Installing..
timeout /T 10 /NOBREAK > nul
cls
echo Installing...
timeout /T 10 /NOBREAK > nul
cls
del /q /f "C:\streamlabs.exe"
echo Stream labs installed!
timeout /T 3 /NOBREAK > nul
cls
goto start

:Malwarebytes
cls
echo loading files...
powershell Invoke-WebRequest "https://data-cdn.mbamupdates.com/web/mb4-setup-consumer/MBSetup.exe" -OutFile "C:\malwarebytes.exe"
cls
start C:\malwarebytes.exe /VERYSILENT /NORESTART
echo Installing.
timeout /T 40 /NOBREAK > nul
cls
echo Installing..
timeout /T 40 /NOBREAK > nul
cls
echo Installing...
timeout /T 20 /NOBREAK > nul
cls
del /q /f "C:\malwarebytes.exe"
echo Malwarebytes installed!
timeout /T 3 /NOBREAK > nul
cls
goto start

:RevoUninstaller
cls
echo loading files...
powershell Invoke-WebRequest "https://download.revouninstaller.com/download/RevoUninstaller_Portable.zip" -OutFile "C:\users\%username%\Desktop\RevoUninstaller.zip"
cls
echo Installing.
timeout /T 4 /NOBREAK > nul
cls
echo Installing..
timeout /T 6 /NOBREAK > nul
cls
echo Installing...
timeout /T 1 /NOBREAK > nul
cls
echo Revo Uninstaller installed!
timeout /T 3 /NOBREAK > nul
cls
goto start

:Everythingsearch
cls
echo loading files...
powershell Invoke-WebRequest "https://www.voidtools.com/Everything-1.4.1.1015.x64-Setup.exe" -OutFile "C:\Everythingsearch.exe"
cls
start C:\Everythingsearch.exe /S
echo Installing.
timeout /T 10 /NOBREAK > nul
cls
echo Installing..
timeout /T 5 /NOBREAK > nul
cls
echo Installing...
timeout /T 10 /NOBREAK > nul
cls
del /q /f "C:\Everythingsearch.exe"
echo Everything search installed!
timeout /T 3 /NOBREAK > nul
cls
goto start

:ProcessHacker
cls
echo loading files...
powershell Invoke-WebRequest "https://nav.dl.sourceforge.net/project/processhacker/processhacker2/processhacker-2.39-setup.exe" -OutFile "C:\ProcessHacker.exe"
cls
start C:\ProcessHacker.exe /SILENT /VERYSILENT
echo Installing.
timeout /T 10 /NOBREAK > nul
cls
echo Installing..
timeout /T 5 /NOBREAK > nul
cls
echo Installing...
timeout /T 10 /NOBREAK > nul
cls
del /q /f "C:\ProcessHacker.exe"
echo Process Hacker installed!
timeout /T 3 /NOBREAK > nul
cls
goto start

