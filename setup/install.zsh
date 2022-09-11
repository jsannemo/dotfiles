#!/usr/bin/zsh
set -e
INSTALL_PATH=$(dirname -- "$0:A")
PROFILES=(basic home)
MODULES=(packages ssh dev home fonts zsh vim contest)

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
    
while [[ ${MODULES[(r)$MODULE]} != $MODULE && $MODULE != "all" ]]
do
    read MODULE\?"What module should be installed [$MODULES, all*]? "
done

if [[ $MODULE == "all" ]]
then
    MODULE=""
fi
if [[ ! -z $MODULE ]]
then
    MODULES=($MODULE)
fi

function want_home() {
    [[ $PROFILE == "home" ]]
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
