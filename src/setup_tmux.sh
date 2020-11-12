#! /bin/sh
#
# setup_tmux.sh
# Copyright (C) 2019 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#

install_update_tmux(){
    sudo apt update

    sudo apt install -y git
    
    sudo apt install -y automake
    sudo apt install -y bison
    sudo apt install -y build-essential
    sudo apt install -y pkg-config
    sudo apt install -y libevent-dev
    sudo apt install -y libncurses5-dev
    
    rm -fr /tmp/tmux
    
    git clone https://github.com/tmux/tmux.git /tmp/tmux
    
    cd /tmp/tmux
    
    git checkout master
    
    sh autogen.sh
    
    ./configure && make
    
    sudo make install
    
    cd -
    
    rm -fr /tmp/tmux
}

install_tpm(){
    # install tmux plugin manager
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm  # Reload TMUX environment so TPM is sourced:
    
    # type this in terminal if tmux is already running
    # $ tmux source ~/.tmux.conf
}

setup(){
    install_update_tmux
    install_tpm
}

setup

## DOC

# Installing plugins

#     Add new plugin to ~/.tmux.conf with set -g @plugin '...'
#     Press prefix + I (capital i, as in Install) to fetch the plugin.

# You're good to go! The plugin was cloned to ~/.tmux/plugins/ dir and sourced.
# Uninstalling plugins

#     Remove (or comment out) plugin from the list.
#     Press prefix + alt + u (lowercase u as in uninstall) to remove the plugin.

# All the plugins are installed to ~/.tmux/plugins/ so alternatively you can find plugin directory there and remove it.
# Key bindings

# prefix + I

#     Installs new plugins from GitHub or any other git repository
#     Refreshes TMUX environment

# prefix + U

#     updates plugin(s)

# prefix + alt + u

#     remove/uninstall plugins not on the plugin list

