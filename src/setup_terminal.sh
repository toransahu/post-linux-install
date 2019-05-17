#! /bin/sh
#
# terminal_stuff.sh
# Copyright (C) 2019 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#

mkdir -p ~/.temp
cd ~/.temp

## oh-my-zsh

rm -rf $HOME/.oh-my-zsh
bash -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# TODO: restore .zshrc
cp ../../linux-tweaks/backups/.zshrc ~/

# setup zsh as default
chsh -s $(which zsh)

# install powerline fonts
sudo apt install tmux fonts-powerline

# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
source ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


## zsh-autosuggestions
#------------------
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# TODO: fzf

# TODO: Rg 

source ~/.zshrc
