# Restore
It is assumed that you've [successfully setup ownCloud](install-owncloud.md) and that you've
[created a backup](backup.md).

You can either fully restore a server to the state it had when the backup was made, or, you can also restore single
files that were accidentally deleted.

## Full Restore
If you'd like to restore a backup after setting up **ownCloud** from scratch, you need to follow the **ownCloud** setup
instructions up to and including step
[D. Install ownCloud Contacts and Tasks Apps](install-owncloud.md#d-install-owncloud-contacts-and-tasks-apps).

1. On **Raspbian**, open a terminal window (**Raspbian Lite** boots directly to the command line).
2. `cd owncloud`
3. Insert the USB flash drive or other external storage medium that you've used when you made the backup. These
   instructions assume that it has been mounted under */media/pi/Backup*, adapt accordingly.
4. `./restore /media/pi/Backup`

## Partial Restore
A partial restore of one or more files is best not performed on the **Raspberry Pi** itself, but **on a desktop or
laptop computer** that has been set up to sync files with your server.

1. Insert the USB flash drive or other external storage medium that you've used when you made the backup.
2. Open the file **owncloud-files.tar.gz**, extract the file(s) that you want to restore and move them to their former
   location.

> Note: Out of the box, **Windows** is still unable to open *.tar.gz files. You need to use third-party software to do
> that.