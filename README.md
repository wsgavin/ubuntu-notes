# Ubuntu Init - Desktop

I created this git repository to make it easier for me to create Ubuntu desktop instance; purely for personal reasons.

**NOTE: Your results may vary; user beware.**

**NOTE: Current scripts are being developed on Ubuntu Desktop 19.04**

## Updates & Installs

The typical install is done on a clean Ubuntu instance.  To begin `git` must be installed. After the `git` install clone the `ubuntuinit-desktop` repository and run the setup script. The following will update Ubuntu as well as install additional software. Each application is installed separately for documentation purposes (easier to read).

```bash
$ sudo apt install git curl -y
...
$ git clone https://github.com/wsgavin/ubuntuinit-desktop
$ cd ubuntuinit-desktop
$ ./setup.sh
```

## VirtualBox

The following are a few steps I have taken while utilizing VirtualBox. These are very specific to my scenario but may be of help.

1. Create a new instance of Ubuntu and provide what can be provided (e.g. memory, cpu, etc.)
  - I've run into issues where Ubuntu does not work well on my laptop. I believe this is cause by Unity and 3D. Ubuntu Gnome seems to be much better.
2. Make sure you have mounted the ISO image.
3. Install Ubuntu.
4. Reboot.
5. Install Guest Additions and reboot.
6. Run the setup.sh script and reboot.
7. Go to additional drivers and choose appropriately and reboot.

### VirtualBox Guest Additions

1. Machine -> Settings -> General -> Advanced -> enable Shared Clipboard and/or Drag'n'Drop.
2. Make sure View -> Auto-resize Guest Display is checked.
