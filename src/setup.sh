#! /bin/sh
#
# setup.sh
# Copyright (C) 2019 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#

# init

# preprocess
wget -O - https://raw.githubusercontent.com/toransahu/post-linux-install/master/src/preprocessor.sh | sh

# download repos

# set env vars

# inject new device entry

# deploy dot files

# deploy keys
wget -O - https://raw.githubusercontent.com/toransahu/post-linux-install/master/src/setup_keys.sh | sh

# install additional packages

# setup git
wget -O - https://raw.githubusercontent.com/toransahu/post-linux-install/master/src/setup_git.sh | sh

# setup python
wget -O - https://raw.githubusercontent.com/toransahu/post-linux-install/master/src/setup_python.sh | sh

# setup terminal
wget -O - https://raw.githubusercontent.com/toransahu/post-linux-install/master/src/setup_terminal.sh | sh

# setup cinnamon
