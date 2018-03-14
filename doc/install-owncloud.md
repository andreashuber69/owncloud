# Install ownCloud
The following steps describe how to set up **ownCloud** on a **Raspberry Pi 3 Model B**.

> **Note:** The **ownCloud** instance installed with the instructions below will be accessible through both https and
> http. https is preferred because it is the only reliable way to transmit sensitive data securely. However, security
> does have its cost, namely you have to perform a few extra steps during setup (like e.g. manually verify certificate
> fingerprints). If you don't care that much about security (e.g. because the data stored in **ownCloud** isn't
> sensitive or because you tightly control the network) you can just as well use http and avoid a few extra steps
> required for https.

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

## D. Install ownCloud Contacts and Tasks Apps
1. Direct your browser to *https://[Raspberry Pi IP address]/owncloud* (on **Raspbian** the script does this
   automatically). The very first time you do this, the browser will show you a warning like the following:
   ![Invalid CA](invalid-ca.png)
2. Enter the credentials you provided under [C](#c-install-owncloud).
3. Click the menu icon in the top left corner and click **Market**.
4. Click the **Productivity** category and the **Contacts** app.
5. Click **Install** in the bottom right corner.
6. Click the **Productivity** category and the **Tasks** app.
7. Click **Install** in the bottom right corner.
8. If you plan on hosting your calendar in **ownCloud**, you can install that app too. Note however that I've not
   tested this in any way.

## E. Add ownCloud Users
1. Direct your browser to *https://[Raspberry Pi IP address]/owncloud*.
2. If not already logged in, log into ownCloud with the credentials you provided under [C](#c-install-owncloud).
3. In the top right corner, click on the admin user name and **Users**.
4. On the **Users** page, create a separate user for each person who needs to have access (it is recommended to only
   use the **ownCloud** administrator to create other users, not for anything else).
5. In the top right corner, click on the admin user name and **Logout**.

## F. Display Certificate Fingerprint on Raspbian
When SSL is activated in **Apache**, a self-signed certificate is generated. By default, **Apache** presents this
certificate whenever it receives a https connection request. However, since the certificate is not signed by a
certification authority (CA) like e.g. **Verisign**, the client cannot verify that it did get the correct
certificate. This has to be done manually, by comparing the fingerprint of the received certificate with the one
of the certificate on the server. The following steps display the fingerprint on the **Raspberry Pi**:
1. On **Raspbian**, open a terminal window (**Raspbian Lite** boots directly to the command line).
2. `openssl x509 -in /etc/ssl/certs/ssl-cert-snakeoil.pem -noout -sha1 -fingerprint`

## G. Next Steps
- [Backup](backup.md)
- [Restore](restore.md)
- [Sync Files (Android)](sync-files-android.md)
- [Sync Files (Windows & Ubuntu)](sync-files-desktop.md)
- Import Contacts (instructions follow)
- [Sync Contacts and Tasks (Android)](sync-contacts-and-tasks-android.md)
