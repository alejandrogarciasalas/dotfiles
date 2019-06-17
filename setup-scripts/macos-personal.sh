# run after running macos-setup.sh
read -p "Did you run the generic macos setup script? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
  brew bundle --file=brew/Brewfile # Install Brewfile
fi
