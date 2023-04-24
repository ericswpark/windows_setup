# Turns off the Weather and News icon in the task bar
# Thanks to u/Fallingdamage on Reddit for the source! Find it in the URL below:
# https://www.reddit.com/r/sysadmin/comments/s1iomh/comment/hw0ubxy/

Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Feeds" -Name "IsFeedsAvailable" -Type DWord -Value 0
Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Feeds" -Name "ShellFeedsTaskbarViewMode" -Type DWord -Value 2
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds" -Name "EnableFeeds" -Type DWord -Value 0