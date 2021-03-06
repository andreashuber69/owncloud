# Take Full Control of All Your Data

## Introduction
These days, many people store almost all of their data with a cloud service offered by the likes of Apple, Microsoft and
Google. The data is often very sensitive in nature (e.g. photos, contacts, calendar) and is usually not encrypted before
it's transmitted to the cloud.

This project aims to provide a detailed tutorial on how to host your data on your own energy-efficient "cloud"
server without compromising much in terms of functionality and convenience. More precisely, once set up, your devices
will behave exactly as they would connected to a commercial cloud service, except that your data is now stored on a
server that is under your exclusive control.

Most of the tedious work of setting up the server has been automated with scripts, such that it can be installed from
scratch with less than ten minutes of your attention.

## Audience & Prerequisites
While I try very hard to clearly describe every tiny step on the way to your data sovereignty, I do realize that it's
impossible to suit everyone. So, to successfully follow this tutorial, you should at least have the following:
- Experience using a current desktop or laptop computer (running **Linux**, **Mac OS** or **Windows**) with a keyboard
  and mouse
- **Experience on the command line** (i.e. in a terminal window): The instructions will clearly detail exactly what
  commands need to be issued, so that you only need to copy-paste them into the terminal window.
- Experience using a current mobile phone running **Android** (optional if you don't plan to sync data with a mobile)
- A home network: If you have the box of an internet provider running in your home, chances are very high you also have
  a home network, at least a wireless one (which is all we need).
- Knowledge about how to connect a new device to your home network (wirelessly or with a cable)
- A keyboard and mouse with USB A connectors
- A TV or computer monitor with a HDMI A input (most recent devices have such an input)
- A HDMI cable with two HDMI A connectors
- At least USD 80 (or equivalent) to buy the hardware for your new home server. The actual cost depends on your location
  and your requirements for storage space.
- A day of spare time to set up and test everything
- A minute or two per week to make a backup copy of your data

## Scope
This tutorial covers the following:
- What to buy for your **Raspberry Pi** box (main board, power supply, storage card, housing)
- How to install **ownCloud** on your **Raspberry Pi**
- How to backup **ownCloud** data
- How to restore **ownCloud** data
- How to set up automatic file sync between **ownCloud** and **Windows** and/or **Ubuntu** PCs
- How to set up automatic file sync between **ownCloud** and **Android** phones
- How to import contacts into **ownCloud** via **vCard** files
- How to set up automated calendar and contacts sync between **ownCloud** and **Android** phones
- How to set up automated tasks sync between **ownCloud** and **Android** phones

**ownCloud** is a very feature-rich platform. So, if you have additional requirements, it's likely that they can be
implemented with **ownCloud**.

> Note: My **ownCloud** server (along with all other devices in my home network) is not reachable from the internet
> (which is the default behavior for pretty much all home internet routers and modems). When I'm traveling, this is
> rarely somewhat inconvenient, e.g. because data on my laptop is not automatically synchronized with the data on my
> mobile. However, for my purposes this is a price worth paying because it avoids the security headaches that come
> with making my home network accessible from the internet.
>
> It's possible to make an **ownCloud** server in your home network reachable from the internet (so that it then acts
> much like any commercial cloud service), but doing so is beyond the scope of this tutorial.

## Feedback
Please use the [GitHub Issue Tracker](https://github.com/andreashuber69/owncloud/issues) to ask your questions, report
problems or suggest improvements. Thank you!

## Ready, Set, Go!
With all of the above out of the way, let's get started!

### [A. Hardware](doc/hardware.md)

### [B. Software](doc/install-owncloud.md)
