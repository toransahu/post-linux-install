#! /bin/sh
#
# install_firefox.sh
# Copyright (C) 2019 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#

# FIXME

GPG_PUBLIC_KEY=989892661D11D494

sudo apt remove firefox
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys $GPG_PUBLIC_KEY 
sudo apt-add-repository "deb http://ppa.launchpad.net/ubuntu-mozilla-security/ppa/ubuntu bionic main"
sudo apt update
sudo apt install firefox
