# Install Logitech Options+ driver
# Prerequisite: winget must be installed!
# Find programs from https://winget.run/

$Programs = @'
Logitech.OptionsPlus
'@

. ".\install_programs.ps1"
installPrograms -Caller "logitech_drivers" -Programs $Programs