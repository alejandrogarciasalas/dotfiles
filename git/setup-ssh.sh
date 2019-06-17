# This only gets run manually and is mostly for reference at this point
# Reference: https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/
ssh-keygen -t rsa -b 4096 -C "garciasalasalejandro@gmail.com" -f $HOME/.ssh/github_rsa
eval "$(ssh-agent -s)"
ssh-add -K ~/.ssh/github_rsa

echo "Did you add the ssh key to your GitHub account?\n(https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/)"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) break;;
        No ) exit;;
    esac
done
