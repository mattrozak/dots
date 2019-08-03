#!/usr/bin/env bash

cd ~

if [ -d ~/dots ]
then
    mv ~/dots ~/.dots
fi

# vim #
mkdir ~/.vim
mkdir ~/.vim/bundle

# install ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

# install vim plugins #
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

# symlinks #
ln -s ~/.dots/vimrc ~/.vimrc
ln -s ~/.dots/bash_profile ~/.bash_profile
ln -s ~/.dots/zshrc ~/.zshrc

vim +BundleInstall +qall
