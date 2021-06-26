# allow for overrides
if [ -f ~/.zshrc_local_before ]; then
    source ~/.zshrc_local_before
fi


HISTSIZE=10000
SAVEHIST=10000

# https://getantibody.github.io/usage/
# this is for dynamic loading which is slower
source <(antibody init)
antibody bundle < ~/.dotfiles/zsh/.zsh_plugins.txt
# instead we use static loading (see docs for usage)
# run this once to update plugins list
# antibody bundle < ~/.dotfiles/zsh/.zsh_plugins.txt > ~/.dotfiles/zsh/.zsh_plugins.sh
# source ~/.dotfiles/zsh/.zsh_plugins.sh

# NOTE: oh-my-zsh defaults here for reference: https://github.com/robbyrussell/oh-my-zsh/tree/master/lib
source ~/.dotfiles/zsh/completion.zsh
source ~/.dotfiles/zsh/grep.zsh
source ~/.dotfiles/zsh/history.zsh
source ~/.dotfiles/zsh/key-bindings.zsh

# TODO:
# source ~/.dotfiles/zsh/hub.zsh_completion

# custom aliases
source ~/.dotfiles/zsh/alias.sh

eval $(thefuck --alias)

# Add RVM to PATH for scripting.
# export PATH="$PATH:$HOME/.rvm/bin"

# auto-activate pyenv and pyenv-virtualenv
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"

# paths for virtualenvwrapper
# export WORKON_HOME=$HOME/.virtualenvs
# export PROJECT_HOME=$HOME/code
# pyenv virtualenvwrapper_lazy

# this typically gets added to by the fzf install script along with the .fzf.zsh file
# I am adding it here manually to have more control
[ -f ~/.dotfiles/zsh/.fzf.zsh ] && source ~/.dotfiles/zsh/.fzf.zsh

# allow for overrides
if [ -f ~/.zshrc_local_after ]; then
    source ~/.zshrc_local_after
fi


#### FIG ENV VARIABLES ####
[ -s ~/.fig/fig.sh ] && source ~/.fig/fig.sh
#### END FIG ENV VARIABLES ####


