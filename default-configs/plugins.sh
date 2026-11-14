zsh_plugins_git=(
  https://github.com/zdharma-continuum/fast-syntax-highlighting.git
  https://github.com/zsh-users/zsh-autosuggestions.git
  https://github.com/Aloxaf/fzf-tab.git
  https://github.com/Michael-Matta1/zsh-edit-select.git
  https://github.com/Pilaton/OhMyZsh-full-autoupdate.git
)


for plugin_url in "${zsh_plugins_git[@]}"; do
  plugin_dir=$(echo "${plugin_url##*/}" \
                      | sed 's/\.git$//' \
                      | tr '[:upper:]' '[:lower:]')

  full_plugin_dir_path="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/${plugin_dir}"


  if ! [[ -d "${full_plugin_dir_path}" ]]; then
    git clone "${plugin_url}" "${full_plugin_dir_path}" 
  fi

done

default_plugins=(
    ansible
    aws
    azure
    battery
    brew
    command-not-found
    common-aliases
    copyfile
    copypath
    docker
    docker-compose
    encode64
    fzf
    fzf-tab
    git
    gnu-utils
    golang
    helm
    k9s
    kompose
    kubectl
    microk8s
    mvn
    ohmyzsh-full-autoupdate
    opencode
    opentofu
    pip
    pipenv
    podman
    python
    rsync
    screen
    sdk
    spring
    ssh
    sudo
    terraform
    timer
    tldr
    ubuntu
    ufw
    vault
    zsh-autosuggestions
    zsh-edit-select
    fast-syntax-highlighting
)