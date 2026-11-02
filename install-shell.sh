#!/bin/bash

echo "installing zsh:"

packages="zsh curl git fastfetch fzf git-delta ghostty"

for p in $packages; do
    if ! dpkg -s "$p" >/dev/null 2>&1; then
        sudo apt update -y && \
        sudo apt-get install -y $packages
        break;
    fi
done

chsh -s $(which zsh)

echo "current Shell: $SHELL"
$SHELL --version

echo "installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

mkdir -p ${HOME}/.config/zsh-edit-select 
cat ${HOME}/.zsh/ZSH-Config/defaults.sh > ${HOME}/.zshrc
cat ${HOME}/.zsh/ZSH-Config/configs/zsh-edit-select > ${HOME}/.config/zsh-edit-select/config
zsh


