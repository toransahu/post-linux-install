#! /bin/sh
#
# install_delta.sh
# Copyright (C) 2020 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#


# https://github.com/dandavison/delta/releases/latest/download/git-delta_0.4.4_amd64.deb

curl -s https://api.github.com/repos/dandavison/delta/releases/latest \
| grep "git-delta_.*_amd64.deb" \
| cut -d : -f 2,3 \
| tr -d \" \
| wget -qi -

sudo dpkg -i git-delta_*_amd64.deb
