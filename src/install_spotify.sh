#! /bin/sh
#
# install_spotify.sh
# Copyright (C) 2020 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#


curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update && sudo apt install spotify-client
