#!/usr/bin/env bash

# Install latest LTS node via fnm
if command -v fnm &>/dev/null; then
  fnm install --lts
else
  echo "Warning: fnm not found. Skipping node installation."
  echo "Run 'sh brew/install.sh' to install fnm first."
fi
