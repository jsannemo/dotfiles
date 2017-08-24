if ! cat /etc/passwd | grep $USER | grep "/usr/bin/zsh$" >/dev/null
then
which zsh>/dev/null && chsh -s `which zsh`
fi

rm -f $HOME/.zshrc
ln -s $HOME/Code/dotfiles/zsh/zshrc $HOME/.zshrc

