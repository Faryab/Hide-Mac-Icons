#!/bin/sh
# This shell script is PUBLIC DOMAIN. You may do whatever you want with it.

TOGGLE=$HOME/.toggle198139j0wa9djwawda

if [ ! -e $TOGGLE ]; then
    touch $TOGGLE
    defaults write com.apple.finder CreateDesktop -bool true
else
    rm $TOGGLE
    defaults write com.apple.finder CreateDesktop -bool false
fi

killall Finder
