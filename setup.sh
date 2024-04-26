#!/usr/bin/env bash

# Get the directory of the script
DIR="$( dirname -- "$0"; )"

# Set aliases
cp DIR/aliases ~/.aliases

# tmux customizations
cp DIR/tmux.conf ~/.tmux.conf
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux source ~/.tmux.conf

# Update and upgrade packages
sudo apt-get update -y && sudo apt-get upgrade -y