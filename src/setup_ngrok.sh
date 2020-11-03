#! /bin/sh
#
# setup_ngrok.sh
# Copyright (C) 2020 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#

cd ~/.temp

# download
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip

# extract
unzip ngrok-stable-linux-amd64.zip

# connect the account
# check my ENV_VAR NGROK_AUTH_TOKEN
./ngrok authtoken 1frxwaMdsdf3EyM6JyQTrxTn93l_swTGajUj4XLqVao7RrXd

# run / test
# ./ngrok help
# ./ngrok http 80
