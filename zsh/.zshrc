# allow for overrides
if [ -f ~/.zshrc_local_before ]; then
    source ~/.zshrc_local_before
fi

source ~/.dotfiles/zsh/zsh_plugins.sh

# NOTE: oh-my-zsh defaults here for reference: https://github.com/robbyrussell/oh-my-zsh/tree/master/lib
source ~/.dotfiles/zsh/completion.zsh
source ~/.dotfiles/zsh/history.zsh
source ~/.dotfiles/zsh/key-bindings.zsh


# custom aliases
source ~/.dotfiles/zsh/alias.sh

# source ~/.dotfiles/zsh/python.sh # TODO: audit next time we do python dev

# fzf - added manually instead of letting fzf install script modify this file
[ -f ~/.dotfiles/zsh/.fzf.zsh ] && source ~/.dotfiles/zsh/.fzf.zsh

# allow for overrides
if [ -f ~/.zshrc_local_after ]; then
    source ~/.zshrc_local_after
fi


# added in an attempt to fix this https://github.com/getcursor/cursor/issues/1368
[[ "$TERM_PROGRAM" == "vscode" ]] && . "$(code --locate-shell-integration-path zsh)"

# pnpm
export PNPM_HOME="/Users/alejandro/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh" # 2024, what added this? lol, some work thing?

# bun
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
