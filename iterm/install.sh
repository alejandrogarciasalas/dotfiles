# blog post on how importing/exporting iterm profiles work:
# http://stratus3d.com/blog/2015/02/28/sync-iterm2-profile-with-dotfiles-repository/

# Specify the preferences directory
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "/Users/alejandro/dotfiles/iterm"
# Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

# Post install manual configuration for prettier iterm
# https://codematters.blog/custom-iterm2-titlebar-background-colors-a088c6f2ec60
# https://www.felixjung.io/posts/pretty-iterm2-with-a-modern-titlebar/
