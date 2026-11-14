# ZSH default stuff
export ZSH="$HOME/.oh-my-zsh"
export ZSH_THEME="lukerandall"

# Plugin Update frequency
export UPDATE_ZSH_DAYS=1

# German locals
export LANG=de_DE.UTF-8
export LC_CTYPE=de_DE.UTF-8
export LC_ALL=de_DE.UTF-8

# FZF 
export FZF_DEFAULT_OPTS="--highlight-line --info=inline-right --ansi --layout=reverse --border"

# secret file location
export secret_file="${HOME}/.zsh/secrets"

# Fix copying between docker-container and host
if [[ -z "${runtime}" ]] || [[ "${runtime}" == "docker" ]]; then
  export _ZES_SSH_MODE=1
fi 

# timer plugin config 
export TIMER_FORMAT='[%d]'
export TIMER_PRECISION=1