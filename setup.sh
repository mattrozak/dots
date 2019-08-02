#!/usr/bin/env bash

cd ~

if [ -d ~/dots ]
then
    mv ~/dots ~/.dots
fi

# vim #
mkdir ~/.vim
mkdir ~/.vim/bundle

# install plugins #
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

# symlinks #
ln -s ~/.dots/vimrc ~/.vimrc
ln -s ~/.dots/bash_profile ~/.bash_profile
ln -s ~/.dots/zshrc ~/.zshrc

vim +BundleInstall +qall
