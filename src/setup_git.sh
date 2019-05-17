#! /bin/sh
#
# git_setup.sh
# Copyright (C) 2019 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#

GPG_PUBLIC_KEY=989892661D11D494

git config --global user.email "toran.sahu@yahoo.com"
git config --global user.name "Toran Sahu"
git config --global user.sigingkey $GPG_PUBLIC_KEY
git config --global commit.gpgsign true # to sign commits     by def, will ask for gpg (not ssh) paraphrase 

