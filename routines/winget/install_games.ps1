# Install core programs
# Prerequisite: winget must be installed!
# Find programs from https://winget.run/

$Programs = @'
Valve.Steam
Mojang.MinecraftLauncher
'@ -split [environment]::NewLine

. ".\install_programs.ps1"
.\install_programs("games", $Programs)