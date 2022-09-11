#!/usr/bin/zsh

sudo apt-get update

if want_home
then
    curl -sSL https://install.python-poetry.org | python3 -
    
    curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
    sudo apt-get install -y nodejs

    sudo npm install -g @bazel/bazelisk

    sudo apt-get install wget gpg
    wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
    sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
    sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
    rm -f packages.microsoft.gpg
    sudo apt-get update
    sudo apt-get install code

    sudo snap install intellij-idea-ultimate --classic
    sudo snap install goland --classic
fi
