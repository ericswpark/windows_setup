# Turns off the Weather and News icon in the task bar
# Thanks to u/Ill_Branch1293 on Reddit for the source! Find it in the URL below:
# https://www.reddit.com/r/sysadmin/comments/s1iomh/comment/hw0soe4/

Write-Host "Turning off 'News and Interests...'"
Write-Host "Warning: this will close Windows Explorer and all running tasks."

TASKKILL /IM explorer.exe /F

Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Feeds" -Name "ShellFeedsTaskbarViewMode" -Type DWord -Value 2

Start-Process explorer.exe

Write-Host "Done! News and Interests is now off."
