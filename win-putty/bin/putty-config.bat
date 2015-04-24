@ECHO OFF
ECHO Windows Registry Editor Version 5.00 >> x-config.reg
ECHO. >> x-config.reg
ECHO [HKEY_CURRENT_USER\Software\SimonTatham\PuTTY\Sessions\x-config] >> x-config.reg
ECHO "HostName"="%1%" >> x-config.reg
ECHO "LogFileName"="../log/&H.&Y&M&D.&T.log" >> x-config.reg
ECHO "ScrollbackLines"=dword:00000800 >> x-config.reg
