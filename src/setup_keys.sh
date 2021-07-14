#! /bin/sh
#
# setup_keys.sh
# Copyright (C) 2019 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#


. ~/paths.sh

cd $WORKSPACE

git clone https://github.com/toransahu/keys || (cd keys && git pull origin master)

# ssh
mkdir -p ~/.ssh
cp $WORKSPACE/keys/ssh/master/id_rsa* ~/.ssh/
chmod 400 ~/.ssh/id_rsa
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa  # might ask ssh paraphrase


# gpg
gpg --import $WORKSPACE/keys/gpg/my-gpg.key 
#gpg --list-secret-keys
#gpg --list-secret-keys --keyid-format LONG
#gpg --armor --export <row: sec wala; column:/ k baad wala>	

