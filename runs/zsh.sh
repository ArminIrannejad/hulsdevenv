#!/usr/bin/env bash

sudo apt install -y zsh
hash -r
sudo chsh -s "$(which zsh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"

sed -i 's/plugins=(git)/plugins=(git zsh-autosuggestions)/' "$HOME/.zshrc"
sed -i '/^export ZSH=/a\
source "$HOME/.zsh_profile"' "$HOME/.zshrc"

