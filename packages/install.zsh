#!/usr/bin/zsh

sudo apt-get update

if want_basic
then
    BASIC_PACKAGES=(vim git tmux python3 curl wget)
    echo "Installing basic packages ($BASIC_PACKAGES)"
    sudo apt-get install $BASIC_PACKAGES
fi

if want_dev 
then
    DEV_PACKAGES=(golang openjdk-9-jdk build-essentials g++)
    echo "Installing dev packages ($DEV_PACKAGES)"
    sudo apt-get install $DEV_PACKAGES
fi

if want_home
then
    HOME_PACKAGES=(google-chrome-stable)
    echo "Installing home packages ($HOME_PACKAGES)"
    sudo apt-get install $HOME_PACKAGES
    echo "Installing bazel"
    echo "deb [arch=amd64] http://storage.googleapis.com/bazel-apt stable jdk1.8" | sudo tee /etc/apt/sources.list.d/bazel.list
    curl https://bazel.build/bazel-release.pub.gpg | sudo apt-key add -
    sudo apt-get install bazel
    sudo apt-get upgrade bazel
fi
