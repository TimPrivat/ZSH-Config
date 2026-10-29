ZSH_THEME="agnoster"

# ctrl+space to accept autosuggestion
bindkey '^ ' autosuggest-accept
# ctrl+ backspace to delete fullword
bindkey '^H' backward-kill-word
# pos1 to jump to beginning of line
bindkey '^[[H' beginning-of-line
# end  to jump to end of line
bindkey '^[[F' end-of-line


which fastfetch > /dev/null 2>&1
if [[ $? != "0" ]]; then 
  echo "Installing fastfetch"
  sudo add-apt-repository ppa:zhangsongcui3371/fastfetch
  sudo apt update
fi



sudo apt install fastfetch fzf -y

source <(fzf --zsh)

default_plugins=(
    ansible
    git
    aws
    azure
    battery
    brew
    command-not-found
    common-aliases
    copyfile
    copypath
    docker-compose
    docker
    emoji
    encode64
    fzf
)

# plugins=(git zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting zsh-autocomplete autoupdate kubectl docker helm)

plugins=($default_plugins)


fastfetch