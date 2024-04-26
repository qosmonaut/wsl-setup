sudo apt-get update -y && sudo apt-get upgrade -y

# Set aliases
cp ./aliases ~/.aliases

# tmux customizations
cp ./tmux.conf ~/.tmux.conf
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux source ~/.tmux.conf
