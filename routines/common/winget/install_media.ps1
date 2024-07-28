# Install media programs
# Prerequisite: winget must be installed!
# Find programs from https://winget.run/

$Programs = @'
VideoLAN.VLC
clsid2.mpc-hc
Jellyfin.JellyfinMediaPlayer
'@

$scriptpath = $MyInvocation.MyCommand.Path
$dir = Split-Path $scriptpath
. "$dir\install_programs.ps1"
installPrograms -Caller "media" -Programs $Programs