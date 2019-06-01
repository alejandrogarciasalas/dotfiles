
HISTSIZE=10000
SAVEHIST=10000

# https://getantibody.github.io/usage/
# this is for dynamic loading which is slower
# source <(antibody init)
# antibody bundle < ~/.dotfiles/zsh/.zsh_plugins.txt
# instead we use static loading (see docs for usage)
# run this once to update plugins list
# antibody bundle < ~/.dotfiles/zsh/.zsh_plugins.txt > ~/.dotfiles/zsh/.zsh_plugins.sh
source ~/.dotfiles/zsh/.zsh_plugins.sh

# NOTE: oh-my-zsh defaults here for reference: https://github.com/robbyrussell/oh-my-zsh/tree/master/lib
source ~/.dotfiles/zsh/history.zsh
source ~/.dotfiles/zsh/completion.zsh
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
pyenv virtualenvwrapper_lazy
