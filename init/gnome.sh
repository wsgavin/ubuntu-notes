#!/bin/bash

echo "Setting gnome-terminal preferences..."

# TODO Need to dermine how to update the profile and delete the default one.
#      This currently works because the same image is used for testing. This
#      may not work for others.

# Getting the terminal profile id.
#profile="$(dconf list /org/gnome/terminal/legacy/profiles:/)"

#dconf write /org/gnome/terminal/legacy/profiles:/${profile}use-theme-colors false
#dconf write /org/gnome/terminal/legacy/profiles:/${profile}background-color "'rgb(0,0,0)'"
#dconf write /org/gnome/terminal/legacy/profiles:/${profile}foreground-color "'rgb(255,255,255)'"

dconf load /org/gnome/terminal/legacy/profiles:/ < ../src/gnome-terminal/profile.dconf

echo "done."
