#!/usr/bin/env bash

# Install rvm stable https://rvm.io/rvm/install
# \curl -sSL https://get.rvm.io | bash -s stable # TODO: read what this curl-ed shell script does in detail

# # TODO: figure out best practices for loading rvm as an environment variable
# source ~/.rvm/scripts/rvm

# rvm use ruby --install --default # check for latest ruby - install it if missing - and set as default
# rvm gemset use default

# bundle install --gemfile=~/dotfiles/ruby/Gemfile # TODO: figure out if there;s a cleaner way to specify the path

# (jul 5 2023) now we use chruby
brew install rbenv ruby-build
rbenv install 3.1.3
