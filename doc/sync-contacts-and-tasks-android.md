# Sync Contacts and Tasks with Android

The following steps assume that you've [successfully setup ownCloud](../README.md).

## A. Install DAVdroid & OpenTasks on your Android phone
1. Install **DAVdroid** and **OpenTasks** for free through [F-Droid](https://f-droid.org/packages/at.bitfire.davdroid/)
   or acquire them on [Google Play](https://play.google.com/store/apps/details?id=at.bitfire.davdroid).
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
   [F. Display Certificate Fingerprint on Raspbian](../README.md#f-display-cerificate-fingerprint-on-raspbian).
   If the fingerprint matches, check the appropriate checkbox and tap **Accept**.
10. Select **Groups are per-contact categories** and tap **CREATE ACCOUNT**.

## B. Add the DAVdroid address book to your contacts
1. Open the **Android Contacts** app.
2. Open the menu in the top right corner and tap **Accounts**.
3. Tap **Add account** and **DAVDroid Address book**.
4. Select the account created under [A](#a-install-davdroid-on-your-android-phone) and allow access to your contacts and
   calendar (if prompted).
5. Check **Contacts** and tap the **Sync** icon.
6. Tap the **Back** button until you are back in the **Android Contacts** app.

You should now see the **ownCloud** contacts (if any). Moreover, when creating a new contact, you should now have the
option to store it in **ownCloud**. 

## C. Create a Tasks list
1. Run **DAVdroid**.
2. Tap the account created under [A](#a-install-davdroid-on-your-android-phone).
3. Tap the **CalDAV** menu button and tap **Create new calendar**.
4. Enter *Tasks* as **Display name (title) of this collection**, select the appropriate **Time zone** and select **Task
   list (only tasks)**.
5. Tap **CREATE**.
6. Check **Tasks** and tap the **Sync** icon.
7. Run **Tasks** (installed with **OpenTasks**).
8. You can now create new tasks (**+** button in the bottom right corner).
9. It is probably worth customizing the different views by checking/unchecking **Show completed tasks** to suit your
   needs.
