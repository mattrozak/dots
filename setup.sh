#!/usr/bin/sh

# copy files #
mkdir ~/.dots
cp vimrc ~/.dots

# vim #
mkdir ~/.vim
mkdir ~/.vim/bundle

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

ln -s ~/.dots/vimrc ~/.vimrc

vim +BundleInstall +qall
