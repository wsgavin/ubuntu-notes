#!/bin/bash

unset ppa

echo
echo "Adding apt respositories..."
echo

# Adding GitHub atom repository

ppa="http://ppa.launchpad.net/webupd8team/atom/ubuntu"

if ! grep -sq "^deb .*$ppa" /etc/apt/sources.list /etc/apt/sources.list.d/*; then

  echo "Adding atom apt respository..."

  sudo add-apt-repository ppa:webupd8team/atom -y

else

  echo "atom apt respository already exists..."

fi

# Adding Google Chrome repository

ppa="http://dl.google.com/linux/chrome/deb/"

if ! grep -sq "^deb .*$ppa" /etc/apt/sources.list /etc/apt/sources.list.d/*; then

  echo "Adding google-chrome apt repository..."

  wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub \
    | sudo apt-key add -
  sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" \
    >> /etc/apt/sources.list.d/google-chrome.list'

else

  echo "google-chrome apt repository already exists..."

fi

echo "done."

unset ppa
