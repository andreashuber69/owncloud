# Sync Files with a Desktop Computer
The following steps assume that you've [successfully setup ownCloud](install-owncloud.md).

## A. Install the ownCloud Desktop Client

### Windows
1. Download and run the [ownCloud Windows Client Installer](https://download.owncloud.com/desktop/stable/ownCloud-2.4.0.8894-setup.exe).
2. Accept the defaults by clicking **Next >**, **Next >** and **Install**.
3. Click **Next >** and **Finish**.

### Ubuntu 17.10
1. Open a terminal window.
2. `echo "deb http://download.opensuse.org/repositories/isv:/ownCloud:/desktop/Ubuntu_17.10/ /" | sudo tee -a /etc/apt/sources.list.d/owncloud-client.list`
3. `wget -O ownCloud.key https://download.opensuse.org/repositories/isv:ownCloud:desktop/Ubuntu_17.10/Release.key`
4. `sudo apt-key add - < ownCloud.key`
5. `rm ownCloud.key`
6. `sudo apt-get update`
7. `sudo apt-get install owncloud-client`
8. `owncloud &`

## B. Configure the ownClout Desktop Client 
1. In the **ownCloud Connection Wizard** enter *https://[Raspberry Pi IP address]/owncloud* for the
   **Server Address** and click **Next >**.
2. In the **Untrusted Certificate** dialog, compare the displayed SHA-1 fingerprint with the one we've displayed
   under
   [F. Display Certificate Fingerprint on Raspbian](install-owncloud.md#f-display-certificate-fingerprint-on-raspbian).
   If the fingerprint matches, check **Trust this certificate anyway** and click **OK**.
3. Enter the **Username** and **Password** of an **ownCloud** user created under
   [E. Add ownCloud Users](install-owncloud.md#e-add-owncloud-users) and click **Next >**.
4. Choose what to sync, select a local folder and click **Connect...**.
5. Click **General** and check **Launch on System Startup**. This ensures that the client is started the next time the
   computer is started.  

The chosen local folder is now synchronized with the remote folder. Locally added files will automatically be
copied to **ownCloud**. Locally removed files will automatically deleted from **ownCloud**. 
