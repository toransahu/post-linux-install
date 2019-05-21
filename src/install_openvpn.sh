#! /bin/sh
#
# install_openvpn.sh
# Copyright (C) 2019 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#


mkdir -p ~/.temp
cd ~/.temp

sudo apt purge openvpn

# https://openvpn.net/community-downloads/
wget https://swupdate.openvpn.org/community/releases/openvpn-2.4.7.tar.gz -O openvpn.tar.gz
tar xvfz openvpn.tar.gz
cd openvpn

# deps - https://stackoverflow.com/questions/27729139/unable-to-install-openvpn-2-3-6-on-ubuntu-14-04-lts-to-work-work-with-tun-tap
sudo apt install liblzo2-dev
sudo apt install libpam0g-dev
sudo apt-get install python-dev # for python-devel support  - for default python2
# for default python3
conda create -n python2.7 python=2.7
conda activate python2.7

# https://community.openvpn.net/openvpn/wiki/TesterDocumentation
./configure
make
sudo make install
#sudo make uninstall
#sudo apt autoremove
