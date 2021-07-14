#! /bin/sh
#
# preprocessor.sh
# Copyright (C) 2019 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#

# update / upgrade OS

update_debian() {
    sudo apt update -y
}

upgrade_debian() {
    sudo apt upgrade -y
}

fix_missing_broken_debian() {
    sudo apt install --fix-missing
    sudo apt install --fix-broken
}

# install basic packages
install_basic_deb_pkg() {
    sudo apt install curl wget vim-gnome zsh git xdotool gnustep-gui-runtime -y
}
                                                    # say
# simplify password
# src: http://ubuntuhandbook.org/index.php/2015/06/minimum-password-length-ubuntu/

DEFAULT_WORKSPACE=~/disk/E/workspace

create_workspace() {
    mkdir -p $DEFAULT_WORKSPACE
}

copy_paths_sh_to_home() {
    cp $DEFAULT_WORKSPACE/linux-tweaks/backups/paths.sh ~/
}

git_clone_linux_tweaks() {
    git clone https://github.com/toransahu/linux-tweaks
}

git_clone_post_linux_install() {
    git clone https://github.com/toransahu/post-linux-install
}

restore_config_files() {
    chmod +x $DEFAULT_WORKSPACE/linux-tweaks/scripts/restore_confs.sh
    sh $DEFAULT_WORKSPACE/linux-tweaks/scripts/restore_confs.sh
}

main() {
    create_workspace
    install_basic_deb_pkg
    cd $DEFAULT_WORKSPACE
    git_clone_linux_tweaks
    git_clone_post_linux_install
    copy_paths_sh_to_home
    restore_config_files
}

main
