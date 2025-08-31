# Install utility programs
# Prerequisite: winget must be installed!
# Find programs from https://winget.run/

$Programs = @'
7zip.7zip
WinSCP.WinSCP
Microsoft.Sysinternals.ProcessExplorer
CPUID.HWMonitor
GnuPG.Gpg4win
CrystalDewWorld.CrystalDiskMark
CrystalDewWorld.CrystalDiskInfo
qBittorrent.qBittorrent
Tailscale.Tailscale
FastCopy.FastCopy
AntibodySoftware.WizTree
Microsoft.PowerToys
namazso.OpenHashTab
LocalSend.LocalSend
Martchus.syncthingtray
REALiX.HWiNFO
ajeetdsouza.zoxide
Gyan.FFmpeg
'@

$scriptpath = $MyInvocation.MyCommand.Path
$dir = Split-Path $scriptpath
. "$dir\install_programs.ps1"
installPrograms -Caller "utility" -Programs $Programs
