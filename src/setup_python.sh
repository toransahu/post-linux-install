#! /bin/sh
#
# python_setup.sh
# Copyright (C) 2019 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#

mkdir -p ~/.temp
cd ~/.temp

wget -O - https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh | sh

## python packages
#-----------------

pip install --upgrade pip
pip install pipenv flake8 black
