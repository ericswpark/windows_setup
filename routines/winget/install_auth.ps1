# Install authentication programs
# Prerequisite: winget must be installed!
# Find programs from https://winget.run/

$Programs = @'
Bitwarden.Bitwarden
'@ -split [environment]::NewLine

. ".\install_programs.ps1"
install_programs("auth", $Programs)