# Sync Files with Android

The following steps assume that you've [successfully setup ownCloud](install-owncloud.md).

## A. Install FolderSync on your Android phone

Acquire **FolderSync** or **FolderSync Pro** through the **Google Play Store** app.

> Note: If you have a phone without the **Google Play Store** app (like e.g. a **Fairphone 2** running
> **Fairphone Open**), you can first install [Yalp Store](https://f-droid.org/packages/com.github.yeriomin.yalpstore/)
> through [F-Droid](https://f-droid.org) and then acquire **FolderSync** through **Yalp Store**.

## B. Add an Account

1. Make sure your **Android** phone is connected to the same network as the **Raspberry Pi** running **ownCloud**. If
   unsure, direct your browser to *https://[Raspberry Pi IP address]/owncloud*. You should see the **ownCloud** login
   screen.
2. Run **FolderSync**.
3. Tap **Accounts** and the **+** button in the bottom right corner.
4. Select the **ownCloud 9** account type.
5. Fill out the form as follows:
   - **Unique name**: This can be any unique string. It's probably easiest to use the name entered for **Login name**
     below.
   - **Server address**: *https://[Raspberry Pi IP address]/owncloud*
   - **Login name**: The user name of an **ownCloud** user created under
     [E. Add ownCloud Users](install-owncloud.md#e-add-owncloud-users)
   - **Password**: The **Password** of the **ownCloud** user
   - **Allow self-signed cert**: **On**
   - All other fields retain their default value.
6. Tap **TEST** to see whether everything is correct and then **SAVE**.
7. Tap the **Back** button to go back to the **FolderSync** main screen.

## C. Add a Folderpair

1. Tap **Folderpairs** and the **+** button in the bottom right corner.
2. Fill out the form as follows:
   - **Unique name**: This can be any unique string. It's probably easiest to describe what is being synchronized, e.g.
     *Pictures*.
   - **Account**: The account created under [B](#b-add-an-account)
   - **Sync type**: **To local folder**
   - **Remote folder**: The remote folder you want sync to your phone, e.g. *Photos*
   - **Local folder**: The local folder you want to sync to, e.g. *Pictures*
   - **Use scheduled sync**: **On**
   - **Sync interval**: **Every 12 hours**
   - **Sync deletions**: **On**
   - **Allowed WiFi SSID's**: The name of the wireless LAN through which the **Raspberry Pi** running **ownCloud** can
     be reached. It's optional to fill this out, but it's a good idea, so that your phone will not attempt to
     synchronize when it's connected to other WLANs.
   - **Show notification on sync error**: **On**
   - All other fields retain their default value.
3. Tap **SAVE**.
4. Tap the **SYNC** button.

The chosen remote folder is now being synchronized to your phone. Once that's done, any changes in the remote folder
will automatically be mirrored to your phone every 12 hours.
