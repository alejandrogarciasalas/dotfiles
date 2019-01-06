# enable tab-completion menu
autoload -Uz compinit
compinit
# with case insensitive matching
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' menu select
