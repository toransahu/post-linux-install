#! /bin/sh
#
# preprocessor.sh
# Copyright (C) 2019 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#

sudo apt update
sudo apt upgrade
sudo apt install --fix-missings
sudo apt install --fix-broken

# install basic packages
sudo apt install curl wget vim-gnome zsh git xdotool gnustep-gui-runtime -y
                                                    # say
# simplify password
# src: http://ubuntuhandbook.org/index.php/2015/06/minimum-password-length-ubuntu/

