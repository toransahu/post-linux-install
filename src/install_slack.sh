#! /bin/sh
#
# install_slack.sh
# Copyright (C) 2019 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#

mkdir -p ~/.temp
cd ~/.temp

# slack
# sudo apt install slack -y
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-3.4.0-amd64.deb -O slack-amd64.deb

sudo dpkg -i slack-amd64.deb

