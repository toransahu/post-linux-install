#! /bin/sh
#
# terminal_stuff.sh
# Copyright (C) 2019 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#

mkdir -p ~/.temp
cd ~/.temp

setup_zsh() {
wget -O - https://raw.githubusercontent.com/toransahu/post-linux-install/master/src/setup_zsh.sh | sh
}

setup_vim() {
wget -O - https://raw.githubusercontent.com/toransahu/post-linux-install/master/src/setup_vim.sh | sh
}

setup_tmux() {
wget -O - https://raw.githubusercontent.com/toransahu/post-linux-install/master/src/setup_tmux.sh | sh
}

setup() {
    setup_zsh
    setup_vim
    setup_tmux
}

setup
