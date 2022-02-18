#!/usr/bin/env bash
#
# install_ripgrep.sh
# Copyright (C) 2022 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#


VERSION=13.0.0

mkdir -p $HOME/.tmp
https://github.com/BurntSushi/ripgrep/releases/download/$VERSION/ripgrep_"$VERSION"_amd64.deb
sudo dpkg -i ripgrep_"$VERSION"_amd64.deb
