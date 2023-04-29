# Install social programs
# Prerequisite: winget must be installed!
# Find programs from https://winget.run/

$Programs = @'
SlackTechnologies.Slack
Telegram.TelegramDesktop
Discord.Discord
'@ -split [environment]::NewLine

. ".\install_programs.ps1"
installPrograms -Caller "social" -Programs $Programs