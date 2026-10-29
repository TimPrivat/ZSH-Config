#!/bin/bash

echo "installing zsh:"




packages="zsh curl git"

for p in $packages; do
    if ! dpkg -s "$p" >/dev/null 2>&1; then
        sudo apt update -y 
        sudo apt-get install -y $packages
        break;
    fi
done

chsh -s $(which zsh)
cat /etc/shell/defaults.sh >> ~/.zshrc
#/bin/zsh
echo "current Shell: $SHELL"
$SHELL --version

echo "installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended




