# Windows 10 setup scripts

These are the scripts I use to set up a new Windows machine.

## Quick installation

Copy and paste into administrative PowerShell, and go!

	Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/ideaman924/windows_setup/master/setup.ps1'))

## Customization

If you want to customize the list of applications that Chocolatey installs, you must set your execution policy in PowerShell to AllSigned or less restrictive. Not doing so will prevent your downloaded script from running.

All Chocolatey scripts must run as administrator.
