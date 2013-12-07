#!/usr/bin/sh

# copy files #
mkdir ~/.dots
cp vimrc ~/.dots

# vim #
mkdir ~/.vim
mkdir ~/.vim/bundle

# install plugins #
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

# symlinks #
ln -s ~/.dots/vimrc ~/.vimrc
ln -s ~/.dots/bash_profile ~/.bash_profile

vim +BundleInstall +qall
