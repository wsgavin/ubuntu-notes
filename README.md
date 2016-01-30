# Ubuntu Notes

I created this git repository to jot down notes about installing and configuring Ubuntu desktop. Purely for personal reasons.

## Updates & Installs

    sudo add-apt-repository ppa:webupd8team/atom

    wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
    sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'

    sudo apt-get update
    sudo apt-get upgrade
    sudo apt-get install git vim atom google-chrome-beta nmap
