@echo off

SCHTASKS /DELETE /TN NOTIF1

SCHTASKS /DELETE /TN NOTIF2

goto:eof
