export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="lukerandall"
# ctrl+space to accept autosuggestion
bindkey '^ ' autosuggest-accept
# ctrl+ backspace to delete fullword
bindkey '^H' backward-kill-word
# pos1 to jump to beginning of line
bindkey '^[[H' beginning-of-line
# end  to jump to end of line
bindkey '^[[F' end-of-line
# shift + pos1 select everything to start
bindkey -M emacs '^[[1;2H' edit-select::beginning-of-line
# shift + end select everything to end
bindkey -M emacs '^[[1;2F' edit-select::end-of-line

export LANG=de_DE.UTF-8
export LC_CTYPE=de_DE.UTF-8
export LC_ALL=de_DE.UTF-8
export FZF_DEFAULT_OPTS="--highlight-line --info=inline-right --ansi --layout=reverse --border"

zstyle ':fzf-tab:*' use-fzf-default-opts yes
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls -alt --color=always $realpath' # remember to use single quote here!!!
zstyle ':fzf-tab:*' fzf-bindings 'right:accept'
zstyle ':fzf-tab:*' continuous-trigger 'right'

# it is an example. you can change it
zstyle ':fzf-tab:complete:git-(add|diff|restore):*' fzf-preview \
	'git diff $word | delta'
zstyle ':fzf-tab:complete:git-log:*' fzf-preview \
	'git log --color=always $word'
zstyle ':fzf-tab:complete:git-help:*' fzf-preview \
	'git help $word | bat -plman --color=always'
zstyle ':fzf-tab:complete:git-show:*' fzf-preview \
	'case "$group" in
	"commit tag") git show --color=always $word ;;
	*) git show --color=always $word | delta ;;
	esac'
zstyle ':fzf-tab:complete:git-checkout:*' fzf-preview \
	'case "$group" in
	"modified file") git diff $word | delta ;;
	"recent commit object name") git show --color=always $word | delta ;;
	*) git log --color=always $word ;;
	esac'

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

# plugins=(git zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting zsh-autocomplete autoupdate kubectl docker helm)

plugins=($default_plugins)

source $ZSH/oh-my-zsh.sh
if [[ ${runtime} == "docker" ]]; then
  export _ZES_SSH_MODE=1
fi 

fastfetch

echo "runtime: ${runtime}"
# TODO dependencies für git autocomplete fixen