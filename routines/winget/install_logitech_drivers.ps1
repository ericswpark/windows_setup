# Install Logitech Options+ driver
# Prerequisite: winget must be installed!
# Find programs from https://winget.run/

$Programs = @'
Logitech.OptionsPlus
'@ -split [environment]::NewLine

. ".\install_programs.ps1"
install_programs("logitech_drivers", $Programs)