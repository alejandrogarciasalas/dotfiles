# zinit plugin manager (faster than zplug)
if [ -f "/opt/homebrew/opt/zinit/zinit.zsh" ]; then
  source "/opt/homebrew/opt/zinit/zinit.zsh"

  # plugins
  zinit light sindresorhus/pure
  zinit light zsh-users/zsh-autosuggestions
  zinit light zsh-users/zsh-history-substring-search
  zinit light zsh-users/zsh-syntax-highlighting

  # completions (turbo mode - loads after prompt)
  zinit ice wait lucid atload"zicompinit; zicdreplay"
  zinit light zsh-users/zsh-completions
else
  echo "Warning: zinit not found. Install with: brew install zinit"
fi

# fnm (fast node manager) - replaces nvm
if command -v fnm &>/dev/null; then
  eval "$(fnm env)"
else
  echo "Warning: fnm not found. Install with: brew install fnm"
fi
