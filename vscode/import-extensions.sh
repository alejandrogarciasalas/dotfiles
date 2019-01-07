#!/usr/bin/env bash

while read extension; do
  code --install-extension $extension
done < ~/.dotfiles/vscode/vscode-extensions.txt
