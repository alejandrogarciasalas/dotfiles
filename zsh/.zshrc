source <(antibody init)
antibody bundle < ~/.dotfiles/zsh/.zsh_plugins.txt

source ~/.dotfiles/zsh/alias.sh

eval $(thefuck --alias)

# Add RVM to PATH for scripting.
export PATH="$PATH:$HOME/.rvm/bin"

# auto-activate pyenv and pyenv-virtualenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# paths for virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/code
