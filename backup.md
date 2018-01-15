# Backup

The following steps assume that you've [successfully setup ownCloud](README.md).

1. On **Raspbian**, open a terminal window (**Raspbian Lite** boots directly to the command line).
2. Connect a USB stick or some other external storage medium. These instructions assume that it
   has been mounted under */media/pi/Backup*, adapt accordingly.
   > NOTE: **Raspbian Lite** does not automatically mount inserted USB sticks, you have to do that
   > manually with appropriate commands.    
3. `./backup /media/pi/Backup`
   
   This creates a new folder under */media/pi/Backup* containing two files.