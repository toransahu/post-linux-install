#!/usr/bin/env bash
#
# install_vim.sh
# Copyright (C) 2021 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#

. ~/paths.sh

cd $WORKSPACE

install_vim_from_source_code() {
    # make sure you don't have any soon to be forgotten version of vim installed
    sudo apt remove --purge vim vim-runtime vim-gtk vim-gtk3 vim-tiny vim-gui-common
    
    # Install Deps
    sudo apt install build-essential cmake
    sudo apt install python3-dev
    
    # Optional: so vim can be uninstalled again via `dpkg -r vim`
    sudo apt install checkinstall
    
    sudo rm -rf /usr/local/share/vim /usr/bin/vim
    
    git clone https://github.com/vim/vim
    cd vim
    git pull && git fetch
    
    # In case Vim was already installed
    make distclean && make clean
    cd src
    make distclean && make clean
    cd ..
    
    # Configure
    
    LDFLAGS="-rdynamic" ./configure \
      --enable-multibyte \
      --enable-python3interp \
      --with-python3-config-dir=/usr/lib/python3.8/config-3.8-x86_64-linux-gnu \
      --enable-cscope \
      --enable-largefile
      
    # Install
    make && sudo make install
}

install_vim_debian() {
    sudo apt install vim-gtk3 # vim-gui-common
}

# alernatives
install_upgrade_vim_from_ppa(){
    sudo add-apt-repository ppa:jonathonf/vim
    sudo apt update
    sudo apt install vim
}

install_vim_debian
