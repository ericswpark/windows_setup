# Windows setup scripts

Work in progress. Will eat your computer.

Warning: some of the setup scripts are only suitable for my workflow, and may need to be adapted to suit your own needs. (The Fork button may be useful!)

## Caveats

### winget

winget must be manually installed for now by [going to the Microsoft Store and installing the "App Installer" app](https://www.microsoft.com/p/app-installer/9nblggh4nns1#activetab=pivot:overviewtab).

I haven't found a good way of automatically installing winget via a PowerShell script (yet).

### Execution policy

_Note: this does not apply if you are using the Right click > Run in Powershell context menu to run the scripts._

Windows's default execution policy is to only run scripts and programs blessed by a certain corporation in Redmond, Washington. If you want to run the scripts here, you need to run the following inside the current PowerShell window:

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force
```

Note that this applies only to the current PowerShell window. If you run PowerShell again, you will have to set the execution policy again.

Note that I provide a runner batch script for running the main PowerShell script. This runner sets the appropriate execution policy, so you don't have to.

### Drivers

This setup script does not install drivers. You must manually install drivers suited for your computer after running this setup script.

I've thought about automatically detecting devices and initiating driver installations, but a) we have Windows Update, which most computers support nowadays (and if they don't, stop buying from that crappy OEM), and b) it would be very error-prone, and c) graphics drivers are a fickle beast and if something goes wrong then you'd have to run a program to wipe the driver away from safe mode and try again, which is annoying.

For these reasons, driver installation is also a manual process.


# Structure

This repository has a bunch of routines in the `routines/` folder. Each of those routine scripts are designed to run standalone.

Because of this, routines are rather small, and you will be able to understand what they do by reading the first few lines of comments inside the routine files.

Some routines have special requirements that must be satisfied in order for them to properly function. Again, see the comments on the top of the specific routine file for details.
