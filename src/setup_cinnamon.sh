#! /bin/sh
#
# cinnamon_setup.sh
# Copyright (C) 2019 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#

MINT_X_ICONS_VERSION='1.5.1_all'
MINT_Y_ICONS_VERSION='1.3.3_all'
MINT_THEMES_VERSION='1.7.8_all'

download_mint_x_icons() {
    echo "Downloading mint-x-icons_$MINT_X_ICONS_VERSION.deb"
    wget http://packages.linuxmint.com/pool/main/m/mint-x-icons/mint-x-icons_$MINT_X_ICONS_VERSION.deb
    echo "Done."
}

download_mint_y_icons() {
    echo "Downloading mint-y-icons_$MINT_Y_ICONS_VERSION.deb"
    wget http://packages.linuxmint.com/pool/main/m/mint-y-icons/mint-y-icons_$MINT_Y_ICONS_VERSION.deb
    echo "Done."
}

download_mint_themes() {
    echo "Downloading mint-themes_$MINT_THEMES_VERSION.deb"
    wget http://packages.linuxmint.com/pool/main/m/mint-themes/mint-themes_$MINT_THEMES_VERSION.deb
    echo "Done."
}

install_mint_x_icons() {
    echo "Installing mint-x-icons_$MINT_X_ICONS_VERSION.deb"
    sudo dpkg -i mint-x-icons_$MINT_X_ICONS_VERSION.deb
    echo "Done."
}

install_mint_y_icons() {
    echo "Installing mint-y-icons_$MINT_Y_ICONS_VERSION.deb"
    sudo dpkg -i mint-y-icons_$MINT_Y_ICONS_VERSION.deb
    echo "Done."
}

install_mint_themes() {
    echo "Installing mint-themes_$MINT_THEMES_VERSION.deb"
    sudo dpkg -i mint-themes_$MINT_THEMES_VERSION.deb # dependencies - above 2
    echo "Done."
}

main() {
    mkdir -p ~/.temp 
    cd ~/.temp
    
    download_mint_x_icons 
    download_mint_y_icons 
    download_mint_themes 
    
    install_mint_x_icons 
    install_mint_y_icons 
    install_mint_themes 

    # replace nautilus with nemo & set nemo default
    sudo apt install nemo
	xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search

    # TODO: icing task manager - automate it
}
