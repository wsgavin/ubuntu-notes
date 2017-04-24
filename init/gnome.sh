#!/bin/bash

echo "Setting gnome-terminal preferences..."


# Getting the terminal profile id.
profile="$(dconf list /org/gnome/terminal/legacy/profiles:/)"

dconf write /org/gnome/terminal/legacy/profiles:/${profile}/use-theme-colors "false"
dconf write /org/gnome/terminal/legacy/profiles:/${profile}/background-color "'rgb(0,0,0)'"
dconf write /org/gnome/terminal/legacy/profiles:/${profile}/foreground-color "'rgb(255,255,255)'"

echo "done."
