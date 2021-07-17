#! /bin/sh
#
# setup.sh
# Copyright (C) 2019 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#

# init

detect_os() {
    echo "OS detected: $OSTYPE"
    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        :
    elif [[ "$OSTYPE" == "darwin"* ]]; then
        # Mac OSX
        :
    elif [[ "$OSTYPE" == "cygwin" ]]; then
        # POSIX compatibility layer and Linux environment emulation for Windows
        :
    elif [[ "$OSTYPE" == "msys" ]]; then
        # Lightweight shell and GNU utilities compiled for Windows (part of MinGW)
        :
    elif [[ "$OSTYPE" == "win32" ]]; then
        # I'm not sure this can happen.
        :
    elif [[ "$OSTYPE" == "freebsd"* ]]; then
        # ...
        :
    else
        echo Unknown OS!
    fi
}

# preprocess
wget -O - https://raw.githubusercontent.com/toransahu/post-linux-install/master/src/preprocessor.sh | sh

# download repos

# set env vars

# inject new device entry

# deploy dot files

# deploy keys
wget -O - https://raw.githubusercontent.com/toransahu/post-linux-install/master/src/setup_keys.sh | sh

# install additional packages
wget -O - https://raw.githubusercontent.com/toransahu/post-linux-install/master/src/setup_additional_pkg.sh | sh

# setup git
wget -O - https://raw.githubusercontent.com/toransahu/post-linux-install/master/src/setup_git.sh | sh

# setup python
wget -O - https://raw.githubusercontent.com/toransahu/post-linux-install/master/src/setup_python.sh | sh

# setup terminal
wget -O - https://raw.githubusercontent.com/toransahu/post-linux-install/master/src/setup_terminal.sh | sh

# setup cinnamon
