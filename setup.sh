#!/usr/bin/env bash

# Get the directory of the script
DIR="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

# Set aliases
echo "Copying aliases..."
cp $DIR/bash_aliases ~/.bash_aliases

# tmux customizations
echo "Setting up tmux..."
cp $DIR/tmux.conf ~/.tmux.conf
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux source ~/.tmux.conf

# Update and upgrade packages
echo "Updating and upgrading packages..."
sudo apt-get update -y && sudo apt-get upgrade -y