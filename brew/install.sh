#!/usr/bin/env bash

# Check if Homebrew is installed
if ! command -v brew &>/dev/null; then
  echo "Installing Homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "Updating Homebrew"
  brew update
fi

# you should link the binary at this point......

# Install packages from Brewfile (brew bundle is built-in, no tap needed)
# TODO: figure out a cleaner way to setup this path relative to dotfiles or root directory
brew bundle --file=brew/Brewfile # Install Brewfile
