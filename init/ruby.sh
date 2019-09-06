#!/bin/sh

echo
printf "Installing and configuring ruby..."

sudo gem update
sudo gem cleanup

sudo gem jekyll
