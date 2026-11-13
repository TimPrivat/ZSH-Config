export ZSH="$HOME/.oh-my-zsh"
export zsh_config_dir="${HOME}/.zsh/ZSH-Config"

ZSH_THEME="lukerandall"

# plugins=(git zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting zsh-autocomplete autoupdate kubectl docker helm)

# load default-config files
source "${zsh_config_dir}/default-configs/env-vars.sh"
source "${zsh_config_dir}/default-configs/zstyle-configs.sh"
source "${zsh_config_dir}/default-configs/keybinds.sh"
source "${zsh_config_dir}/default-configs/plugins.sh"
source "${zsh_config_dir}/default-configs/functions.sh"
source "${secret_file}"


# load custom-config files
source "${zsh_config_dir}/custom-configs/env-vars.sh"
source "${zsh_config_dir}/custom-configs/zstyle-configs.sh"
source "${zsh_config_dir}/custom-configs/keybinds.sh"
source "${zsh_config_dir}/custom-configs/plugins.sh"
source "${zsh_config_dir}/custom-configs/functions.sh"

plugins=(
  "${default_plugins[@]}"
  )

source $ZSH/oh-my-zsh.sh
# Fix copying between docker-container and host
if [[ ${runtime} == "docker" ]]; then
  export _ZES_SSH_MODE=1
fi 

fastfetch

echo "runtime: ${runtime}"
# TODO dependencies für git autocomplete fixencd 