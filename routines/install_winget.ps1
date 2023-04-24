# From https://stackoverflow.com/a/75334942

# Get latest download url
$URL = "https://api.github.com/repos/microsoft/winget-cli/releases/latest"
$URL = (Invoke-WebRequest -Uri $URL).Content | ConvertFrom-Json |
        Select-Object -ExpandProperty "assets" |
        Where-Object "browser_download_url" -Match '.msixbundle' |
        Select-Object -ExpandProperty "browser_download_url"

# Download
Invoke-WebRequest -Uri $URL -OutFile "Setup_winget.msix" -UseBasicParsing

# Install
Add-AppxPackage -Path "Setup_winget.msix"

# Delete file
Remove-Item "Setup_winget.msix"