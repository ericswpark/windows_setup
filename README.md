# Windows 10 setup scripts

These are the scripts I use to set up a new Windows machine.

## IMPORTANT

Windows restricts running PowerShell scripts by default. To relax this policy, you MUST run:

	Set-ExecutionPolicy AllSigned

in a PowerShell prompt. If you do not run this, the script will fail.

## Quick installation

Copy and paste into PowerShell, and go!

	Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/ideaman924/windows_setup/master/setup.ps1'))
