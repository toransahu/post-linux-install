#!/usr/bin/env bash
#
# install_speedtest.net_cli.sh
# Copyright (C) 2021 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#


curl -s https://install.speedtest.net/app/cli/install.deb.sh | sudo bash
sudo apt install speedtest
