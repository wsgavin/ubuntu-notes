#!/bin/bash

set -e



sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install git -y
sudo apt-get install vim -y
sudo apt-get install nmap -y
sudo apt-get install python-pip -y
sudo apt-get install python-gtkspellcheck -y
sudo apt-get install python-virtualenv -y
sudo apt-get install moreutils -y
sudo apt-get install curl -y



# Adding repositories

sudo add-apt-repository ppa:webupd8team/atom

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'

sudo apt-get update
sudo apt-get install atom -y
sudo apt-get install google-chrome-beta -y
#sudo apt-get install unity-tweak-tool -y
#sudo apt-get install compizconfig-settings-manager -y


sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install sublime-text-installer
