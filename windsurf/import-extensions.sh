#!/usr/bin/env bash

while read extension; do
  windsurf --install-extension $extension
done < ~/.dotfiles/windsurf/windsurf-extensions.txt
