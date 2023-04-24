# Windows setup scripts

Work in progress. Will eat your computer.

## Caveats

### winget

winget must be manually installed for now by [going to the Microsoft Store and installing the "App Installer" app](https://www.microsoft.com/p/app-installer/9nblggh4nns1#activetab=pivot:overviewtab).

I haven't found a good way of automatically installing winget via a PowerShell script (yet).

### Execution policy

Windows's default execution policy is to only run scripts and programs blessed by a certain corporation in Redmond, Washington. If you want to run the scripts here, you need to run the following inside the current PowerShell window:

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force
```

Note that this applies only to the current PowerShell window. If you run PowerShell again, you will have to set the execution policy again.

# Structure

This repository has a bunch of routines in the `routines/` folder. Each of those routine scripts are designed to run standalone.

Because of this, routines are rather small, and you will be able to understand what they do by reading the first few lines of comments inside the routine files.

Some routines have special requirements that must be satisfied in order for them to properly function. Again, see the comments on the top of the specific routine file for details.