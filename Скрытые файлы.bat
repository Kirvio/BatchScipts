REG QUERY "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v Hidden | Find "0x2"
IF %ERRORLEVEL% == 1 goto turnoff
If %ERRORLEVEL% == 0 goto turnon

:turnon
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v Hidden /t REG_DWORD /d 1 /f

@pause
exit
:turnoff
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v Hidden /t REG_DWORD /d 2 /f

@pause
exit