# Tips and Tricks

## Common

### Choose edition during installation

Some laptops will not allow you to choose the Windows edition to install if the machine has a Windows key embedded in the BIOS/UEFI. To get around this, use a modified Windows installation media.

Steps to modify the `.iso`:

- Unpack the `.iso` file with something like 7-Zip
- Inside the `Sources` folder, create a `ei.cfg` file with the following contents:

```
[Channel]
Retail
```

_Note: if you want to just set the edition permanently and not allow choosing the edition during installation, add the following lines at the top as well, substituting `Professional` with your desired edition ID.

```
[EditionID]
Professional
```

- Recreate the `.iso` file with something like ImgBurn.
- In ImgBurn, drag the extracted files and folders with the modified `ei.cfg` file included into the source box on the left. Then set the appropriate options:
  - Under "Options", change "File System" to "UDF".
  - Under "Advanced > Bootable Disc", check "Make Image Bootable", then set the following options:
    - Boot Image: Set it to this file `efi\microsoft\boot\efisys.bin` inside the extracted contents you extracted earlier
    - Platform ID: UEFI
    - Developer ID: `Microsoft Corporation`
    - Load Segment: Leave as default at `07C0`
    - Sectors To Load: `1`

## Windows 11

### Install on "Unsupported" devices

- Boot the installer
- On the "Install now" page, do not click on the button.
- Press Shift+F10
- Type `regedit`
- Navigate to `HKEY_LOCAL_MACHINE\SYSTEM\Setup`
- Right click on the `Setup` key and select "New > Key"
- Name the new key `LabConfig`
- Inside the new key, right click on the empty white space and select "New -> DWORD (32-bit)"

Then do the following:

#### For machines without a TPM module

- `BypassTPMCheck` -> `1`

#### For machines with less than 4 GB of RAM

- `BypassRAMCheck` -> `1`

#### For machines with no secure boot support

- `BypassSecureBootCheck` -> `1`

Once you're done, close out of `regedit` and the command prompt and proceed with the installation as usual.
