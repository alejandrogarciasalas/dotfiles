#!/usr/bin/env bash

while read extension; do
  code --install-extension $extension
done < vscode-extensions.txt
