#! /bin/sh
#
# install_kdeconnect.sh
# Copyright (C) 2020 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#

# ubuntu
install_on_ubuntu () {
    sudo apt install kdeconnect -y

    # allow ports in firewall
    sudo ufw allow 1714:1764/udp
    sudo ufw allow 1714:1764/tcp
    sudo ufw reload
}

main () {
    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        install_on_ubuntu
    elif [[ "$OSTYPE" == "darwin"* ]]; then
            # Mac OSX
    elif [[ "$OSTYPE" == "cygwin" ]]; then
            # POSIX compatibility layer and Linux environment emulation for Windows
    elif [[ "$OSTYPE" == "msys" ]]; then
            # Lightweight shell and GNU utilities compiled for Windows (part of MinGW)
    elif [[ "$OSTYPE" == "win32" ]]; then
            # I'm not sure this can happen.
    elif [[ "$OSTYPE" == "freebsd"* ]]; then
            # ...
    else
        echo Unknown OS!
    fi

}
