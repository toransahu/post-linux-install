#! /bin/sh
#
# install_protobuf.sh
# Copyright (C) 2019 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#


get_from_tar(){
    VERSION=$(curl -s https://api.github.com/repositories/23357588/releases/latest | grep tag_name | cut -d '"' -f 4)

    # remove old source code - if any
    rm -rf protobuf-$VERSION

    # from this link https://github.com/protocolbuffers/protobuf/releases/tag/v3.6.1 
    # download protobuf-all-[VERSION].tar.gz
    wget https://github.com/protocolbuffers/protobuf/releases/download/v$VERSION/protobuf-all-$VERSION.tar.gz
    
    # extract
    tar -xvzf protobuf-all-$VERSION.tar.gz
    
    # change dir
    cd protobuf-$VERSION/
}

get_from_git_clone(){
    # if already exists - pull
    if [ -d $HOME/.temp/protobuf ]; then
        # change dir
        cd protobuf
        # pull
        git pull origin master
    else
        # get source code from github
        git clone https://github.com/google/protobuf.git
    
        # change dir
        cd protobuf
    fi
}

install(){
    # initial step
    mkdir -p  ~/.temp
    cd ~/.temp
    
    # pre-requisites
    sudo apt-get install autoconf automake libtool curl make g++ unzip -y
    
    # get_from_git_clone
    get_from_tar
    
    # configure
    ./configure
    
    # make
    make
    make check
    
    # install 
    sudo make install
    
    # refresh shared library cache
    sudo ldconfig
}

# install
install

# validate
protoc --version
# ls /usr/local/include/google/protobuf/  # check lib files
