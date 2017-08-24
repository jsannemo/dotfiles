FONT_PATH=$HOME/.local/share/fonts

mkdir -p $FONT_PATH

if [[ ! -e $FONT_PATH/Hack-Regular.ttf ]]
then
    wget https://raw.githubusercontent.com/powerline/fonts/master/Hack/Hack-Regular.ttf
    mv Hack-Regular.ttf $FONT_PATH
    sudo fc-cache -fv $FONT_PATH
fi

