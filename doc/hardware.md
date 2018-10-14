# Acquiring and Assembling Your Raspberry Pi 3 B

## What to Buy

It's probably easiest and cheapest to buy one of the many kits. Right now, ebay.com lists over 200 results. See below on
what a kit should minimally include. Of course, if you already have some items (like e.g. a **microSD** card and a 5V
power supply) you might end up paying less by just ordering single items.

### Required Items

- **Raspberry Pi 3 B+** main board
- Fast **microSD** card with 16GB or more: 16GB is enough to store a virtually limitless number of contacts, tasks and
  calendar entries. Enlarge according to your requirements for file storage. Right now, 128GB cards are cheapest in
  terms of cents per GB. 256GB are a bit more expensive but still bearable. For even higher space requirements, it's
  probably worth considering a USB flash drive or even a USB SSD. These are markedly cheaper in cents per GB, but also
  use more power. Note that the tutorial assumes a **microSD** card and therefore does not discuss how to integrate
  external storage.
- USB 3.0 flash drives of the same size as your **microSD** card. You will use these to make periodic backups of the
  data on the server. Theoretically two are sufficient, so that you always have one good backup even if the hardware
  fails when you're in the middle of writing a backup. However, it might be a good idea to rotate through a few, so that
  you could restore a file that you've accidentally deleted say 2 weeks ago.
- High quality 5V power supply, with a 2.5A or higher rating
- Case, preferably steel or aluminum.

### Optional Items

- Heatsinks and fans: Some kits, especially the ones aimed at building entertainment devices on the older
  **Raspberry Pi 3 B** (note the missing plus sign), include heat sinks and occasionally even fans. In my experience,
  the new **Raspberry Pi 3 B+** boards do not need such cooling devices if the housing is made out of metal, the box
  is operated in an area where air can circulate and the room temperature almost never exceeds 25 degrees Celsius. The
  highest CPU temperatures I've observed (e.g. during backup or initial sync) were still well within the green range.
  For >95% of the time, the **Raspberry Pi** will be running idle anyway. So, even if the CPU does become a little hot
  for a minute a day, that should not reduce its lifespan meaningfully. Also, the CPU will automatically throttle back
  should it ever become critically hot.

## Assembling Your Raspberry Pi Box

The purchased parts should come with instructions, but sadly guidance on how to handle electronics is often missing:  

- You should ground yourself beforehand e.g. by touching a metal water spigot.
- Try to avoid direct contact with any of the components on the main board, by only touching the edges.
