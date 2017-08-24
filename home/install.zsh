mkdir -p $HOME/Code
mkdir -p $HOME/Code/bin
mkdir -p $HOME/Code/tmp

if cd $HOME/Code/dotfiles
then
    git pull origin
else
    git clone git@github.com:jsannemo/dotfiles $HOME/Code/dotfiles
fi

if want_home 
then
    if [[ ! -d $HOME/Code/blog ]]
    then
        git clone git@github.com:jsannemo/jsannemo.github.io.git $HOME/Code/blog
    fi
fi
