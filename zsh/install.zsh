which zsh>/dev/null && chsh -s `which zsh`
rm -f $HOME/.zshrc
ln -s $HOME/Code/dotfiles/zsh/zshrc $HOME/.zshrc
