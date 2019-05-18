#! /bin/sh
#
# install_keybase.sh
# Copyright (C) 2019 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#


mkdir -p ~/.temp
cd ~/.temp

# keybase
curl --remote-name https://prerelease.keybase.io/keybase_amd64.deb
# if you see an error about missing `libappindicator1` from the next
# command, you can ignore it, as the subsequent command corrects it
sudo dpkg -i keybase_amd64.deb -y
sudo apt install -f
run_keybase


