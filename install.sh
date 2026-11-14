#!/bin/bash

echo "installing zsh:"

export zsh_config_dir="${HOME}/.zsh/ZSH-Config"

runtime="${runtime:-desktop}" 
packages="zsh curl git fastfetch fzf git-delta ghostty locales vim"

for p in $packages; do
    if ! dpkg -s "$p" >/dev/null 2>&1; then
        
        sudo apt update -y && \
        sudo apt-get install -y $packages

        break;
    fi
done

sudo locale-gen de_DE.UTF-8

chsh -s "$(which zsh)"

echo "current Shell: $SHELL"
$SHELL --version

echo "installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended


# remove default generated .zshrc file
rm "${HOME}/.zshrc"

# create required dirs
mkdir -p "${HOME}/.config/zsh-edit-select"
mkdir -p "${HOME}/.config/ghostty"

# create hard-links between configs and repository
ln "${zsh_config_dir}/.zshrc" "${HOME}/.zshrc"
ln "${zsh_config_dir}/config-files/zsh-edit-select" "${HOME}/.config/zsh-edit-select/config"
ln "${zsh_config_dir}/config-files/config.ghostty" "${HOME}/.config/ghostty/config.ghostty"

# setup secrets file
secret_file="${HOME}/.zsh/secrets"
if ! [[ -f "${secret_file}" ]]; then
    touch "${secret_file}"
    chmod 600 "${secret_file}"
fi 

# restart zsh
zsh


