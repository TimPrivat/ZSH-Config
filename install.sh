#!/bin/bash
export zsh_config_dir="${HOME}/.zsh/ZSH-Config"
runtime="${runtime:-desktop}" 
locale="${locale:-de_DE.UTF-8}" 

packages=(
    zsh 
    curl 
    git 
    fastfetch 
    fzf 
    git-delta 
    ghostty 
    locales 
    vim
)


for p in "${packages[@]}"; do
    if ! dpkg -s "$p" >/dev/null 2>&1; then
        
        sudo apt update -y && \
        sudo apt-get install -y "${packages[@]}"

        break;
    fi
done

# set zsh as default shell 
chsh -s "$(which zsh)"
# generate system locale
sudo locale-gen "${locale}"

echo "installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# create required dirs
mkdir -p "${HOME}/.config/zsh-edit-select"
mkdir -p "${HOME}/.config/ghostty"

# config files in the system and their version in this repository
declare -A config_files
config_files["${HOME}/.zshrc"]="${zsh_config_dir}/.zshrc"
config_files["${HOME}/.config/zsh-edit-select/config"]="${zsh_config_dir}/config-files/zsh-edit-select"
config_files["${HOME}/.config/ghostty/config.ghostty"]="${zsh_config_dir}/config-files/config.ghostty"

for config in "${!config_files[@]}"; do
    echo "${config}"
    if [[ -f "${config}" ]]; then
        echo "Found previously existing ${config}"
        echo "moving to ${config}.old"
        mv "${config}" "${config}.old"
    fi 
    echo "creating hard-link between ${config} and ${config_files[${config}]}"
    ln -s "${config_files[${config}]}" "${config}"
done

# setup secrets file
secret_file="${HOME}/.zsh/secrets"
if ! [[ -f "${secret_file}" ]]; then
    touch "${secret_file}"
    chmod 600 "${secret_file}"
fi 

# restart zsh
zsh


