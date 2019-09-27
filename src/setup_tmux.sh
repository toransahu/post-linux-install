#! /bin/sh
#
# setup_tmux.sh
# Copyright (C) 2019 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#


# install tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Put this at the bottom of ~/.tmux.conf ($XDG_CONFIG_HOME/tmux/tmux.conf works too):

echo "# List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'
set -g @plugin 'tmux-plugins/tmux-yank'

# Other examples:
# set -g @plugin 'github_username/plugin_name'
# set -g @plugin 'git@github.com/user/plugin'
# set -g @plugin 'git@bitbucket.com/user/plugin'

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run -b '~/.tmux/plugins/tpm/tpm'" >> ~/.tmux.conf



# Reload TMUX environment so TPM is sourced:

# type this in terminal if tmux is already running
# $ tmux source ~/.tmux.conf

## DOC

# Installing plugins

#     Add new plugin to ~/.tmux.conf with set -g @plugin '...'
#     Press prefix + I (capital i, as in Install) to fetch the plugin.

# You're good to go! The plugin was cloned to ~/.tmux/plugins/ dir and sourced.
# Uninstalling plugins

#     Remove (or comment out) plugin from the list.
#     Press prefix + alt + u (lowercase u as in uninstall) to remove the plugin.

# All the plugins are installed to ~/.tmux/plugins/ so alternatively you can find plugin directory there and remove it.
# Key bindings

# prefix + I

#     Installs new plugins from GitHub or any other git repository
#     Refreshes TMUX environment

# prefix + U

#     updates plugin(s)

# prefix + alt + u

#     remove/uninstall plugins not on the plugin list

