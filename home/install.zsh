mkdir -p $HOME/Code
mkdir -p $HOME/Code/bin

if cd $HOME/Code/dotfiles
then
    git pull origin
else
    git clone git@github.com:jsannemo/dotfiles $HOME/Code/dotfiles
fi
