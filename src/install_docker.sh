#! /bin/sh
#
# install_docker.sh
# Copyright (C) 2019 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.

# Remove any older installations
sudo apt remove docker docker-engine docker.io

# Make sure you have the necessary packages to allow the use of Docker’s repository:
sudo apt install apt-transport-https ca-certificates curl software-properties-common

# Add Docker’s GPG key:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Verify the fingerprint of the GPG key:
sudo apt-key fingerprint 0EBFCD88

# You should see output similar to the following:
# pub   4096R/0EBFCD88 2017-02-22
#         Key fingerprint = 9DC8 5822 9FC7 DD38 854A  E2D8 8D81 803C 0EBF CD88
# uid                  Docker Release (CE deb)
# sub   4096R/F273FCD8 2017-02-22

# Add the stable Docker repository:
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Update your package index and install Docker CE:
sudo apt update
sudo apt install docker-ce

# Add your limited Linux user account to the docker group:
sudo usermod -aG docker $USER

# Check that the installation was successful by running the built-in “Hello World” program:
# docker run hello-world  # by default will need sudo, check EOF

## (Optional)

# Add the docker group if it doesn't already exist:
sudo groupadd docker

# Add the connected user "$USER" to the docker group. Change the user name to match your preferred user if you do not want to use your current user:
sudo gpasswd -a $USER docker

# Either do a newgrp docker or log out/in to activate the changes to groups.
newgrp docker

# You can use
docker run hello-world

