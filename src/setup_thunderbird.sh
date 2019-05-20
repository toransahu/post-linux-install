#! /bin/sh
#
# packages_setup.sh
# Copyright (C) 2019 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#

mkdir -p ~/.temp
cd ~/.temp

# TODO
# thunderbird
# thunderbird plugins
# thunderbird filters

pip install mozdownload
mozdownload --application=thunderbird --version=latest
tar xvfj $(find . -type f -name thunderbird*.tar.bz2)

