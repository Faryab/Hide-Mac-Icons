#!/bin/sh
# This shell script is PUBLIC DOMAIN. You may do whatever you want with it.

TOGGLE=$HOME/.toggle

if [ ! -e $TOGGLE ]; then
    touch $TOGGLE
    defaults write com.apple.finder CreateDesktop -bool true
    killall Finder
else
    rm $TOGGLE
    defaults write com.apple.finder CreateDesktop -bool false
    killall Finder
fi
