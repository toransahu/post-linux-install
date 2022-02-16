#!/usr/bin/env bash
#
# install_firefox_pwa_ext.sh
# Copyright (C) 2021 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#


# Install required packages for third-party repositories
sudo apt update
sudo apt install debian-archive-keyring # Debian-only
sudo apt install curl gnupg apt-transport-https

# Import GPG key and enable the repository
curl -L "https://packagecloud.io/filips/FirefoxPWA/gpgkey" | sudo apt-key add -
echo "deb https://packagecloud.io/filips/FirefoxPWA/any/ any main" | sudo tee /etc/apt/sources.list.d/firefoxpwa.list

# Refresh repositories and install the package
sudo apt update
sudo apt install firefoxpwa
