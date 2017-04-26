# Ubuntu Init Desktop

I created this git repository to make it easier for me to create Ubuntu desktop instance; purely for personal reasons.

## Updates & Installs

Before I start, Ubuntu as of 17.04 does not come with `git` by default. After the install I clone this repository and run the setup script.

```bash
$ sudo apt install git -y
...
$ git clone https://github.com/wsgavin/ubuntuinit-desktop
$ cd ubuntuinit-desktop
$ ./setup.sh
```

The following will update Ubuntu with the lasted of the currently installed applications as well as install a few I like to have on my base system. Each application is called separately for documentation purposes (easier to read).

```bash
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
