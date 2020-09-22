#!/bin/sh

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew install git ripgrep imagemagick watchman tree bat \
delta switchaudio-osx exa

brew cask install alfred google-chrome firefox \
bartender fantastical visual-studio-code 1password dash \
vlc discord zoomus betterzip \
qlcolorcode qlmarkdown qlstephen quicklook-json webpquicklook \
suspicious-package qlvideo spotify qmoji