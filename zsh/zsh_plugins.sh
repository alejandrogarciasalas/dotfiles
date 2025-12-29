# zinit plugin manager (faster than zplug)
source "/opt/homebrew/opt/zinit/zinit.zsh"

# plugins
zinit light sindresorhus/pure
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-history-substring-search
zinit light zsh-users/zsh-syntax-highlighting

# completions (turbo mode - loads after prompt)
zinit ice wait lucid atload"zicompinit; zicdreplay"
zinit light zsh-users/zsh-completions

# fnm (fast node manager) - replaces nvm
eval "$(fnm env)"
