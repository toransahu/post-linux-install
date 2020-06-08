#! /bin/sh
#
# install_power_mgmt.sh
# Copyright (C) 2020 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#


sudo apt install tlp -y

# UI for tlp
sudo add-apt-repository ppa:slimbook/slimbook -y
sudo apt update && sudo apt install slimbookbattery -y

# lets use powertop to see what bad configs are left even after tlp's default config
sudo apt install powertop
