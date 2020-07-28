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
sudo chsh -s $(which zsh)
# sudo usermod -s $(which zsh) $USER 

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
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# TODO: Rg 
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/11.0.1/ripgrep_11.0.1_amd64.deb
sudo dpkg -i ripgrep_11.0.1_amd64.deb

source ~/.zshrc
