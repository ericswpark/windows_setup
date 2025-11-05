# Install social programs
# Prerequisite: winget must be installed!
# Find programs from https://winget.run/

$Programs = @'
OpenWhisperSystems.Signal
SlackTechnologies.Slack
Telegram.TelegramDesktop
Discord.Discord
'@

$scriptpath = $MyInvocation.MyCommand.Path
$dir = Split-Path $scriptpath
. "$dir\install_programs.ps1"
installPrograms -Caller "social" -Programs $Programs
