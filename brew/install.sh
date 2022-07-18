#!/usr/bin/env bash

# Check if Homebrew is installed
if [ ! -f "`which brew`" ]; then
  echo "Installing Homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "Updating Homebrew"
  brew update
fi

# you should link the binary at this point......

brew tap homebrew/bundle  # Install Homebrew Bundle

# TODO: figure out a cleaner way to setup this path relative to dotfiles or root directory
brew bundle --file=brew/Brewfile # Install Brewfile
