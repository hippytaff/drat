#!/bin/bash
# Description
# - Builds drat environment from OpenBSD (latest stable)
# - run from $HOME

# TODO
# - Tidy up and fool proof (only if used by not me, even though I'm a fool)
# - TBH not really sure

# Get deps

# Clean-up

# Copy configs
sudo cp ~/drat/share/configs/.ratpoisonrc ~/
sudo cp ~/drat/configs/other/.gitconfig ~/ # My gitconfig

# start xserver
startx
