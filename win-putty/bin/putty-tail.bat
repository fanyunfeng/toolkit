
regedit /s x-config-common.reg

regedit /s x-config.reg
del x-config.reg

start putty.exe -l %2% -load x-config