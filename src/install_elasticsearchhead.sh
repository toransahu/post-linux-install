#! /bin/sh
#
# install_elastichead.sh
# Copyright (C) 2019 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#


# pre-requisites
cd ~
sudo apt update -y
sudo apt install nodejs -y
sudo apt install nodejs-dev node-gyp libssl1.0-dev -y
sudo apt install npm -y

# install elastic-head
git clone https://github.com/mobz/elasticsearch-head
cd elasticsearch-head
npm install
# npm run start
# open https://localhost:9100

