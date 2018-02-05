# ownCloud
The following steps describe how I've set up **ownCloud** on my **Raspberry Pi 3 Model B**. I'm currently testing
whether it can be used as a server for sensitive data (like e.g. my contacts, photos and videos), as an alternative
to storing such data with a cloud service offered by the likes of Microsoft, Google, etc.

Right now, the following is working:
- Backup **ownCloud** data
- Restore **ownCloud** data
- File sync between **ownCloud** and **Windows** PCs
- File sync between **owncloud** and **Android** phones
- Contact import into **ownCloud** via **vCard** files
- Contact sync between **ownCloud** and **Android** phones

> **Note:** The **ownCloud** instance installed with the instructions below will be accessible through both https and
> http. While all instructions use https, http should work too. https is preferred because it is the only reliable way
> to transmit sensitive data securely. However, security does have its cost, namely you have to perform a few extra
> steps during setup (like e.g. manually verify certificate fingerprints). If you don't care that much about security
> (e.g. because the data stored in **ownCloud** isn't sensitive or because you tightly control the network) you can just
> as well use http and avoid a few extra steps required for https.

## A. Install the OS
Use [NOOBS or NOOBS Lite](https://www.raspberrypi.org/downloads/noobs/) to install **Raspbian** or **Raspbian Lite**
and boot the freshly installed OS.

## B. Customize Raspbian
1. On **Raspbian**, open a terminal window (**Raspbian Lite** boots directly to the command line).
2. `sudo apt-get install git --assume-yes`
3. `git clone https://github.com/andreashuber69/owncloud`
4. `cd owncloud`
5. `./setup1` (this will reboot the **Raspberry Pi** when everything is done)

## C. Install ownCloud
1. On **Raspbian**, open a terminal window (**Raspbian Lite** boots directly to the command line).
2. `cd owncloud`
3. `./setup2` (prompts for the credentials for the **ownCloud** administrator)

## D. Install ownCloud Contacts app
1. Direct your browser to *https://[Raspberry Pi IP address]/owncloud* (on **Raspbian** the script does this
   automatically).
2. Enter the credentials you provided under [C](#c-install-owncloud).
3. Click the menu icon in the top left corner and click **Market**.
4. Click the **Productivity** category and the **Contacts** app.
5. Scroll down and click **Install** in the bottom right corner.

## E. Add ownCloud Users
1. Direct your browser to *https://[Raspberry Pi IP address]/owncloud*.
2. If not already logged in, log into ownCloud with the credentials you provided under [C](#c-install-owncloud).
3. In the top right corner, click on the admin user name and **Users**.
4. On the **Users** page, create a separate user for each person who needs to have access (it is recommended to only
   use the **ownCloud** administrator to create other users, not for anything else).
5. In the top right corner, click on the admin user name and **Logout**.

## F. Next Steps
- [Backup](doc/backup.md)
- [Restore](doc/restore.md)
- [Sync Files (Android)](doc/sync-files-android.md)
- [Sync Files (Windows)](doc/sync-files-windows.md)
- Import Contacts (instructions follow)
- [Sync Contacts (Android)](doc/sync-contacts-android.md)