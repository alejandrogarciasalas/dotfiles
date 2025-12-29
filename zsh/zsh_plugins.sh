# migrated from antibody https://github.com/zplug/zplug/wiki/Migration
export ZPLUG_HOME="/opt/homebrew/opt/zplug"
source "$ZPLUG_HOME/init.zsh"

while read plugin; do
  zplug $plugin
done < ~/.dotfiles/zsh/.zsh_plugins.txt

# Install plugins if there are plugins that have not been installed
if ! zplug check; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load
