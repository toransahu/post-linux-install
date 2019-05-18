#! /bin/sh
#
# setup_touchpad_gesture.sh
# Copyright (C) 2019 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#

mkdir -p ~/.temp
cd ~/.temp

sudo gpasswd -a $USER input
sudo apt-get install xdotool wmctrl libinput-tools -y
git clone https://github.com/toransahu/libinput-gestures.git
cd libinput-gestures
sudo make install # or sudo ./libinput-gestures-setup install

# configure
libinput-gestures-setup autostart
libinput-gestures-setup start

# NOTE: logout-login required
