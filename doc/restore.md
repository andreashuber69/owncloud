# Restore
The following steps assume that you've [successfully setup ownCloud](../README.md) and that you've
[created a backup](backup.md). If you'd like to restore a backup after setting up **ownCloud** from scratch, you need
to follow the **ownCloud** setup instructions up to and including step
[D. Install ownCloud Contacts and Tasks Apps](../README.md#d-install-owncloud-contacts-and-tasks-apps).

1. On **Raspbian**, open a terminal window (**Raspbian Lite** boots directly to the command line).
2. `cd owncloud`
3. Insert the USB stick or other external storage medium that you've used when you made the backup. These instructions
   assume that it has been mounted under */media/pi/Backup*, adapt accordingly.
4. `./restore /media/pi/Backup`
