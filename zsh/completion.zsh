# inspired by oh-my-zsh completion https://github.com/robbyrussell/oh-my-zsh/blob/master/lib/completion.zsh

# # enable tab-completion menu
autoload -Uz compinit
compinit

zstyle ':completion:*:*:*:*:*' menu select

# case insensitive and hyphen insensitive
zstyle ':completion:*' matcher-list 'm:{a-zA-Z-_}={A-Za-z_-}' 'r:|=*' 'l:|=* r:|=*'

# Complete . and .. special directories
zstyle ':completion:*' special-dirs true

zstyle ':completion:*' list-colors ''
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'


# disable named-directories autocompletion
# a blog post that touches on name-directories: (https://vincent.bernat.ch/en/blog/2015-zsh-directory-bookmarks)
zstyle ':completion:*:cd:*' tag-order local-directories directory-stack path-directories
