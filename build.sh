#!/bin/bash
# Description
# - Builds drat environment from bodhilinux 3.1.1

# Get deps
sudo apt-get install -y xinit xterm xcompmgr terminology mc scrot irssi tty-clock nsnake

# Copy configs
cp ~/drat/configs/.xinit .ratpoison ~/

# Shutdown lightdm and startx
sudo service lightdm stop
sleep 1
sudo startx
