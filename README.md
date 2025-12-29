# Alejandro Garcia Salas' .dotfiles

## Setup

0. Setup GitHub SSH key before cloning (see script here: `git/setup-ssh.sh`)
1. Clone this repo
2. Install Homebrew and packages: `sh brew/install.sh`
   - Optional: `brew bundle --file=brew/Brewfile.personal`
   - Optional: `$(brew --prefix)/opt/fzf/install` (only if you need to regenerate `zsh/.fzf.zsh`, but this is already included in our dotfiles)
3. Run dotbot to symlink configs: `./install` (dotbot installed via Brewfile)
4. Finally run script to set macOS defaults: `sh macos/install.sh`
5. Import iTerm config: `sh iterm/install.sh`

## Troubleshooting

**zsh compinit error:** `compaudit | xargs chmod g-w`

## Inspiration

- [iraquitan/dotfiles](https://github.com/iraquitan/iraquitan-dotfiles)
- [nikitavoloboev/dotfiles](https://github.com/nikitavoloboev/dotfiles/)
- [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles/)
- [remysharp.com/cli-improved](https://remysharp.com/2018/08/23/cli-improved)
