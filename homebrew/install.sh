#!/bin/sh

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."

  # Install the correct homebrew for each OS type
  if [ "$(uname)" == "Darwin" ]; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/linuxbrew/go/install)"
  fi
fi

brew install git ripgrep imagemagick watchman tree bat \
delta switchaudio-osx exa fzf tldr jq

brew cask install alfred google-chrome firefox \
bartender fantastical visual-studio-code 1password dash \
vlc discord zoomus betterzip \
qlcolorcode qlmarkdown qlstephen quicklook-json webpquicklook \
suspicious-package qlvideo spotify qmoji
