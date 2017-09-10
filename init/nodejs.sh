#!/bin/bash

# Installing nodejs with nvm

# TODO Find a way to get the latest version of nvm installed.
#      The following command gives you the latest version
#        git describe --abbrev=0 --tags --match "v[0-9]*" origin
#
#      First check to see if it's installed.
#        If installed, run the git sequence described on the site
#      If not installed, determine latest version
#        install...

echo
echo "Installing nvm..."

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.4/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

echo done.
echo
echo "Installing nodejs..."

nvm install node 2>&1
nvm alias default node

npm update --global

npm install --global \
  yo \
  grunt-cli \
  bower \

echo
echo "done."
