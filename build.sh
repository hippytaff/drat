#!/bin/bash
# Description
# - Builds drat environment Ubuntu minimal
# - run from $HOME

# TODO
# - Tidy up and fool proof (only if used by not me)

# Add Bodhilinux repo for E and Terminology that Jeff looks after
sudo echo "## Bodhi Linux Repository - for E and Terminology for now..." >> /etc/apt/sources.list
sudo echo "deb http://packages.bodhilinux.com/bodhi trusty main" >> /etc/apt/sources.list

# Get deps
sudo apt-get update && sudo apt-get install -y xorg ubiquity ratpoison xinit xterm xcompmgr terminology mc scrot irssi tty-clock nsnake firefox tree flashplugin-installer plymouth-label plymouth-x11 plymouth-theme-script && sudo apt-get -f install

# Clean-up
sudo apt-get autoremove -y

# Copy configs - to do: put files in relelvant /etc/pkgrc
sudo cp ~/drat/configs/.* ~/
sudo cp ~/drat/configs/other/.gitconfig ~/ # My gitconfig
mkdir .drat
sudo cp ~/drat/drat-logo.png ~/usr/share/terminology/backgrounds
# start xserver
startx
