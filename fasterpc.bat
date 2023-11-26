@echo off
echo Flushing DNS cache...
ipconfig /flushdns
echo DNS cache flushed.

echo Deleting temporary files...
del /s /q C:\Windows\Temp\*.*
del /s /q C:\Users\your user name\AppData\Local\Temp\*.*
echo Temporary files deleted.

echo Restarting Windows services...
net stop wuauserv
net stop bits
net stop appidsvc
net stop cryptsvc

net start wuauserv
net start bits
net start appidsvc
net start cryptsvc
echo Windows services restarted.

echo Task completed. Restart your computer for changes to take effect.
pause