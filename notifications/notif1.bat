@echo off
echo "Calling the notification ..."

set "$title=Food"

set "$msg=Go Eat"

powershell -c "[reflection.assembly]::loadwithpartialname('System.Windows.Forms');[reflection.assembly]::loadwithpartialname('System.Drawing');$notify = new-object system.windows.forms.notifyicon;$notify.icon = [System.Drawing.SystemIcons]::Information;$notify.visible = $true;$notify.showballoontip(10,'%$title%','%$msg%',[system.windows.forms.tooltipicon]::None)"


goto:eof
