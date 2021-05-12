#!/bin/sh

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."

  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew install git ripgrep imagemagick watchman tree bat \
delta exa fzf tldr jq

brew install --cask alfred firefox iterm2 \
bartender fantastical visual-studio-code 1password dash \
vlc discord betterzip \
qlcolorcode qlmarkdown qlstephen quicklook-json webpquicklook \
suspicious-package qlvideo spotify qmoji docker
