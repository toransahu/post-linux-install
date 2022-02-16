#!/usr/bin/env bash
#
# restart_touchpad_driver.sh
# Copyright (C) 2022 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#

sudo  modprobe -r psmouse
sudo modprobe psmouse
