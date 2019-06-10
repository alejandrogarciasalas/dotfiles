
# shell improvements
if ! [ -x "$(command -v colorls)" ]; then
  alias ls='colorls'
else
  echo "colorls is not installed defaulting ls alias to ls -G"
  alias ls='ls -G' # colorize output, TODO: this mac is MACOS ONLY (https://superuser.com/questions/183876/how-do-i-get-ls-color-auto-to-work-on-mac-os-x)
  # alternatively use gls (GNU coreutils) and gls --color
fi

if [ -x "$(command -v bat)" ]; then
  alias cat='bat'
else
  echo "bat is not installed can't create alias cat='bat' alias"
fi

# case insensitive search
alias hs='history|grep'

# git
alias g='git'
