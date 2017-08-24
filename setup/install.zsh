#!/usr/bin/zsh
set -e
INSTALL_PATH=$(dirname -- "$0:A")
PROFILES=(basic work home)
MODULES=(packages home ssh fonts zsh vim tmux)

if [[ -z $1 ]]
then
    PROFILE="invalid"
else
    PROFILE=$1
fi
while [[ -z $PROFILE || ${PROFILES[(r)$PROFILE]} != $PROFILE ]]
do
    read PROFILE\?"What profile is this machine [$PROFILES]? "
done

if [[ -z $2 ]]
then
    MODULE="invalid"
else
    MODULE=$2
fi
    
while [[ ${MODULES[(r)$MODULE]} != $MODULE ]]
do
    read MODULE\?"What module should be installed [$MODULES, all*]? "
done

if [[ ! -z $MODULE ]]
then
    MODULES=($MODULE)
fi

function want_home() {
    [[ $PROFILE == "home" ]]
}

function want_work() {
    [[ $PROFILE == "work" || want_home ]]
}

function want_basic() {
    [[ $PROFILE == "basic" || want_home ]]
}

TODOS=()
function add_todo() {
    TODOS+=($1)
}

function install() {
    echo "Installing module $1"
    MODULE_PATH=$INSTALL_PATH/../$1
    source $MODULE_PATH/install.zsh
}

for module in $MODULES
do
    install $module
done

echo "Installation done! Todo list:"
for todo in $TODOS
do
    echo "- $todo"
done
