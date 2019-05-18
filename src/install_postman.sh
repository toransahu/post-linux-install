#! /bin/sh
#
# install_postman.sh
# Copyright (C) 2019 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#


mkdir -p ~/.temp
cd ~/.temp

# postman
sudo apt install libgconf-2-4 -y
wget https://dl.pstmn.io/download/latest/linux64 -O postman-linux64.tar.gz
sudo tar -xvzf postman-linux64.tar.gz -C /opt
sudo ln -s /opt/Postman/Postman /usr/bin/postman

# postman in menu
cat > ~/.local/share/applications/postman.desktop <<EOL
[Desktop Entry]
Encoding=UTF-8
Name=Postman
Exec=postman
Icon=/opt/Postman/app/resources/app/assets/icon.png
Terminal=false
Type=Application
Categories=Development;
EOL

# TODO: restart cinnamon


