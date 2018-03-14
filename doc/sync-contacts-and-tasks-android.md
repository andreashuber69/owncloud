# Sync Contacts, Calendars and Tasks with Android

The following steps assume that you've [successfully setup ownCloud](install-owncloud.md).

## A. Install DAVdroid & OpenTasks on your Android Phone
Install **DAVdroid** and **OpenTasks** for free through [F-Droid](https://f-droid.org) or acquire them through the
**Google Play Store** app.

## B. Sync ownCloud Contacts, Calendars and Tasks to your Android Phone
1. Make sure your **Android** phone is connected to the same network as the **Raspberry Pi** running **ownCloud**. If
   unsure, direct your browser to *https://[Raspberry Pi IP address]/owncloud*. You should see the **ownCloud** login
   screen.
2. Run **DAVdroid**.
3. Tap the **+** button in the bottom right corner.
4. Tap **Login with URL and user name**.
5. Enter *https://[Raspberry Pi IP address]/owncloud/remote.php/dav/* for the **Base URL**.
6. Enter the **User name** and **Password** of an **ownCloud** user created under
   [E. Add ownCloud Users](install-owncloud.md#e-add-owncloud-users).
7. Tap **LOGIN**.
8. Compare the displayed SHA-1 fingerprint with the one we've displayed under
   [F. Display Certificate Fingerprint on Raspbian](install-owncloud.md#f-display-certificate-fingerprint-on-raspbian).
   If the fingerprint matches, check **I have manually verified the whole fingerprint** and tap **ACCEPT**.
9. Select **Groups are per-contact categories** and tap **CREATE ACCOUNT**.
10. Tap the account you just created and allow access to your contacts, calendars and task lists (if prompted).
11. Check all the contacts, calendars and task lists you want to work with on your phone, tap the **Sync** icon and wait
    for the progress bars to stop moving.

## C. Use ownCloud Contacts on your Phone
Run the built-in **Contacts** app. You should now see all the **ownCloud** contacts synchronized in the previous step
(if any). Moreover, when creating a new contact, you should now have the option to store it in **ownCloud**. 

## D. Create and Use a Tasks List
1. Run **DAVdroid**.
2. Tap the account created under [B](#b-sync-owncloud-contacts-calendars-and-tasks-to-your-android-phone).
3. Tap the **CalDAV** menu button and tap **Create new calendar**.
4. Enter *Tasks* as **Display name (title) of this collection**, select the appropriate **Time zone** and select **Task
   list (only tasks)**.
5. Tap **CREATE**.
6. Check **Tasks** and tap the **Sync** icon.
7. Run **Tasks** (installed with **OpenTasks**).
8. You can now create new tasks (**+** button in the bottom right corner).
9. It is probably worth customizing the different views by checking/unchecking **Show completed tasks** to suit your
   needs.
