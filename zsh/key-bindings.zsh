# inspired by https://github.com/robbyrussell/oh-my-zsh/blob/master/lib/key-bindings.zsh
# to achieve oh my zsh up arrow history completion https://github.com/robbyrussell/oh-my-zsh/issues/1720
# bindkey '^[[A' up-line-or-search
# bindkey '^[[B' down-line-or-search

#not sure what the difference between zsh-history-substring-search and up-line-or-beginning-search are *shrug*
# https://github.com/zsh-users/zsh-history-substring-search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
