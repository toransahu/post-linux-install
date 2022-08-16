#!/usr/bin/env bash
#
# install_consul_template.sh
# Copyright (C) 2022 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#


cd /tmp
git clone https://github.com/hashicorp/consul-template.git
cd consul-template
make dev
