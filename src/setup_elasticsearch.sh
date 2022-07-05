#! /bin/sh
#
# setup_elasticsearch.sh
# Copyright (C) 2020 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#


sh install_elasticsearch.sh

# if using `systemd` (check by: `ps -p 1`)
sudo /bin/systemctl daemon-reload
sudo /bin/systemctl enable elasticsearch.service

# start/stop the service using:
sudo systemctl start elasticsearch.service
# sudo systemctl stop elasticsearch.service
