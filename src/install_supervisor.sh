#! /bin/sh
#
# install_supervisor.sh
# Copyright (C) 2020 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#


pip install supervisor

# config eg:
#  $ sudo vim /etc/supervisor/conf.d/low_ram_action.conf
# [program:low_ram_action]
# command=/home/toransahu/disk/E/workspace/linux-tweaks/scripts/low_ram_action.sh
# autostart=true
# autorestart=true
# stderr_logfile=/var/log/low_ram_action.err.log
# stdout_logfile=/var/log/low_ram_action.out.log

# commands:

# # reload config
# sudo supervisorctl reread
# sudo supervisorctl reload
# 
# # restart job
# sudo supervisorctl restart low_ram_action
# 
# # check logs
# sudo supervisorctl tail -f low_ram_action 
