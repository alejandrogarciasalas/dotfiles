#!/usr/bin/env bash

# TODO: figure out best practices for loading NVM as an environment variable.
# zsh already loads nvm as an environment variable (see zsh plugin on ~/.dotfiles/zsh/.zsh_plugin.txt)
# but we still need to reload it for this script to work.
# The following lines are copy pasted from nvm README (https://github.com/creationix/nvm)
export NVM_DIR="$HOME/.nvm" #
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# download, compile, and install the latest release of node
nvm install node
