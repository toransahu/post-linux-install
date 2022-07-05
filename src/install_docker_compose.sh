#!/usr/bin/env bash
#
# install_docker_compose.sh
# Copyright (C) 2022 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#


sudo curl -L https://github.com/docker/compose/releases/download/1.29.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
