#!/usr/bin/env bash

while read extension; do
  cursor --install-extension $extension
done < ~/.dotfiles/cursor/cursor-extensions.txt
