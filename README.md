# Ubuntu Notes

I created this git repository to jot down notes about installing and configuring Ubuntu desktop. Purely for personal reasons.

## Updates & Installs

The following will update Ubuntu with the lasted of the currently installed applications as well as install a few I like to have on my base system. Each application is called separately for documentation purposes (easier to read).

    sudo apt-get update
    sudo apt-get upgrade -y
    sudo apt-get install git -y
    sudo apt-get install vim -y
    sudo apt-get install nmap -y
    sudo apt-get install python-pip -y
    sudo apt-get install python-gtkspellcheck -y
    sudo apt-get install python-virtualenv -y
    sudo apt-get install moreutils -y

    # Adding repositories

    sudo add-apt-repository ppa:webupd8team/atom

    wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
    sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'

    sudo apt-get install atom -y
    sudo apt-get install google-chrome-beta -y
    #sudo apt-get install unity-tweak-tool -y
    #sudo apt-get install compizconfig-settings-manager -y

**TODO:** Figure how to get Solarized for vim, Atom and Terminal.
