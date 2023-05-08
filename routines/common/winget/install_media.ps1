# Install media programs
# Prerequisite: winget must be installed!
# Find programs from https://winget.run/

$Programs = @'
VideoLAN.VLC
clsid2.mpc-hc
Plex.Plex
Jellyfin.JellyfinMediaPlayer
'@

. ".\install_programs.ps1"
installPrograms -Caller "media" -Programs $Programs