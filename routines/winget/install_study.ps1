# Install study programs
# Prerequisite: winget must be installed!
# Find programs from https://winget.run/

$Programs = @'
Joplin.Joplin
'@ -split [environment]::NewLine

. ".\install_programs.ps1"
install_programs("study", $Programs)