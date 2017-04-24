#!/bin/bash

#set -e

# Just because, clearing some variables that are shared between other scripts.
unset account_password
unset git_fullname
unset git_email

# Setting some color constants
#COLOR_GREEN="\x1b[0;32m"
COLOR_RED="\x1b[0;31m"
COLOR_RESET="\x1b[0m"

# Setting some escaped characters
#CHAR_CHECKMARK="\xE2\x9C\x93"
CHAR_XMARK="\xE2\x9C\x97"

# Checking for git...
command -v git >/dev/null 2>&1 ||
  {
    echo -e >&2 "${COLOR_RED}${CHAR_XMARK}${COLOR_RESET} git not installed.";
    echo
    echo "Run 'sudo apt install git -y' and rerun this script.";
    echo
    exit 1
  }

git clone -q https://github.com/wsgavin/ubuntuinit-desktop

. ubuntuinit-desktop/init/banner.sh
. ubuntuinit-desktop/init/check.sh
. ubuntuinit-desktop/init/input.sh
. ubuntuinit-desktop/init/repos.sh

# Initializing apt-get
sudo apt-get update
sudo apt-get dist-upgrade -y

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
sudo apt-get install google-chrome-stable -y
sudo apt-get install sublime-text-installer -y
sudo apt-get install php -y

sudo apt-get clean
sudo apt-get autoclean

# Initializing scripts...
. ubuntuinit-desktop/init/gnome.sh
. ubuntuinit-desktop/init/git.sh
. ubuntuinit-desktop/init/vim.sh
. ubuntuinit-desktop/init/bash.sh
. ubuntuinit-desktop/init/nodejs.sh
. ubuntuinit-desktop/init/atom.sh

exit 0
