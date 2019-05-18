#! /bin/sh
#
# setup_intellij_idea.sh
# Copyright (C) 2019 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#

mkdir -p ~/.temp
cd ~/.temp

# intellij idea
# TODO: with/without sudo??
wget https://download.jetbrains.com/idea/ideaIC-2019.1.2.tar.gz -O intellij-idea-ce-linux-64.tar.gz
sudo tar -xzf intellij-idea-ce-linux-64.tar.gz -C /opt
sudo ln -s /opt/idea-IC-191.7141.44/bin/idea.sh /usr/bin/idea

# intellij idea in menu
cat > ~/.local/share/applications/idea.desktop <<EOL
[Desktop Entry]
Encoding=UTF-8
Name=IntelliJ Idea CE
Exec=idea
Icon=/opt/idea-IC-191.7141.44/bin/idea.png
Terminal=false
Type=Application
Categories=Development;
EOL

# intellij idea config restore
# src: https://www.jetbrains.com/help/idea/sharing-your-ide-settings.html#settings-repository
# NOTE: 
# use https://github.com/toransahu/intellij-idea-settings.git
# use File | Settings Repository to import/sync settings from github repo

# TODO: intellij idea plugins
# lombok
# python
# markdown
