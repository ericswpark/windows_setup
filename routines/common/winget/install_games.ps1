# Install games-related programs
# Prerequisite: winget must be installed!
# Find programs from https://winget.run/

$Programs = @'
Valve.Steam
GOG.Galaxy
EpicGames.EpicGamesLauncher
Mojang.MinecraftLauncher
'@

. ".\install_programs.ps1"
installPrograms -Caller "games" -Programs $Programs
