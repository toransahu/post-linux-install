#!/usr/bin/env bash
#
# install_fzf.sh
# Copyright (C) 2020 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#


if [ -d "~/.fzf" ]; then
    echo "FZF already installed, Upgrading..."
    cd ~/.fzf && git pull && ./install
    echo Done.
else
    echo "Cloning..."
    cd ~/
    git clone https://github.com/junegunn/fzf ~/.fzf
    echo Installing..
    ./install
    echo Done.
fi
