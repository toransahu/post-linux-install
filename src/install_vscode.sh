#! /bin/sh
#
# install_vscode.sh
# Copyright (C) 2019 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#

UBUNTU_RELEASE=$(lsb_release -r | cut -d ":" -f2 | tr -d '[:space:]')
install() {
    sudo apt update
    sudo apt install software-properties-common apt-transport-https wget
    wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
    sudo apt update
    sudo apt install code
}


if [ "$UBUNTU_RELEASE" = "18.04" ]; then
    install
else
    while true; do
        read -p "May be unsupported script, try anyway?" yn
        case $yn in
            [Yy]* ) install; break;;
            [Nn]* ) exit;;
            * ) echo "Please answer yes or no.";;
        esac
    done
fi


