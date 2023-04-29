# Install encryption programs
# Prerequisite: winget must be installed!
# Find programs from https://winget.run/

$Programs = @'
Cryptomator.Cryptomator
'@ -split [environment]::NewLine

. ".\install_programs.ps1"
.\install_programs("encryption", $Programs)

# Workaround for VeraCrypt failing to install
# See https://github.com/microsoft/winget-pkgs/issues/69241#issuecomment-1211675482
winget install --id IDRIX.VeraCrypt --exact --source winget --silent