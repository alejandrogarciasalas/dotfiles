#!/bin/zsh

# Change default shell to zsh (prefer homebrew zsh on Apple Silicon)
if [ ! -n "`$SHELL -c 'echo $ZSH_VERSION'`" ]; then
  echo "Changing default shell to zsh"
  if [ -x /opt/homebrew/bin/zsh ]; then
    chsh -s /opt/homebrew/bin/zsh
  else
    chsh -s /bin/zsh
  fi
else
  echo "zsh is already the default shell"
fi
