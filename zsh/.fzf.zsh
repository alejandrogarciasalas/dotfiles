# Setup fzf
# ---------
if [[ ! "$PATH" == */opt/homebrew/opt/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/opt/homebrew/opt/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/opt/homebrew/opt/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
# Apple Silicon M1
# source "/opt/homebrew/opt/fzf/shell/key-bindings.zsh"

# Old intel stuff
source "/usr/local/Cellar/fzf/0.29.0/shell/key-bindings.zsh"
