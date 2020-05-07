# picoreplayer-roonbridge
Script to install RoonBridge on recent PiCorePlayer OS

Login to PiCorePlayer using ssh, default login: tc  password: piCore

To install, run:

`wget -O - https://raw.githubusercontent.com/sam0402/picoreplayer-roonbridge/master/install-roonbridge.sh | sudo sh`

To uninstall, run:

`wget -O - https://raw.githubusercontent.com/sam0402/picoreplayer-roonbridge/master/uninstall-roonbridge.sh | sudo sh`

Reboot after install or uninstall, enjoy!

Since PiCorePlayer runs entirely from RAM, there is very little to no risk of SD card corruption. This is why I wanted to run on this platform in the first place. However, it also means that any changes made to the Roon endpoint from within a Roon GUI are lost on reboot!

That means, that whenever you change anything, such as enable the Roon Bridge for the first time, alter device settings, install an update etc. you must backup these changes to SD card. This is fortunately easily solved, just use the "Backup" button in the PiCorePlayer web GUI. This is located on the "Main Page" tab off the GUI. Be aware that you need to be in "Advanced" or "Beta" mode for this button to show up (mode can be set at the bottom of the "Main Page" tab).
