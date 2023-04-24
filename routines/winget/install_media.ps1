# Install media programs
# Prerequisite: winget must be installed!
# Find programs from https://winget.run/

$Programs = @'
VideoLAN.VLC
clsid2.mpc-hc
Plex.Plex
Jellyfin.JellyfinMediaPlayer
'@ -split [environment]::NewLine

foreach ($Program in $Programs) {
    Winget install --id $Program
}