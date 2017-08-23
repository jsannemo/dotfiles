rm -f $HOME/.vimrc
ln -s $HOME/Code/dotfiles/vim/vimrc $HOME/.vimrc

if cd $HOME/.vim/bundle/Vundle.vim
then
    git pull origin
else
    git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
fi

vim +PluginInstall +qall
