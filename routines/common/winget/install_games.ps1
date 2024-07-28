# Install games-related programs
# Prerequisite: winget must be installed!
# Find programs from https://winget.run/

$Programs = @'
Valve.Steam
HeroicGamesLauncher.HeroicGamesLauncher
PrismLauncher.PrismLauncher
'@

. ".\install_programs.ps1"
installPrograms -Caller "games" -Programs $Programs
