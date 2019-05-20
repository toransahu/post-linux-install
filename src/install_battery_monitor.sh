#! /bin/sh
#
# install_battery_monitor.sh
# Copyright (C) 2019 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#


#mkdir -p ~/.temp
#cd ~/.temp

# deps
sudo apt install acpi python3 python3-gi python3-setuptools libnotify4 libappindicator3-1 gir1.2-appindicator3-0.1 -y


#wget https://github.com/maateen/battery-monitor/archive/master.zip -O battery-monitor.zip
#unzip battery-monitor.zip
#cd battery-monitor-master
#sudo make install

sudo add-apt-repository ppa:maateen/battery-monitor -y
sudo apt-get update -y
sudo apt-get install battery-monitor -y

