#!/bin/bash

# Installing nodejs with nvm

echo
echo "Installing nvm and nodejs..."

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.30.2/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

nvm install node 2>&1
nvm alias default node

npm update --global

echo
echo "done."
