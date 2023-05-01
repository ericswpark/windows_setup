# Install authentication programs
# Prerequisite: winget must be installed!
# Find programs from https://winget.run/

$Programs = @'
Bitwarden.Bitwarden
'@

. ".\install_programs.ps1"
installPrograms -Caller "auth" -Programs $Programs