#!/usr/bin/env bash

# ********** Keyboard and Mouse **********
# TODO: setup keyrepeat rate
# TODO: setup trackpad and apple mouse gestures

# ********** Finder **********
# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finder: Avoid creating .DS_Store files on network or USB volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Finder: Show the ~/Library folder
chflags nohidden ~/Library

# Finder: Show the /Volumes folder
sudo chflags nohidden /Volumes

# ********** Safari **********
# Safari: Privacy, don’t send search queries to Apple
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true

# Safari: Enable the Develop menu and the Web Inspector
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true

# Safari: Enable “Do Not Track”
defaults write com.apple.Safari SendDoNotTrackHTTPHeader -bool true

# ********** Spectacles **********
## Spectacles: preferred keyboard shortcuts
cp -r ~/.dotfiles/macos/spectacle.json ~/Library/Application\ Support/Spectacle/Shortcuts.json

### ********** Finally, kill affected applications **********
for app in "Activity Monitor" \
	"Dock" \
	"Finder" \
	"Safari" \
	"Spectacle"; do
	killall "${app}" &> /dev/null


done
echo "Done setting up Mac defaults. Note that some of these changes require a logout/restart to take effect."
