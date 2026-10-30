#!/bin/bash

echo "installing zsh:"

packages="zsh curl git fastfetch fzf git-delta"

for p in $packages; do
    if ! dpkg -s "$p" >/dev/null 2>&1; then
        sudo add-apt-repository ppa:zhangsongcui3371/fastfetch
        sudo apt update -y 
        sudo apt-get install -y $packages
        break;
    fi
done

chsh -s $(which zsh)

echo "current Shell: $SHELL"
$SHELL --version

echo "installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

cat /etc/shell/defaults.sh > ~/.zshrc
zsh


