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

## suan/vim-instant-markdown
# ---------------------------
sudo apt install npm xdg-utils curl nodejs
sudo npm -g install instant-markdown-d
git clone https://github.com/suan/vim-instant-markdown.git ~/.vim/vim-instant-markdown
mv ~/.vim/vim-instant-markdown/after ~/.vim/after

# TODO: install plugin from cli, setup ycm after python setup
