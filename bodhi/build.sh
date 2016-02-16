#!/bin/bash
# Description
# - Builds drat environment bodhilinux. Leaves Moksha in-tact and restartable by starting lightdm
# - run from $HOME

# TODO
# - Tidy up and fool proof (only if used by not me, even though I'm a fool)

# Get deps
sudo apt-get update && sudo apt-get install -y xorg ratpoison xinit xterm xcompmgr terminology mc scrot irssi tty-clock nsnake firefox tree flashplugin-installer && sudo apt-get -f install

# Clean-up
sudo apt-get autoremove -y

# Copy configs
sudo cp ~/drat/share/configs/.*rc ~/
sudo cp ~/drat/share/configs/other/.gitconfig ~/ # My gitconfig
# start xserver
sudo service lightdm stop
startx
