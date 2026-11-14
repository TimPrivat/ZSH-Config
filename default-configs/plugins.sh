git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git \
  "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting"

git clone https://github.com/zsh-users/zsh-autosuggestions \
  "${ZSH_CUSTOM:-${HOME}/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"

git clone https://github.com/Aloxaf/fzf-tab \
  "${ZSH_CUSTOM:-${HOME}/.oh-my-zsh/custom}/plugins/fzf-tab"

git clone --depth=1 https://github.com/Michael-Matta1/zsh-edit-select.git \
  "${ZSH_CUSTOM:-${HOME}/.oh-my-zsh/custom}/plugins/zsh-edit-select"

git clone https://github.com/Pilaton/OhMyZsh-full-autoupdate.git \
  "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/ohmyzsh-full-autoupdate"

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