#! /bin/sh
#
# install_adobe_flash.sh
# Copyright (C) 2019 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#


sudo add-apt-repository "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
sudo apt update
sudo apt install adobe-flashplugin
