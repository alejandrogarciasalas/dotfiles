#!/bin/bash

# Check if Homebrew is installed
if [ ! -f "`which brew`" ]; then
  echo "Installing Homebrew"
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "Updating Homebrew"
  brew update
fi

brew tap homebrew/bundle  # Install Homebrew Bundle

# TODO: figure out a cleaner way to setup this path relative to dotfiles or root directory
brew bundle --file=brew/Brewfile # Install Brewfile
