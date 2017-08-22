#!/usr/bin/zsh
set -e
INSTALL_PATH=$(dirname -- "$0:A")

PROFILES=(basic work home)

while [[ -z $PROFILE || ${PROFILES[(r)$PROFILE]} != $PROFILE ]]
do
    read PROFILE\?"What profile is this machine ($PROFILES)? "
done

function want_home() {
    [[ $PROFILE == "home" ]]
}

function want_work() {
    [[ $PROFILE == "work" || want_home ]]
}

function want_basic() {
    [[ $PROFILE == "basic" || want_home ]]
}

function install() {
    echo "Installing module $1"
    source $INSTALL_PATH/../$1/install.zsh
}

MODULES=(packages home zsh)
for module in $MODULES
do
    install $module
done
