# allow for overrides
if [ -f ~/.zshrc_local_before ]; then
    source ~/.zshrc_local_before
fi


HISTSIZE=10000
SAVEHIST=10000

source ~/.dotfiles/zsh/zsh_plugins.sh

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

eval "$(zoxide init zsh)"


# Add RVM to PATH for scripting.
# export PATH="$PATH:$HOME/.rvm/bin"
source ~/.dotfiles/zsh/ruby.sh

# source ~/.dotfiles/zsh/python.sh

source ~/.dotfiles/zsh/chromium.sh

# this typically gets added to by the fzf install script along with the .fzf.zsh file
# I am adding it here manually to have more control (see README)
[ -f ~/.dotfiles/zsh/.fzf.zsh ] && source ~/.dotfiles/zsh/.fzf.zsh
# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# allow for overrides
if [ -f ~/.zshrc_local_after ]; then
    source ~/.zshrc_local_after
fi


# TODO: figure out what to do about this bun stuff
# bun completions
# [ -s "/Users/alejandro/.bun/_bun" ] && source "/Users/alejandro/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
