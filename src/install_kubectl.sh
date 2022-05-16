#! /bin/sh
#
# install_kubectl.sh
# Copyright (C) 2019 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#


# recommended way

via_curl(){
    cd /tmp
    # download binary
    curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
    # download checksum
    curl -LO "https://dl.k8s.io/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
    # validate
    echo "$(cat kubectl.sha256) kubectl" | sha256sum --check
    # if valid, install
    # if -z $(cat kubectl.sha256) kubectl | sha256sum --check; then
        sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl;
    # fi
    # test
    kubectl version --client
}

via_curl

# kubectl version  # test

# using snap 
# sudo apt install snap

# sudo snap install kubectl --classic
