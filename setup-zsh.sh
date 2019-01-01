#!/bin/bash

# Check if oh-my-zsh is installed
OMZDIR="$HOME/.oh-my-zsh"
if [ ! -d "$OMZDIR" ]; then
  echo "Installing oh-my-zsh"
  /bin/sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
else
  echo "oh-my-zsh is already installed"
fi

# Change default shell
if [ ! -n "`$SHELL -c 'echo $ZSH_VERSION'`" ]; then
  echo "Changing default shell to zsh"
  chsh -s /bin/zsh
else
  echo "zsh is already the default shell"
fi
