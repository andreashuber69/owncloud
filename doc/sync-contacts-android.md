# Sync Contacts with Android

The following steps assume that you've [successfully setup ownCloud](../README.md).

## A. Display Cerificate Fingerprint on Raspbian
When SSL is activated in **Apache**, a self-signed certificate is generated. By default, **Apache** presents this
certificate whenever it receives a https connection request. However, since the certificate is not signed by a
certification authority (CA) like e.g. **Verisign**, the client cannot verify that it did get the correct
certificate. This has to be done manually, by comparing the fingerprint of the received certificate with the one
of the certificate on the server. The following steps display the fingerprint on the **Raspberry Pi**:
1. On **Raspbian**, open a terminal window (**Raspbian Lite** boots directly to the command line).
2. `openssl x509 -in /etc/ssl/certs/ssl-cert-snakeoil.pem -noout -sha1 -fingerprint`

## B. Install DAVdroid on your Android phone
1. Install **DAVdroid** for free through [F-Droid](https://f-droid.org/packages/at.bitfire.davdroid/) or buy it on
   [Google Play](https://play.google.com/store/apps/details?id=at.bitfire.davdroid).
2. Make sure your **Android** phone is connected to the same network as the **Raspberry Pi** running **ownCloud**. If
   unsure, direct your browser to *https://[Raspberry Pi IP address]/owncloud*. You should see the **ownCloud** login
   screen. 
3. Run **DAVdroid**.
4. Tap the **+** button in the bottom right corner.
5. Tap **Login with URL and user name**.
6. Enter *https://[Raspberry Pi IP address]/owncloud/remote.php/dav/* for the **Base URL**.
7. Enter the **User name** and **Password** of an **ownCloud** user created under
   [E. Add ownCloud Users](../README.md#e-add-owncloud-users).
8. Tap **LOGIN**.
9. Compare the displayed SHA-1 fingerprint with the one we've displayed under
   [A](#a-display-cerificate-fingerprint-on-raspbian). If the fingerprint matches, check the appropriate checkbox and
   tap **Accept**.
10. Select **Groups are per-contact categories** and tap **CREATE ACCOUNT**.

## C. Add the DAVdroid address book to your contacts
1. Open the **Android Contacts** app.
2. Open the menu in the top right corner and tap **Accounts**.
3. Tap **Add account** and **DAVDroid Address book**.
4. Select the account created under [B](#b-install-davdroid-on-your-android-phone) and allow access to your contacts and
   calendar (if prompted).
5. Check **Contacts** and tap the **Sync** icon.
6. Tap the **Back** button until you are back in the **Android Contacts** app.

You should now see the **ownCloud** contacts (if any) and you can now create contacts that will be stored in
**ownCloud**.
   
