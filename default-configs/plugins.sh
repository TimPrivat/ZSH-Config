git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git \
  "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting"

git clone https://github.com/zsh-users/zsh-autosuggestions \
  "${ZSH_CUSTOM:-${HOME}/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"

git clone https://github.com/Aloxaf/fzf-tab \
  "${ZSH_CUSTOM:-${HOME}/.oh-my-zsh/custom}/plugins/fzf-tab"

git clone --depth=1 https://github.com/Michael-Matta1/zsh-edit-select.git \
  "${ZSH_CUSTOM:-${HOME}/.oh-my-zsh/custom}/plugins/zsh-edit-select"



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
    zsh-autosuggestions
    zsh-edit-select
    fast-syntax-highlighting
)