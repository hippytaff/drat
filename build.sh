#!/bin/bash
# Description
# - Builds drat environment from bodhilinux 3.1.1
# - run from $HOME
# Todo
# - build script to build from ubuntu minimal (Whichever stable is about by the time I get around to it)

# Get deps
sudo apt-get update && sudo apt-get install -y ratpoison xinit xterm xcompmgr terminology mc scrot irssi tty-clock nsnake firefox

# Copy configs
cp ~/drat/configs/.* ~/

# Shutdown lightdm and startx

sudo service lightdm stop
startx
