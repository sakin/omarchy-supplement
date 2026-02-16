#!/bin/bash

# Install all packages in order
./install-mise.sh
./install-nodejs.sh
./install-ruby.sh
./install-postgresql.sh
./install-tmux.sh
./install-stow.sh
./install-dotfiles.sh
./install-hyprland-overrides.sh

# ./set-shell.sh  # Not needed - using bash
