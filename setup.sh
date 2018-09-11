#!/bin/bash

#set -e

# Just because, clearing some variables that are shared between other scripts.
unset account_password
unset git_fullname
unset git_email

. init/banner.sh
. init/check.sh
. init/input.sh
. init/repos.sh

# Initializing apt
sudo apt update
sudo apt dist-upgrade -y

# Installing various applications...
#
# While these installs could by done in one line, I just felt it was easier
# to read and update.
#
sudo apt install git -y
sudo apt install vim -y
sudo apt install nmap -y
sudo apt install python-pip -y
sudo apt install python-gtkspellcheck -y
sudo apt install python-virtualenv -y
# sudo apt install moreutils -y
sudo apt install curl -y
sudo apt install ctags -y
sudo apt install atom -y
sudo apt install google-chrome-stable -y
sudo apt install php -y
sudo apt install shellcheck -y
sudo apt install xclip -y
sudo apt install sqlite3 -y
sudo apt install hugo -y

# May already be installed
sudo apt install build-essential -y
sudo apt install linux-headers-"$(uname -r)" -y

sudo apt clean
sudo apt autoclean

# Initializing scripts...
. init/gnome.sh
. init/git.sh
. init/vim.sh
. init/bash.sh
. init/nodejs.sh
. init/atom.sh
. init/aws.sh

exit 0
