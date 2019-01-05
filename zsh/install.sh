#!/bin/zsh

# Change default shell
if [ ! -n "`$SHELL -c 'echo $ZSH_VERSION'`" ]; then
  echo "Changing default shell to zsh"
  chsh -s /bin/zsh
else
  echo "zsh is already the default shell"
fi
