#!/usr/bin/env bash
#
# gen_ssh_key_pair.sh
# Copyright (C) 2022 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#

# brief existing keys
# $ for key in ~/.ssh/id_*; do ssh-keygen -l -f "${key}"; done | uniq

BYTES=256
SIGN_ALGO_TYPE=ed25519
USER=toran.sahu@yahoo.com

ssh-keygen -t $SIGN_ALGO_TYPE -C $USER


