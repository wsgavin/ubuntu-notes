#!/bin/bash

#set -e

unset account_password
unset git_fullname
unset git_email

. init/banner.sh
. init/input.sh

# Adding GitHub atom repository
sudo add-apt-repository ppa:webupd8team/atom -y

# Adding Sublime Text 3 repository
sudo add-apt-repository ppa:webupd8team/sublime-text-3 -y

# Adding Google Chrome repository
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub \
  | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" \
  >> /etc/apt/sources.list.d/google-chrome.list'

# Initializing apt-get
sudo apt-get update
sudo apt-get upgrade -y

# Installing various applications...
sudo apt-get install git -y
sudo apt-get install vim -y
sudo apt-get install nmap -y
sudo apt-get install python-pip -y
sudo apt-get install python-gtkspellcheck -y
sudo apt-get install python-virtualenv -y
sudo apt-get install moreutils -y
sudo apt-get install curl -y
sudo apt-get install ctags -y
sudo apt-get install atom -y
sudo apt-get install google-chrome-beta -y
sudo apt-get install sublime-text-installer -y

# Initializing scripts...
. init/git.sh
. init/vim.sh
. init/bash.sh
. init/nodejs.sh

exit 0
