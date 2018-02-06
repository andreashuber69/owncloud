# Sync Files with Windows
The following steps assume that you've [successfully setup ownCloud](../README.md).

## A. Install the ownCloud Windows Client 
1. Download and run the [ownCloud Windows Client Installer](https://download.owncloud.com/desktop/stable/ownCloud-2.4.0.8894-setup.exe).
2. Accept the defaults by clicking **Next >**, **Next >** and **Install**.
3. Click **Next >** and **Finish**.
4. In the **ownCloud Connection Wizard** enter *https://[Raspberry Pi IP address]/owncloud* for the
   **Server Address** and click **Next >**.
5. In the **Untrusted Certificate** dialog, compare the displayed SHA-1 fingerprint with the one we've displayed
   under
   [F. Display Certificate Fingerprint on Raspbian](../README.md#f-display-cerificate-fingerprint-on-raspbian).
   If the fingerprint matches, check **Trust this certificate anyway** and click **OK**.
6. Enter the **Username** and **Password** of an **ownCloud** user created under
   [E. Add ownCloud Users](../README.md#e-add-owncloud-users) and click **Next >**.
7. Choose what to sync, select a local folder and click **Connect...**.

The chosen local folder is now synchronized with th remote folder. Locally added files will automatically be
copied to **ownCloud**. Locally removed files will automatically deleted from **ownCloud**. 
