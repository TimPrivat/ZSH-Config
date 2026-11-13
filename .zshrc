# load default-config files
source "${zsh_config_dir}/default-configs/env-vars.sh"
source "${zsh_config_dir}/default-configs/zstyle-configs.sh"
source "${zsh_config_dir}/default-configs/keybinds.sh"
source "${zsh_config_dir}/default-configs/plugins.sh"
source "${zsh_config_dir}/default-configs/functions.sh"

# load custom-config files, not tracked by git
source "${zsh_config_dir}/custom-configs/env-vars.sh"
source "${zsh_config_dir}/custom-configs/zstyle-configs.sh"
source "${zsh_config_dir}/custom-configs/keybinds.sh"
source "${zsh_config_dir}/custom-configs/plugins.sh"
source "${zsh_config_dir}/custom-configs/functions.sh"


# update oh-my-zsh
omz update

# update this project 
git -C "${zsh_config_dir}" pull

# load secrets 
source "${secret_file}"

plugins=(
  "${default_plugins[@]}"
  "${custom_plugins[@]}"
  )

source "${ZSH}/oh-my-zsh.sh"

fastfetch
