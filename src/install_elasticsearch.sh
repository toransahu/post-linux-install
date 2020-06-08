#! /bin/sh
#
# install_elasticsearch.sh
# Copyright (C) 2020 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#


# Download and install the public signing key:
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -

# install the apt-transport-https package on Debian before proceeding
sudo apt install apt-transport-https -y

# Save the repository definition to /etc/apt/sources.list.d/elastic-7.x.list
echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-7.x.list

# install the Elasticsearch Debian package
sudo apt update -y && sudo apt install elasticsearch -y



