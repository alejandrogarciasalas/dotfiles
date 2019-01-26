#!/usr/bin/env bash

# Inspiration and Reference:
# https://medium.com/@henriquebastos/the-definitive-guide-to-setup-my-python-workspace-628d68552e14
# https://medium.freecodecamp.org/manage-multiple-python-versions-and-virtual-environments-venv-pyenv-pyvenv-a29fb00c296f
# https://realpython.com/python-virtual-environments-a-primer/

brew install pyenv
brew install pyenv-virtualenv
brew install pyenv-virtualenvwrapper

# All virtualenvs will be on...
mkdir ~/.virtualenvs

# VIRTUALENV and WORKON exports are defined on .zshrc
# pyenv virtualenvwrapper_lazy is called on .zshrc as well

# auto-activate pyenv and pyenv-virtualenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# install CPython # TODO: figure out how to automatically install latest python idempotently
# these flags are needed on Mojave (https://github.com/pyenv/pyenv/issues/1219)
CFLAGS="-I$(xcrun --show-sdk-path)/usr/include" pyenv install 3.6.0
CFLAGS="-I$(xcrun --show-sdk-path)/usr/include" pyenv install 2.7.13

# avoid polluting global python install by setting separate virtualenvs
pyenv virtualenv 3.6.0 jupyter3
pyenv virtualenv 3.6.0 tools3
pyenv virtualenv 2.7.13 tools2

# install pip dependencies
pyenv activate jupyter3
pip install jupyter
pyenv deactivate

pyenv activate tools3
pip install youtube-dl
pyenv deactivate

# establish PATH priority
pyenv global 3.6.0 2.7.13 jupyter3 tools3 tools2
