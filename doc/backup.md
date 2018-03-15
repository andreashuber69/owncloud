# Backup
The following steps assume that you've [successfully setup ownCloud](install-owncloud.md).

1. On **Raspbian**, open a terminal window (**Raspbian Lite** boots directly to the command line).
2. `cd owncloud`
3. Plug in a USB flash drive or some other external storage medium. These instructions assume that it has been mounted
   under */media/pi/Backup*, adapt accordingly.
   > NOTE: **Raspbian Lite** does not automatically mount inserted USB sticks, you have to do that manually with
   > appropriate commands.    
4. `./backup /media/pi/Backup`

   This verifies that */media/pi/Backup* is empty and then writes two files to it.
