# Backup
The following steps assume that you've [successfully setup ownCloud](install-owncloud.md).

> Note: Most USB flash drives are pre-formatted with some variant of the FAT files system (**FAT32** or **exFAT**). In
> my experience, **exFAT** doesn't seem to work well on **Raspbian**. **NTFS** has so far been working flawlessly and is
> supported out of the box on **Windows** and **Ubuntu**. I would therefore recommend to first format all USB sticks
> with **NTFS** before using them for backups. This is most easily done on a desktop or laptop running **Windows** or
> **Ubuntu**.

1. On **Raspbian**, open a terminal window (**Raspbian Lite** boots directly to the command line).
2. `cd owncloud`
3. Plug in a USB flash drive or some other external storage medium. These instructions assume that it has been mounted
   under */media/pi/Backup*, adapt accordingly.
   > NOTE: **Raspbian Lite** does not automatically mount inserted USB sticks, you have to do that manually with
   > appropriate commands.    
4. `./backup /media/pi/Backup`

   This verifies that */media/pi/Backup* is empty and then writes two files to it.
