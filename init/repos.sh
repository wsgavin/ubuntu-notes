#!/bin/bash

# Adding GitHub atom repository
sudo add-apt-repository ppa:webupd8team/atom -y

# Adding Google Chrome repository
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub \
  | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" \
  >> /etc/apt/sources.list.d/google-chrome.list'
