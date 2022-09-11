#!/usr/bin/zsh

sudo apt-get update

BASIC_PACKAGES=(vim git tmux python3 curl wget zsh xclip python3-pip fontconfig)
echo "Installing basic packages ($BASIC_PACKAGES)"
sudo apt-get install $BASIC_PACKAGES
git config --global user.email "jsannemo@jsannemo.se"
git config --global user.name "Johan Sannemo"

if want_home
then
    sudo snap install spotify
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo dpkg -i google-chrome-stable_current_amd64.deb
    rm google-chrome-stable_current_amd64.deb
fi
