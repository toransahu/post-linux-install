#! /bin/sh
#
# install_firefox.sh
# Copyright (C) 2019 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#


mkdir -p ~/.temp
cd ~/.temp

pip install mozdownload
mozdownload --version=latest
tar xvfj $(find . -type f -name firefox*.tar.bz2)
