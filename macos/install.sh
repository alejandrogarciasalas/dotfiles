#!/usr/bin/env bash

# Close any open System Settings panes, to prevent them from overriding
# settings we're about to change (renamed from "System Preferences" in Big Sur)
osascript -e 'tell application "System Settings" to quit'

# Ask for the administrator password upfront
sudo -v

# Disable the "Are you sure you want to open this application?" dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# ********** Keyboard and Mouse **********
# Enable full keyboard access for all controls
# (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Use scroll gesture with the Ctrl (^) modifier key to zoom
defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true
defaults write com.apple.universalaccess HIDScrollZoomModifierMask -int 262144
# Follow the keyboard focus while zoomed in
defaults write com.apple.universalaccess closeViewZoomFollowsFocus -bool true

# Disable press-and-hold for keys in favor of key repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Set keyboard repeat rate
# reference for default and sliders:
# https://apple.stackexchange.com/questions/261163/default-value-for-nsglobaldomain-initialkeyrepeat
defaults write -g KeyRepeat -int 4
defaults write -g InitialKeyRepeat -int 25

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
# Safari: Privacy, don't send search queries to Apple
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true

# Safari: Enable the Develop menu and the Web Inspector
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true

# Safari: Enable "Do Not Track"
defaults write com.apple.Safari SendDoNotTrackHTTPHeader -bool true

# ********** Rectangle (window management) **********
# Same shortcuts as old Spectacle setup (ctrl+alt+cmd+arrows for halves, etc.)
defaults write com.knollsoft.Rectangle leftHalf -dict keyCode -int 123 modifierFlags -int 1835008
defaults write com.knollsoft.Rectangle rightHalf -dict keyCode -int 124 modifierFlags -int 1835008
defaults write com.knollsoft.Rectangle topHalf -dict keyCode -int 126 modifierFlags -int 1835008
defaults write com.knollsoft.Rectangle bottomHalf -dict keyCode -int 125 modifierFlags -int 1835008
defaults write com.knollsoft.Rectangle maximize -dict keyCode -int 3 modifierFlags -int 1572864
defaults write com.knollsoft.Rectangle center -dict keyCode -int 8 modifierFlags -int 1572864
defaults write com.knollsoft.Rectangle topLeft -dict keyCode -int 123 modifierFlags -int 1310720
defaults write com.knollsoft.Rectangle topRight -dict keyCode -int 124 modifierFlags -int 1310720
defaults write com.knollsoft.Rectangle bottomLeft -dict keyCode -int 123 modifierFlags -int 1441792
defaults write com.knollsoft.Rectangle bottomRight -dict keyCode -int 124 modifierFlags -int 1441792
defaults write com.knollsoft.Rectangle nextDisplay -dict keyCode -int 47 modifierFlags -int 1835008
defaults write com.knollsoft.Rectangle previousDisplay -dict keyCode -int 43 modifierFlags -int 1835008
defaults write com.knollsoft.Rectangle restore -dict keyCode -int 6 modifierFlags -int 1572864

# ********** Dock **********
# Don't show recent applications in Dock
defaults write com.apple.dock show-recents -bool false

# ********** Finally, kill affected applications **********
for app in "Activity Monitor" \
	"Dock" \
	"Finder" \
	"Safari" \
	"Rectangle"; do
	killall "${app}" &> /dev/null
done

echo "Done setting up Mac defaults. Note that some of these changes require a logout/restart to take effect."
