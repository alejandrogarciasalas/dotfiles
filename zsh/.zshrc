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

# source ~/.dotfiles/zsh/python.sh # haven't used this in a while


# this typically gets added to by the fzf install script along with the .fzf.zsh file
# I am adding it here manually to have more control (see README)
# 2025 I removed this because integrated terminal in vscode didn't like it,
# 2025 I added it back because i miss it
# message: was "azhw:zle-line-finish:zle:11: unknown option: f"  I can't remember exactly why I added it to begin with
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
