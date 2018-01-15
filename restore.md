# Restore
The following steps assume that you've [successfully setup ownCloud](README.md) and that you've
[created a backup](backup.md).

1. On **Raspbian**, open a terminal window (**Raspbian Lite** boots directly to the command line).
2. `cd owncloud`
3. Insert the USB stick or other external storage medium that you've used when you made the backup. These instructions
   assume that it has been mounted under */media/pi/Backup*, adapt accordingly. Moreover, in step 4 replace
   *XXXXXXXX_YYYYYY* with the name of the folder of the backup you'd like to restore.
4. `./restore /media/pi/Backup/XXXXXXXX_YYYYYY`