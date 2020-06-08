#! /bin/sh
#
# install_nemo-terminal.sh
# Copyright (C) 2020 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#

mkdir -p ~/.temp
cd ~/.temp

git clone https://github.com/linuxmint/nemo-extensions/

sudo apt install debhelper python3-all -y

cd nemo-extensions
./build nemo-terminal
