#!/usr/bin/env bash
#
# install_kubectx.sh
# Copyright (C) 2021 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#

# install krew (dependency)
# ./install_krew.sh

# install kubectx, kubens
kubectl krew install kubectx
kubectl krew install kubens

# command autocompletion
## clone repo
mkdir -p ~/.temp && cd ~/.temp
git clone https://github.com/ahmetb/kubectx

## symlink autocompletion files for zsh
mkdir -p ~/.oh-my-zsh/completions
chmod -R 755 ~/.oh-my-zsh/completions
ln -s ~/.temp/kubectx/completion/kubectx.zsh ~/.oh-my-zsh/completions/_kubectx.zsh
ln -s ~/.temp/kubectx/completion/kubens.zsh ~/.oh-my-zsh/completions/_kubens.zsh
