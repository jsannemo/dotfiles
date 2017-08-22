SSH_DIR=$HOME/.ssh/
mkdir -p $SSH_DIR
SSH_KEYS_FILE=$HOME/.ssh/authorized_keys
touch $SSH_KEYS_FILE

MY_KEYS_FILE=$MODULE_PATH/authorized_keys
fgrep -vxf $SSH_KEYS_FILE $MY_KEYS_FILE >> $SSH_KEYS_FILE

if [[ $PROFILE == HOME && e $SSH_DIR/id_rsa ]]
then
    ssh-keygen -t rsa -b 4096 -C "$USER@$HOST"
    if fgrep -vxf $MY_KEYS_FILE $SSH_DIR/id_rsa.pub >> $MY_KEYS_FILE
    then
        git add $MY_KEYS_FILE
        git commit -m "Adding new SSH key for $USER@$HOST"
        git push origin master
    fi
    add_todo "Add $SSH_DIR/id_rsa.pub to Github"
fi
