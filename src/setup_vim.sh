#! /bin/sh
#
# vim_setup.sh
# Copyright (C) 2019 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#


## vundle
#--------
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# TODO: install plugin from cli, setup ycm after python setup
vim +PluginInstall


sudo apt install cmake build-essential python3-dev -y
# NOTE: install go before this
vim +GoInstallBinaries
sudo apt install nodejs npm -y
# sudo apt install rustc cargo
python3 ~/.vim/bundle/YouCompleteMe/install.py --clang-completer --go-completer  --java-completer --ts-completer # --rust-completer

## suan/vim-instant-markdown
# ---------------------------
sudo apt install npm xdg-utils curl nodejs -y
sudo npm -g install instant-markdown-d
git clone https://github.com/suan/vim-instant-markdown.git ~/.vim/vim-instant-markdown
mv ~/.vim/vim-instant-markdown/after ~/.vim/after


