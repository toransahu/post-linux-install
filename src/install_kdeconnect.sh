#! /bin/bash
#
# install_kdeconnect.sh
# Copyright (C) 2020 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#

# ubuntu
install_on_ubuntu () {
    sudo apt install kdeconnect -y

    # indicator
    sudo add-apt-repository ppa:webupd8team/indicator-kdeconnect
    sudo apt update
    sudo apt install kdeconnect indicator-kdeconnect

    # allow ports in firewall
    sudo ufw allow 1714:1764/udp
    sudo ufw allow 1714:1764/tcp
    sudo ufw reload
}

install_on_ubuntu
