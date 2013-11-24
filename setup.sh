#!/usr/bin/sh

# copy files
mkdir ~/.dots
cp vimrc ~/.dots

# run this to set up vim
ln -s ~/.dots/vimrc ~/.vimrc
