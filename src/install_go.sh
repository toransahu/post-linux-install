#! /bin/sh
#
# install_go.sh
# Copyright (C) 2019 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#

mkdir -p ~/.temp
cd ~/.temp
wget https://dl.google.com/go/go1.12.5.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.12.5.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
source ~/.profile
#echo "export PATH=\$PATH:/usr/local/go/bin" >> ~/.profile

# for personal repos
git config --global url."git@github.com:".insteadOf "https://github.com/"
