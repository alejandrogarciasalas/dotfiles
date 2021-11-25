# Alejandro Garcia Salas' .dotfiles

0. setup github key (see script on git folder)
1. clone this repo
2. run brew install script `sh brew/install.sh`.
   1.  Optional: install Brewfile Personal. `brew bundle --file=brew/Brewfile `
   2.  To install useful key bindings and fuzzy completion: `$(brew --prefix)/opt/fzf/install` https://github.com/junegunn/fzf#using-homebrew . There's an uninstall script on the same directory
3. run dotbot install script i.e.  `./install` from dotfiles directory to symlink files and run a few other install scripts
4. finally run macos install script
5. import iterm config `sh iterm/install.sh`

TODO:
* setup PGP key for git
* less with syntax highlighting?
* use kdiff for merging tools git
* look into
WARNING: The -K and -A flags are deprecated and have been replaced
         by the --apple-use-keychain and --apple-load-keychain
         flags, respectively.  To suppress this warning, set the
         environment variable APPLE_SSH_ADD_BEHAVIOR as described in
         the ssh-add(1) manual page.

drew some inspiration from:
* https://github.com/iraquitan/iraquitan-dotfiles
* https://github.com/nikitavoloboev/dotfiles/
* https://github.com/mathiasbynens/dotfiles/
* https://remysharp.com/2018/08/23/cli-improved

## Troubleshooting
If: zsh compinit: error run for a quick fix
`compaudit | xargs chmod g-w`
