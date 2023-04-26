Write-Host "This script will set up a new Windows 10 computer."
Write-Host "Press Enter to continue, or close the window to stop the script."
Pause

Write-Host "Importing registry keys..."
& "$PSScriptRoot\registry\import_all.ps1"
Write-Host "Registry key import complete."

Write-Host "Changing the PC name..."
& "$PSScriptRoot\routines\change_pc_name.ps1"
Write-Host "PC name change complete."

Write-Host "Removing Windows 10 bloatware..."
& "$PSScriptRoot\routines\remove_windows_10_bloatware.ps1"
Write-Host "Windows 10 bloatware removal complete."

Write-Host "Turning off 'News and Interests'..."
& "$PSScriptRoot\routines\turn_off_news_and_interests.ps1"
Write-Host "Turning 'News and Interests' off complete."

Write-Host "At this point, please go to the Microsoft Store and install the App Installer app."
Write-Host "Look, here's a handy link:"
Write-Host "https://www.microsoft.com/p/app-installer/9nblggh4nns1#activetab=pivot:overviewtab"
Write-Host ""
Write-Host "Once installation is complete, come back here and press the Enter key."
Pause

Write-Host "Installing all programs defined in winget routine..."
& "$PSScriptRoot\routines\winget\install_all.ps1"
Write-Host "Installation complete."

Write-Host "At this point, please restart your computer and enjoy your new Windows 10 PC!"