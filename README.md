# Windows 10 setup scripts

These are the scripts I use to set up a new Windows machine.

This branch has been modified to install the minimal amount of packages needed by regular users.

## Quick installation

Copy and paste into administrative PowerShell, and go!

	Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/ericswpark/windows_setup/regular/setup.ps1'))

## Customization

If you want to customize the list of applications that Chocolatey installs, you must set your execution policy in PowerShell to AllSigned or less restrictive. Not doing so will prevent your downloaded script from running.

All Chocolatey scripts must run as administrator.
