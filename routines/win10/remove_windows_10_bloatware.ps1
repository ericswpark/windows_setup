# Removes bloatware that I think is unnecessary on Windows 10
# Adjust as necessary to your tastes

# Disney (such as Disney+ and others)
Get-AppxPackage *disney* | Remove-AppxPackage

# Microsoft Solitaire Collection
Get-AppxPackage *solitairecollection* | Remove-AppxPackage

# Twitter
Get-AppxPackage *twitter* | Remove-AppxPackage

# TikTok
Get-AppxPackage *tiktok* | Remove-AppxPackage

# Facebook
Get-AppxPackage *facebook* | Remove-AppxPackage

# Spotify
Get-AppxPackage *spotify* | Remove-AppxPackage