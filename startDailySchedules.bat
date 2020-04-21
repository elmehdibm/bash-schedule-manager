@echo off

cd > temp.txt

set /p $path=<temp.txt

set "$notifPath1=%$path%\notifications\notif1.bat"

set "$notifPath2=%$path%\notifications\notif2.bat"

SCHTASKS /CREATE /SC DAILY /TN NOTIF1 /TR "%$notifPath1%" /st 23:40

SCHTASKS /CREATE /SC DAILY /TN NOTIF2 /TR "%$notifPath2%" /st 02:00

del temp.txt

del $path

goto:eof
