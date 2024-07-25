# Install study programs
# Prerequisite: winget must be installed!
# Find programs from https://winget.run/

$Programs = @'
Obsidian.Obsidian
'@

. ".\install_programs.ps1"
installPrograms -Caller "study" -Programs $Programs